-- Dataprobe iPIO Plugin
-- Covers iPIO-2 / iPIO-8 / iPIO-16
-- August 22, 2015 - Joe Peavey - QSC Boulder

PluginInfo = 
{
  Name = "Dataprobe~iPIO",
  Version = "1.1",
  Id = "74282860-dd07-4956-c983-13c6f2d8b291",
  Description = "Dataprobe iPIO (2,8 or 16)",
  ShowDebug = false
}

function WebToRgb(color) -- Converts Web Hex strings or decimal values to RGB table
  if type(color)=="string" then color = tonumber(color,16) end
  local rgb,rh,gh,bh = {},string.match(string.format("%06x",color),"(%x%x)(%x%x)(%x%x)")
  for _,h in ipairs{rh,gh,bh} do table.insert(rgb,tonumber(h,16)) end
  return load("return {"..table.concat(rgb,",").."}")()
end
function Grayscale(hex) local v = tonumber(hex,16) return {v,v,v} end

function GetColor(props)
  return { 89, 151, 199 }
end

-- optional
function GetPrettyName(props)
  return string.format("Dataprobe iPIO v%s",PluginInfo.Version)
end

function GetProperties()
  props = {
    {
      Name = "Force Relays from iPIO",
      Type = "boolean",
      Value = false
    }
  }
  return props
end

function GetControls(props)
  return
  {
--[[    {
      Name = "ipioCh",
      ControlType = "Text",
      Count = 1,
    },]]
    {
      Name = "LocID",
      ControlType = "Text",
      UserPin = true,
      PinStyle = "Output",
      Count = 1,
    },
    {
      Name = "model",
      ControlType = "Text",
      UserPin = true,
      PinStyle = "Output",
      Count = 1,
    },
    {
      Name = "status",
      ControlType = "Indicator",
      IndicatorType = "Status",
      UserPin = true,
      PinStyle = "Output",
      Count = 1,
    },
    {
      Name = "connect",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Both",
      Count = 1,
    },
    {
      Name = "timeout",
      ControlType = "Knob",
      ControlUnit = "Integer",
      Min = 5,
      Max = 120,
      UserPin = true,
      PinStyle = "Both",
      Count = 1
    },
    {
      Name = "ip",
      ControlType = "Text",
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
    },
    {
      Name = "port",
      ControlType = "Knob",
      ControlUnit = "Integer",
      Min = 1025,
      Max = 65535,
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
    },
    {
      Name = "user",
      ControlType = "Text",
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
    },
    {
      Name = "pass",
      ControlType = "Text",
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
    },
    {
      Name = "input",
      ControlType = "Indicator",
      IndicatorType = "Led",
      UserPin = true,
      PinStyle = "Output",
      Count = 16,
    },
    {
      Name = "relay",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Both",
      Count = 16,
    },
    {
      Name = "relayson",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Both",
      Count = 1
    },
    {
      Name = "relaysoff",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Both",
      Count = 1,
    },
  }
end

logo = {
  base = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiIHdpZHRoPSI4MDBweCIgaGVpZ2h0PSI",
  dp   = "zMDBweCIgdmlld0JveD0iMCAwIDgwMCAzMDAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDgwMCAzMDAiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnPjxwYXRoIGZpbGw9IiMwMDVEQUEiIGQ9Ik0xNzIuNzYxLDE5NS4zMWgtMTkuNjE0di02LjA5OGMtNS43NjcsNi4wOTgtMTAuODU1LDguMzcyLTE4LjIwOSw4LjM3MmMtMTcuNjgzLDAtMjguODc5LTE3LjA4My0yOC44NzktNDQuNDQ3YzAtMjYuMzEzLDExLjczMy00My43NDUsMjkuMDU1LTQzLjc0NWM2LjgzMywwLDEyLjI2NywyLjQ0MSwxNy4zMzQsNy44NDVWNzkuMDYzaDIwLjMxM1YxOTUuMzF6IE0xNDAuMTk0LDE3OS45ODFjNy44NzMsMCwxMi45NTMtMTAuNDYxLDEyLjk1My0yNi42NjdzLTUuMDgxLTI2LjE0Ni0xMy4zMDctMjYuMTQ2Yy03Ljg3MiwwLTEyLjk1NSw5LjkzOS0xMi45NTUsMjUuNzk1QzEyNi44ODUsMTcwLjAzOSwxMzEuNzg3LDE3OS45ODEsMTQwLjE5NCwxNzkuOTgxIi8+PHBhdGggZmlsbD0iIzAwNURBQSIgZD0iTTIyMi42NjUsMTk1LjMxYy0wLjg4LTEuOTEyLTEuMjI4LTMuMTI3LTEuMjI4LTUuMDRjLTUuNDIyLDUuMjI4LTEwLjQ5OCw3LjMxMy0xOC4wMjksNy4zMTNjLTE1LjQwNywwLTI2LjA4NS0xMC40NDYtMjYuMDg1LTI1LjYyMmMwLTguNzA3LDMuNjgyLTE2LjIxMywxMC4xNTItMjEuMDc4YzQuNzItMy42NzIsOC4yMjYtNC44ODcsMTguOTAzLTcuMzI4YzExLjAzOS0yLjQzOSwxNC41MzgtNS4wNTgsMTQuNTM4LTEwLjQ1N2MwLTQuMzYyLTMuNjg1LTcuNS04LjkzOC03LjVjLTcuMDA0LDAtMTAuMTQ2LDMuODQyLTEwLjMxOSwxMi41NTJoLTE5LjYxNnYtMi4xMDNjMC0xNi43MTcsMTEuNTYxLTI3LjM2MiwzMC4yOTEtMjcuMzYyYzkuNzk1LDAsMTcuNjc4LDIuOTgsMjIuNzY2LDguNzNjNC4xOTksNC42OTksNS41OTgsOS45MjQsNS41OTgsMjEuMDgxdjQyLjUzN3YzLjEzNGMwLDUuNDExLDAuMTcsNi4yNywxLjU3NCwxMS4xNDJIMjIyLjY2NXogTTIxOC44MSwxNTYuOTY5Yy0yLjI3NiwwLjUyOS0zLjY3OCwwLjg3NS00LjU1NSwxLjA1OWMtNy4xNzYsMS43MzktOC41NjUsMi4yNTctMTEuMDIzLDMuODE5Yy0zLjE1LDEuOTMxLTUuMDgzLDUuNTgzLTUuMDgzLDkuNDI0YzAsNS4yMjgsMy42ODMsOC43MTEsOS4yODcsOC43MTFjNS45NDgsMCwxMS4wMjEtNC4xNzUsMTIuMjUxLTEwLjI2N2MwLjctMi43OTgsMS4wNS04LjIxOSwxLjA1LTEzLjI2NUwyMTguODEsMTU2Ljk2OXoiLz48cGF0aCBmaWxsPSIjMDA1REFBIiBkPSJNMjcxLjE2NywxMTEuNjU3aDEwLjg1NnYxNS4xNzRoLTEwLjg1NnY0MC45NDV2My4zMTFjMCw2LjQ1NC0wLjAyNCw5LjEzNSw1LjIyNiw5LjEzNWMwLjM0MywwLDEuNDAyLDQuNDA5LDMuMzQ2LDcuOTk1YzIuMDAxLDMuNjQ2LDUuNDgsNy40MDQsNS40OCw3LjQwNGMtNC4wMjEsMC41MTktOS44NTQsMC45MjEtMTMuNTI2LDAuOTIxYy0xMC4zMjksMC0xNi42MzUtMy4xMzgtMTkuMDc5LTkuNDE1Yy0xLjM5Ni0zLjY2MS0xLjc1LTUuNzQxLTEuNzUtMTMuNzY3di00Ni41MjloLTguNTc1di0xNS4xNzRoOC41NzVWODUuNTExaDIwLjMwMlYxMTEuNjU3eiIvPjxwYXRoIGZpbGw9IiMwMDVEQUEiIGQ9Ik0zMjYuMTQ5LDE5NS4zMWMtMC44NzctMS45MTItMS4yMy0zLjEyNy0xLjIzLTUuMDRjLTUuNDI5LDUuMjI4LTEwLjQ5Miw3LjMxMy0xOC4wMjQsNy4zMTNjLTE1LjQwOSwwLTI2LjA4Ny0xMC40NDYtMjYuMDg3LTI1LjYyMmMwLTguNzA3LDMuNjgtMTYuMjEzLDEwLjE1OS0yMS4wNzhjNC43MS0zLjY3Miw4LjIwOS00Ljg4NywxOC44OTYtNy4zMjhjMTEuMDM3LTIuNDM5LDE0LjUzOC01LjA1OCwxNC41MzgtMTAuNDU3YzAtNC4zNjItMy42NzktNy41LTguOTM2LTcuNWMtNi45OTgsMC0xMC4xNDYsMy44NDItMTAuMzExLDEyLjU1MkgyODUuNTN2LTIuMTAzYzAtMTYuNzE3LDExLjU2NC0yNy4zNjIsMzAuMjg1LTI3LjM2MmM5LjgwOSwwLDE3LjY4NywyLjk4LDIyLjc2NCw4LjczYzQuMjA0LDQuNjk5LDUuNTk1LDkuOTI0LDUuNTk1LDIxLjA4MXY0Mi41Mzd2My4xMzRjMCw1LjQxMSwwLjE4MSw2LjI3LDEuNTgzLDExLjE0MkgzMjYuMTQ5eiBNMzIyLjI5NywxNTYuOTY5Yy0yLjI3NCwwLjUyOS0zLjY4LDAuODc1LTQuNTU3LDEuMDU5Yy03LjE3NCwxLjczOS04LjU2OSwyLjI1Ny0xMS4wMjMsMy44MTljLTMuMTQyLDEuOTMxLTUuMDcsNS41ODMtNS4wNyw5LjQyNGMwLDUuMjI4LDMuNjcyLDguNzExLDkuMjY2LDguNzExYzUuOTYxLDAsMTEuMDMxLTQuMTc1LDEyLjI1LTEwLjI2N2MwLjcwNS0yLjc5OCwxLjA3My04LjIxOSwxLjA3My0xMy4yNjVMMzIyLjI5NywxNTYuOTY5eiIvPjxwYXRoIGZpbGw9IiMwMDVEQUEiIGQ9Ik0zNTMuMzA1LDExMS42NjdoMTkuNTkydjYuMDg3YzUuNzgzLTYuMDg3LDEwLjg1NC04LjM3LDE4LjIxMy04LjM3YzE3LjY4OCwwLDI4Ljg4MSwxNy4wODcsMjguODgxLDQ0LjQ1N2MwLDI2LjMxOS0xMS43MjIsNDMuNzMzLTI5LjA1OCw0My43MzNjLTYuODI2LDAtMTIuMjU0LTIuNDMyLTE3LjMzNy03LjgyOHYzMS4xOTFoLTIwLjI5MlYxMTEuNjY3eiBNMzg1Ljg1OSwxMjcuMDA0Yy03Ljg3NywwLTEyLjk2MSwxMC40NTYtMTIuOTYxLDI2LjY1NmMwLDE2LjIwNiw1LjA4NCwyNi4xNDQsMTMuMzE1LDI2LjE0NGM3Ljg3LDAsMTIuOTQ4LTkuOTM4LDEyLjk0OC0yNS43OThDMzk5LjE2MSwxMzYuOTM3LDM5NC4yNTYsMTI3LjAwNCwzODUuODU5LDEyNy4wMDQiLz48cGF0aCBmaWxsPSIjMDA1REFBIiBkPSJNNDQ0LjE2NiwxMTEuNjU3djguODgyYzMuODU5LTcuMzExLDkuOTg3LTExLjI0MiwxNi45ODUtMTEuMzI4YzMuODg2LTAuMDQ0LDEwLjc2MiwyLjI1MiwxNS4xNDEsNC40MmMwLDAtNC4wMzMsMi43OTItNy40Myw2LjQ2MWMtMi44MzksMy4wNjctNC45MjQsNy42NTktNC45MjQsNy42NTljLTAuNjkxLTAuMTgxLTEuNTYxLTAuMjM2LTEuNTYxLTAuMjM2Yy03LjcxNiwwLTExLjg5NiwyLjc5Mi0xNC43MDMsOS41ODdjLTEuNDE0LDMuNDkxLTIuMjg5LDkuMDc2LTIuMjg5LDE2LjA0MXY0Mi4xNzNoLTIwLjMxMnYtODMuNjU5SDQ0NC4xNjZ6Ii8+PHBhdGggZmlsbD0iIzAwNURBQSIgZD0iTTU3NS43MDMsNzkuMDYzdjM4LjE3NGM1LjA4Ni01LjQwNCwxMC41MTgtNy44NDUsMTcuMzUyLTcuODQ1YzE3LjMxMywwLDI5LjA1MSwxNy42MTIsMjkuMDUxLDQzLjc0NWMwLDI3LjM2NS0xMS4xOTksNDQuNDQ3LTI4Ljg4Nyw0NC40NDdjLTcuMzU0LDAtMTIuNDMtMi4yNzMtMTguMjAxLTguMzcydjYuMDk4aC0xOS42MDJWNzkuMDYzSDU3NS43MDN6IE01ODguMzE2LDEyNy4xNjljLTguMjE5LDAtMTMuMjk5LDkuOTM5LTEzLjI5OSwyNi4xNDZjMCwxNi4zODksNS4wOCwyNi42NjcsMTIuOTQxLDI2LjY2N2M4LjQwNiwwLDEzLjMxNC0xMC4xMDQsMTMuMzE0LTI3LjAxN0M2MDEuMjczLDEzNi45MjYsNTk2LjE5MywxMjcuMTY5LDU4OC4zMTYsMTI3LjE2OSIvPjxwYXRoIGZpbGw9IiMwMDVEQUEiIGQ9Ik02NTkuOTg0LDE5OC4yNzVjLTIxLjUyMywwLTM1LjAyMS0xNi44OTUtMzUuMDIxLTQzLjkxNWMwLTI3LjcxLDEzLjQ5OC00NS42NzMsMzQuNTAyLTQ1LjY3M2MxMC4zMjQsMCwxOS43NzksNC41MzQsMjUuNTYzLDEyLjM5MmM2LjI4NSw4LjcwMiw4LjkxNCwxOS4zMzgsOC45MTQsMzUuMzcxdjMuNDc5aC00OC4xMzF2MC44NzljMCwxMS42NzIsNS42MDQsMTkuNjkzLDEzLjgxNiwxOS42OTNjNi4xMzUsMCwxMC42OTEtNC4zNTksMTIuNDQ3LTExLjg0aDIxLjAwOEM2OTEuNjc0LDE4Ni40MzYsNjc4LjM1OSwxOTguMjc1LDY1OS45ODQsMTk4LjI3NSBNNjU5LjYyNywxMjUuNmMtNy4zNTIsMC0xMi40MjQsNi40NDgtMTMuNDY1LDE3LjQzMmgyNi40MjRDNjcxLjE4NCwxMzEuNTMsNjY2LjgyLDEyNS42LDY1OS42MjcsMTI1LjYiLz48cGF0aCBmaWxsPSIjNzhBMjJGIiBkPSJNNTIwLjIyMywxMzAuNjM3YzkuMjcxLDQuNTYzLDEzLjQ2MywxNC4xNDQsMTMuNDYzLDI2LjQ5NWMwLDE3LjM5My0xMS43NiwyOS40ODctMjguMDA4LDI5LjQ4N2MtMTYuMjI0LDAtMjcuOTk4LTEyLjA5NC0yNy45OTgtMjkuNDg3YzAtMTIuMzUyLDQuMzk1LTIxLjkxNywxMy42NS0yNi40OTVsLTYuMDQyLTEzLjY0NWMtMTQuNTQ2LDYuNzI4LTI0LjAyMSwyMS4yNTQtMjQuMDIxLDQwLjE0YzAsMjYuMjY4LDIwLjcwNSw0NC4zOTgsNDQuNDEsNDQuMzk4YzIzLjczNCwwLDQ0LjQyNC0xOC4xMyw0NC40MjQtNDQuMzk4YzAtMTguNzQ0LTkuMjE3LTMzLjIwOC0yMy41NDctNDAuMDAyTDUyMC4yMjMsMTMwLjYzN3oiLz48cG9seWdvbiBmaWxsPSIjNzhBMjJGIiBwb2ludHM9IjQ5OC41NzIsMTA4LjAwMiA0OTguNTcyLDExMy40NzMgNDk4LjU3MiwxMjguNzk0IDQ5OC41NzIsMTU0LjYyIDUxMi43MDUsMTU0LjYyIDUxMi43MDUsMTI4Ljc5NCA1MTIuNzA1LDExMy40NjYgNTEyLjcwNSwxMDguMDAyICIvPjwvZz48L3N2Zz4=",
  ipio = "2N3B4IiB2aWV3Qm94PSIwIDAgMTExIDY3IiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCAxMTEgNjciIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnIGlkPSJQSU8iPjxwYXRoIGlkPSJPIiBmaWxsPSIjMDA1REFBIiBkPSJNMTAyLjkzMywzMi40NDljMCw0LjQ3My0wLjEwNSw3LjY0MS0wLjMxNiw5LjUwMXMtMC44NzEsMy41NjItMS45OCw1LjEwMWMtMS4xMDksMS41NDEtMi42MDcsMi43MjMtNC40OTYsMy41NDhzLTQuMDg5LDEuMjM3LTYuNjAxLDEuMjM3Yy0yLjM4MywwLTQuNTIzLTAuMzg5LTYuNDItMS4xNjhjLTEuODk4LTAuNzc5LTMuNDI0LTEuOTQ4LTQuNTc5LTMuNTA2Yy0xLjE1NS0xLjU1OS0xLjg0My0zLjI1NS0yLjA2My01LjA4OHMtMC4zMy01LjA0MS0wLjMzLTkuNjI1di03LjYxOGMwLTQuNDczLDAuMTA1LTcuNjQsMC4zMTYtOS41MDFjMC4yMS0xLjg2LDAuODctMy41NjEsMS45NzktNS4xMDFzMi42MDctMi43MjMsNC40OTYtMy41NDdjMS44ODktMC44MjUsNC4wODgtMS4yMzgsNi42LTEuMjM4YzIuMzg0LDAsNC41MjQsMC4zOSw2LjQyMSwxLjE2OWMxLjg5OCwwLjc3OSwzLjQyNCwxLjk0OCw0LjU4LDMuNTA2YzEuMTU0LDEuNTU4LDEuODQyLDMuMjU0LDIuMDYzLDUuMDg3YzAuMjE5LDEuODMzLDAuMzMsNS4wNDIsMC4zMyw5LjYyNVYzMi40NDl6IE05MS4zNTQsMTcuODE5YzAtMi4wNzEtMC4xMTQtMy4zOTYtMC4zNDQtMy45NzRzLTAuNzAxLTAuODY2LTEuNDE2LTAuODY2Yy0wLjYwNCwwLTEuMDY4LDAuMjM0LTEuMzg5LDAuNzAxYy0wLjMyMSwwLjQ2Ny0wLjQ4MSwxLjg0Ny0wLjQ4MSw0LjEzOXYyMC43OWMwLDIuNTg0LDAuMTA1LDQuMTgsMC4zMTYsNC43ODVjMC4yMTEsMC42MDQsMC43MDEsMC45MDYsMS40NzEsMC45MDZjMC43ODksMCwxLjI5My0wLjM0OCwxLjUxNC0xLjA0NWMwLjIxOS0wLjY5NSwwLjMyOS0yLjM1NSwwLjMyOS00Ljk3N1YxNy44MTl6Ii8+PHBhdGggaWQ9IkkiIGZpbGw9IiMwMDVEQUEiIGQ9Ik03MS44Myw2LjM3OXY0NC41MjJINjAuMjUzVjYuMzc5SDcxLjgzeiIvPjxwYXRoIGlkPSJDdXRvdXRfUCIgZmlsbD0iIzAwNURBQSIgZD0iTTU2LjQ3MiwxMi42NjNjLTAuMzAyLTEuMzI5LTAuODgtMi40NjEtMS43MzItMy4zOTZzLTIuMTI3LTEuNjUtMy44MjItMi4xNDVjLTEuNjk2LTAuNDk1LTQuMTIxLTAuNzQzLTcuMjc0LTAuNzQzaC0xMS42NnYyMi44OTZjNC44NTIsMy4xMDYsOC4wNzYsOC41MzEsOC4wNzYsMTQuNzIzYzAsMi40NTItMC41MDksNC43ODQtMS40MjEsNi45MDJoNC45MjJ2LTE3LjkzaDMuMTA3YzIuNTMsMCw0LjU3OS0wLjM0OCw2LjE0Ni0xLjA0NWMxLjU2Ny0wLjY5NywyLjY0NC0xLjY5NiwzLjIzMS0yLjk5OGMwLjU4Ni0xLjMwMiwwLjg4LTMuMzczLDAuODgtNi4yMTV2LTMuODc3QzU2LjkyNSwxNi4wNSw1Ni43NzQsMTMuOTkzLDU2LjQ3MiwxMi42NjN6IE00Ny4yNDYsMjEuMzEyYzAsMS42NS0wLjIwNiwyLjczNi0wLjYxOSwzLjI1OHMtMS4xNTEsMC43ODQtMi4yMTQsMC43ODRjLTAuMjM4LDAtMC41MjItMC4wMDktMC44NTMtMC4wMjd2LTExLjMzYzEuNTAzLDAsMi40OTMsMC4yMjksMi45NywwLjY4OGMwLjQ3NywwLjQ1OCwwLjcxNSwxLjQ0OCwwLjcxNSwyLjk3VjIxLjMxMnoiLz48L2c+PGc+PGc+PHJlY3QgeD0iMTkuMzgyIiB5PSIyNC45NDUiIGZpbGw9IiMwMDVEQUEiIHdpZHRoPSI2LjMzNiIgaGVpZ2h0PSIyNC40MTIiLz48L2c+PGc+PGc+PHJlY3QgeD0iMTkuMzgyIiB5PSIxNi42NTgiIGZpbGw9IiMwMDVEQUEiIHdpZHRoPSI2LjMzNiIgaGVpZ2h0PSI1LjI0OSIvPjwvZz48L2c+PHBhdGggaWQ9Ik9wZW5fR3JlZW5fTyIgZmlsbD0iIzc4QTIyRiIgZD0iTTMwLjUzMSwzMC41MzJsLTIuODc4LDQuOTg1YzIuODgyLDEuNzI5LDQuODE4LDQuODc1LDQuODE4LDguNDgxYzAsNS40NjctNC40MzIsOS44OTUtOS44OTYsOS44OTVjLTUuNDY1LDAtOS44OTctNC40MjgtOS44OTctOS44OTVjMC0zLjU4OSwxLjkxNy02LjcyMSw0Ljc3NS04LjQ1NmwtMi44ODktNS4wMDRjLTQuNTkzLDIuNzMxLTcuNjgyLDcuNzI4LTcuNjgyLDEzLjQ1OWMwLDguNjUxLDcuMDE5LDE1LjY2NywxNS42NywxNS42NjdjOC42NTUsMCwxNS42NjUtNy4wMTYsMTUuNjY1LTE1LjY2N0MzOC4yMTgsMzguMjYzLDM1LjEyOCwzMy4yNjIsMzAuNTMxLDMwLjUzMnoiLz48L2c+PC9zdmc+",
}

function GetControlLayout(props)
  local layout, graphics, color = {}, {}, {
    White= WebToRgb(16777215),
    Black= WebToRgb(0),
    BgBl = WebToRgb(12575481),
    GBBl = WebToRgb(7259889),
    txBl = WebToRgb(22422),
    info = WebToRgb(7382735),
    setup = WebToRgb(5215172),
    grTxt = Grayscale("C9"),
    bound = Grayscale("CC"),
    dpGrn = WebToRgb(7905839),
    Off = Grayscale("99"),
    COn = WebToRgb(8453888),
    ROn = WebToRgb(4832751),
    knob = WebToRgb(7259889),
    led = WebToRgb(33023),
    ledst = WebToRgb(23740),
    dpBl = WebToRgb(23978),
    stroke = WebToRgb(4879756),
  }
  local ctl = {
    --{ n="ipioCh", l="Connect",s="Button", bs="Trigger", ro=true, px=269, py=9, sx=14, sy=10,ts=14,c={n=color.White,f=color.White},ul=true,cr=0},
    { n="ip", pn="IP Address", s="Text", px=68, py=412, sx=102, sy=20,ts=14,c={}},
    { n="relayson", pn="Relays On",l="On",s="Button", bs="Trigger", px=223, py=167, sx=36, sy=16,ts=14,c={n=color.ROn,f=color.Off} },
    { n="relaysoff", pn="Relays Off",l="Off",s="Button", bs="Trigger", px=265, py=167, sx=36, sy=16,ts=14,c={n=color.ROn,f=color.Off} },
    { n="LocID", pn="Location ID", s="Text", px=79, py=284, sx=224, sy=16, c={n=color.txBl},ro=true,tbs="NoBackground",ts=15,b=true},
    { n="model", pn="Model & Version", s="Text", px=79, py=304, sx=224, sy=25, c={n=color.txBl},ro=true,tbs="NoBackground",ts=20, b=true},
    { n="status", pn="Status", s="Text", px=79, py=329, sx=224, sy=25, ts=12,c={}},
    { n="connect", pn="Connect",l="Connect",s="Button", bs="Toggle", px=68, py=389, sx=83, sy=19,ts=14,ul=true,c={n=color.COn,f=color.Off} },
    { n="timeout", pn="Read Timeout", s="Text", px=246, py=390, sx=25, sy=16, c={n=color.knob},ts=10},
    { n="ip", pn="IP Address", s="Text", px=68, py=412, sx=102, sy=20,ts=14,c={}},
    { n="port", pn="DxP Port", s="Text", c={n=color.knob}, px=246, py=412, sx=49, sy=20,ts=14},
    { n="user", pn="Username", s="Text", px=68, py=438, sx=77, sy=20,ts=14,c={}},
    { n="pass", pn="Password", s="Text", px=218, py=438, sx=77, sy=20,ts=14,c={}},
  }
  local gr = {
	{ t="GroupBox", f=color.White, px=1, py=1, sx=316, sy=44, sw=0 },
	{ t="GroupBox", f=color.BgBl, px=1, py=46, sx=316, sy=426, sw=0 },
	{ t="GroupBox", sc=color.bound, px=0, py=0, sx=319, sy=473, sw=2 },
	{ t="GroupBox", f=color.GBBl, px=8, py=67, sx=302, sy=91, sw=0 },
	{ t="GroupBox", f=color.GBBl, px=8, py=162, sx=302, sy=112, sw=0, tx="Output Relays", ts=20, hta="Left", b=true, c=color.txBl },
	{ t="GroupBox", f=color.info, px=8, py=278, sx=302, sy=83, sw=0 },
	{ t="GroupBox", f=color.setup, px=8, py=383, sx=302, sy=82, sw=0 },
	{ t="Label", px=17, py=46, sx=123, sy=22, tx="Input Status", ts=20, hta="Center", b=true, c=color.txBl },
	{ t="Label", px=167, py=167, sx=56, sy=16, tx="All Relays", ts=12, hta="Center", c=color.txBl },
	{ t="Label", px=10, py=361, sx=137, sy=21, tx="Network Setup", ts=20, hta="Center", b=true, c=color.txBl },
	{ t="Label", px=12, py=284, sx=64, sy=16, tx="Location ID:", ts=12, hta="Right", b=true, c=color.txBl },
	{ t="Label", px=28, py=304, sx=48, sy=12, tx="Model &", ts=12, hta="Right", b=true, c=color.txBl },
	{ t="Label", px=28, py=316, sx=48, sy=12, tx="Version", ts=12, hta="Right", b=true, c=color.txBl },
	{ t="Label", px=28, py=329, sx=48, sy=25, tx="Status", ts=12, hta="Right", b=true, c=color.txBl },
	{ t="Label", px=12, py=412, sx=56, sy=20, tx="IP Address", ts=12, hta="Right", c=color.grTxt },
	{ t="Label", px=12, py=438, sx=56, sy=20, tx="Username", ts=12, hta="Right", c=color.grTxt },
	{ t="Label", px=160, py=390, sx=83, sy=16, tx="Read Timeout", ts=12, hta="Right", c=color.grTxt },
	{ t="Label", px=195, py=412, sx=51, sy=20, tx="DxP Port", ts=12, hta="Right", c=color.grTxt },
    { t="Label", px=160, py=438, sx=56, sy=20, tx="Password", ts=12, hta="Right", c=color.grTxt },
  	{ t="Label", px=271, py=390, sx=24, sy=16, tx="sec.", ts=12, hta="Left", c=color.grTxt },
  	{ t="Svg", px=31, py=6, sx=143, sy=35, i=logo.base..logo.dp },
  	{ t="Svg", px=212, py=6, sx=62, sy=35, i=logo.base..logo.ipio },
  }
  for i=1,16 do
    table.insert(ctl,{ n="relay "..i, l=tostring(i), pn=string.format("Relay Output~%i",i), s="Button", px=((i-1)%8)*36+15, py=((i-1)//8)*42+190, sx=36, sy=36, m=2, c={n=color.ROn,f=color.Off}, ts=24, b=true })
    table.insert(ctl,{ n="input "..i, pn=string.format("Digital Input~%i",i), s="Led", px=((i-1)%8)*36+21, py=((i-1)//8)*44+86, sx=24, sy=24, m=3, c={n=color.led} })
    table.insert(gr,{ t="Label", c=color.txBl, px=((i-1)%8)*36+15, py=((i-1)//8)*44+70, sx=36, sy=16, tx=tostring(i), hta="Center" })
  end
  for ix,item in pairs(ctl) do
    layout[string.format(item.n,ix)] = {
      PrettyName = item.pn,
      Legend = item.l,
      Style = item.s,
      Position = { item.px, item.py },
      Size = { item.sx, item.sy },
      Radius = item.r,
      IsBold = item.b,
      TextFontSize = item.ts,
      TextBoxStyle = item.tbs,
      HTextAlign = item.hta,
      CornerRadius = item.cr,
      Color = item.c.n,
      OffColor = item.c.f,
      UnlinkOffColor = item.ul,
      IsReadOnly = item.ro,
    }
  end
  for _,item in pairs(gr) do
    table.insert(graphics,{
      Position = { item.px, item.py },
      Size = { item.sx, item.sy },
      Text = item.tx,
      TextSize = item.ts,
      TextColor = item.tc,
      HTextAlign = item.hta,
      Image = item.i,
      Type = item.t,
      IsBold = item.b,
      Fill = item.f,
      Color = item.c,
      StrokeColor = item.sc,
      StrokeWidth = item.sw,
      CornerRadius = item.cr,
    })
  end
  return layout, graphics
end

if Controls then

model = Controls.model
LocID = Controls.LocID
status = Controls.status
ip = Controls.ip
user = Controls.user
pass = Controls.pass
port = Controls.port
input = Controls.input
relay = Controls.relay
connect = Controls.connect
timeout = Controls.timeout
relayson = Controls.relayson
relaysoff = Controls.relaysoff

PollTimer = Timer.New()
UpdateTimer = Timer.New()
G2pollrate = .25
G1pollrate = .5
updaterate = .05
UpdateFlag = false
QueueFlag = false

learned = false
iPIO = TcpSocket.New()
iPIO.ReconnectTimeout = 5
V1Queue = {}
seq = 0
QIndex = 1
IsConnected = false
modelch = 0
--ForceRelays = false
ForceRelays = Properties["Force Relays from iPIO"].Value
DebugDesc = false
DebugSeq = false
DebugPacket = false
DebugQueue = false

status_state = { OK = 0, COMPROMISED = 1, FAULT = 2, NOTPRESENT = 3, MISSING = 4, INITIALIZING = 5 }
hello = "hello-000"
null = string.char(0)
eCmnd = {
  SET=1,
  GET=2,
  IO=3,
  KEEPALIVE=4
}
eCmndIO = {
  changeRelay=1,
  changeRelays=2,
  getRelay=3, -- Not yet implemented by Dataprobe
  getRelays=4,
  getInput=5, -- Not yet implemented by Dataprobe
  getInputs=6,
  pulseRelay=7
}

function Status( msg, state )
  status.Value = status_state[state]
  status.String = msg
  if DebugDesc or (status_state[state]>0) then print( msg ) end
end

function DebugFormat(string) -- Format strings to show ASCII values in Hex
  local visual = {}
  for i=1,#string do
    local byte = string:sub(i,i)
    table.insert(visual,string.format("%02X",string.byte(byte)))
  end
  return table.concat(visual,"|")
end

function send( cmd )
  if DebugPacket then print("TX: "..DebugFormat(cmd)) end
  iPIO:Write( cmd..null )
end

function PadCred(cred) -- Pad the credential with nulls to 21 bytes
  local pad = ""
  for i=1,21-#cred do pad = pad..null end
  return cred..pad
end

function Sequence()
  if seq < 0xFFFF then
    seq = seq + 1
  else
    seq = 0
  end
end

function BuildCommand(cmd, desc, param, payload)
  command = {}
  if not QueueFlag then Sequence() end -- Increase Sequence variable by 1
  local pseq = bitstring.pack("16:int:little", seq)
  if DebugSeq then print("TX Seq: "..seq.."   "..DebugFormat(pseq)) end
  table.insert(command,string.char(cmd)) -- IO Command 03
  table.insert(command,PadCred(user.String)) -- Username
  table.insert(command,PadCred(pass.String)) -- Password
  table.insert(command,string.char(desc)) -- Descriptor 06 eIO_getInputs
  table.insert(command,param)
  local cmd = table.concat(command)
  return {cmd, pseq, tostring (payload~=nil and payload or "")}
end

function RelayCtl(ix,ctl)
  local build = BuildCommand(eCmnd.IO, eCmndIO.changeRelay,null, string.char(ix)..string.char(ctl.Boolean and 1 or 0) )
  lastcmd = "ChangeRelay"
  return table.unpack(build) --cmd, pseq, payload
end

function V1QueueHandler()
  if #V1Queue == 0 then
    QueueFlag = false
    PollTimer:Start(pollrate)
  else
    QueueFlag = true
    local item = table.remove(V1Queue,1)
    local cmd, IgnoreSeq, payload = table.unpack(item[1])
    lastcmd = item[2]
    Sequence() -- increment sequence number
    local pseq = bitstring.pack("16:int:little", seq)
    if DebugSeq then print("TX Seq: "..seq.."   "..DebugFormat(pseq)) end
    if DebugQueue then print("removing "..lastcmd.." item from V1Queue. Table. Remaining Size = "..#V1Queue) end
    send( cmd..pseq..payload )
  end   
end

function RelayUpdate(all)
  local rarray, padding, payload = {}, {}
  UpdateTimer:Stop()
  UpdateFlag = false
  if all~=nil then
    for k,ctl in ipairs(relay) do
      if (not ctl.IsDisabled and not IsConnected) or (IsConnected and k<=modelch) then
        if k==2 then print("164 relay 2",all) end
        ctl.Boolean = all
      end
    end
  end
  for key,rly in ipairs(relay) do
    if key <= modelch then table.insert(rarray,string.char(rly.Boolean and 1 or 0)) end
  end
  for i=1,32-#rarray do table.insert(padding,null) end
  local payload = table.concat(rarray)..table.concat(padding)
  local build = BuildCommand(eCmnd.IO, eCmndIO.changeRelays, null, payload )
  if IsConnected then
    local cmd, pseq, payload = table.unpack(build)
    print(191,"RelayUpdate",DebugFormat(cmd..pseq..payload))
    send(cmd..pseq..payload)
    lastcmd = "ChangeRelays"
  end
end

function AllRelays(AllOn)
  if IsConnected then
    if (not UpdateFlag and not QueueFlag) and (gen==2 or AllOn) then
      RelayUpdate(AllOn~=nil and AllOn or nil)
    else
      local callHandler = false
      if QueueFlag ~= true then QueueFlag = true callHandler = true end
      for i=1,modelch do
        if AllOn~=nil then relay[i].Boolean = lastall==1 end
        table.insert(V1Queue,{{RelayCtl(i,relay[i])},lastcmd})
        if DebugQueue then print("inserting "..i.." into V1Queue. Table = "..#V1Queue) end
      end
      if callHandler then V1QueueHandler() end
    end
  end
end

function Query()
  local Queries = {
    {eCmnd.IO, eCmndIO.getInputs,"Inputs"}, -- Query Inputs
    {eCmnd.IO, eCmndIO.getRelays,"Outputs"}, -- Query Outputs
  }
  local build = BuildCommand(Queries[QIndex][1], Queries[QIndex][2],null )
  if QueueFlag ~= true then
    lastcmd = Queries[QIndex][3]
    local cmd, pseq, payload = table.unpack(build)
    send(cmd..pseq..payload)
    if DebugDesc then print("Sent "..lastcmd.." Query") end
  else
    table.insert(V1Queue,{{table.unpack(build)}, lastcmd}) --cmd, pseq, payload
    if DebugQueue then print("Inserting "..Queries[QIndex][3].." Query into V1Queue. Table = "..#V1Queue) end
  end
  if ForceRelays then
    if QIndex == 2 then
      QIndex = 1
    else
      QIndex = QIndex + 1
    end
  end
end

function DisableControls(bool)
  if not IsConnected then
    modelch = 0 
  elseif learned then
    local to = modelch==0 and 16 or modelch
    local list = {}
    for i=1,to do
      if modelch>0 then
        table.insert(list,string.format("relay[%i]=%s input[%i]=%s",i,((ForceRelays or modelch==0) and bool),i,bool))
      end
      relay[i].IsDisabled = (ForceRelays or modelch==0) and bool
      input[i].IsDisabled = bool
    end
    for _,ctl in ipairs( {relayson, relaysoff} ) do
      ctl.IsDisabled = (ForceRelays or modelch==0) and bool
    end
    if modelch>0 and modelch<16 then
      for i=modelch+1,16 do
        if i==2 then print("241 relay 2",true) end
        relay[i].IsDisabled = true
        relay[i].Boolean = false -- turn off unneeded buttons
        input[i].Boolean = false -- turn off unneeded LEDs
      end
    end
  end
end

function ParseResponse(rxdata)
  PollTimer:Stop()
  if DebugPacket then print("RX: "..DebugFormat(rxdata)) end
  --print("LastCmd:"..lastcmd)
  if InitFlag then
    InitFlag = false
    seq = bitstring.unpack( "16:int:little", rxdata)
    if DebugSeq then print("RX Seq: "..seq.."   "..DebugFormat(rxdata).."  (Begin)") end
    QIndex = 1
  else
    Sequence() -- Increase Sequence number by one for Received Packet
    if DebugSeq then print("RX Seq: "..seq.."   "..DebugFormat(bitstring.pack("16:int:little", seq))) end
    if DebugPacket then print("RX: "..DebugFormat(rxdata)) end
    if lastcmd == "Inputs" then
      if modelch==0 then
        modelch = #rxdata
        print("New modelch = "..modelch)
        learned = true
        DisableControls(false)
        if not ForceRelays and not UpdateFlag then
          UpdateFlag = true
          AllRelays()
        end
      end
      if DebugDesc then print("Got Inputs") end
      for k,ctl in ipairs(input) do
        if k <= #rxdata then
          --print(string.byte(rxdata:sub(k,k)))
          ctl.Boolean = string.byte(rxdata:sub(k,k))==1
          if relay[modelch].IsDisabled then DisableControls(false) end
        end
      end
    elseif lastcmd == "Outputs" then
      if DebugDesc then print("Got Outputs") end
      --print(DebugFormat(rxdata))
      for k,ctl in ipairs(relay) do
        if k <= #rxdata then
          ctl.Boolean = string.byte(rxdata:sub(k,k))==1
        end
      end
    elseif lastcmd == "ChangeRelay" then
      if DebugDesc then print("ChangeRelay: "..tostring(string.byte(rxdata)==0 and "" or "Not ").."Successful") end
      if QueueFlag then V1QueueHandler() end
    elseif lastcmd == "ChangeRelays" then
      if DebugDesc then print("ChangeRelays: "..tostring(string.byte(rxdata)==0 and "" or "Not ").."Successful") end
    else
      print(DebugFormat(rxdata))
    end
  end
  if status.Value ~= status_state.OK or not string.find(status.String,"Connected") then Status( "Connected", "OK" ) end
  if lastcmd ~= "ChangeRelay" then PollTimer:Start(pollrate) end
end

function iPIOResponse(tbl, code, d, e)
  if code==200 then
    if d:match("> iPIO.-(v%d).%d+.%d+<")=="v1" then -- iPIO Gen1 Unit
      LocID.String = d:match("Connected to: ([^<]+)<")
      model.String = d:match("> (iPIO.-v%d.%d+.%d+)<")
      gen = 1
    else -- iPIO Gen2 Unit
      LocID.String = d:match("Location ID: ([^<]+)<")
      model.String = d:match(">Dataprobe (iPIO[^<]+)<")
      gen = 2
    end
    print(model.String)
    print("Gen "..gen.." iPIO-"..string.match(model.String,"%-(%d%d-) ").." detected")
    pollrate = gen==1 and G1pollrate or G2pollrate
    lastcmd = "Hello"
    iPIO:Write(hello..null)
  end
end

function DxP_Connect()
  if string.find(ip.String,"[012]?%d?%d+.[012]?%d?%d+.[012]?%d?%d+.[012]?%d?%d") then
    if connect.Boolean then
      iPIO.ReadTimeout = timeout.Value
      Status( "Connecting...", "INITIALIZING" )
      iPIO:Connect(ip.String, port.Value)
    else
      Status( "Disconnected", "OK" )
      iPIO:Disconnect()
      PollTimer:Stop()
      QueueFlag = false
      IsConnected = false
    end
  else
    Status( "Invalid IP", "FAULT" )
  end
  DisableControls(true)
end

-- EventHandlers
PollTimer.EventHandler = Query
connect.EventHandler = DxP_Connect

iPIO.EventHandler = function(socket, msg, err)
  if msg == TcpSocket.Events.Connected then
    Status( "Connected", "OK" )
    status.Value = 0
    modelch = 0
    InitFlag = true
    IsConnected = true
    UpdateFlag = false
    HttpClient.Download { Url = "http://"..ip.String, EventHandler = iPIOResponse }
  elseif msg == TcpSocket.Events.Data then
    local rxdata = socket:Read(socket.BufferLength)
    ParseResponse(rxdata)
  elseif msg == TcpSocket.Events.Reconnect then
    local errtxt = "Socket reconnecting..."
    Status( errtxt, "INITIALIZING" )
    IsConnected = false
  elseif msg == TcpSocket.Events.Error then
    local errtxt = "Socket closed due to error "..os.date(), err
    IsConnected = false
    Status( errtxt, "FAULT" )
  elseif msg == TcpSocket.Events.Timeout then
    local errtxt = "iPIO Unresponsive. Reconnecting in "..iPIO.ReadTimeout
    IsConnected = false
    Status( errtxt, "FAULT" )
  elseif msg == TcpSocket.Events.Closed then
    IsConnected = false
    Status( "Disconnected", "OK" )
  end
  if not IsConnected then
    PollTimer:Stop()
  end
end

UpdateTimer.EventHandler = function()
  PollTimer:Stop()
  RelayUpdate()
end

for k,ctl in ipairs(relay) do
  ctl.EventHandler = function(ctl)
    if IsConnected then
      if (not UpdateFlag and not QueueFlag) and gen==2 then
        UpdateFlag = true
        UpdateTimer:Start(updaterate)
      else
        local callHandler = false
        if QueueFlag ~= true then QueueFlag = true callHandler = true end
        table.insert(V1Queue,{{RelayCtl(k,ctl)},lastcmd})
        if DebugQueue then print("inserting "..k.." into V1Queue. Table = "..#V1Queue) end
        if callHandler then V1QueueHandler() end
      end
    end
  end
end

for key,ctl in ipairs( {relayson, relaysoff} ) do
  ctl.EventHandler = function()
    lastall=key
    AllRelays(key==1)
  end
end

-- Initialization
DxP_Connect()
DisableControls(true)
LocID.String = ""
model.String = ""
if #ip.String==0 and port.Value==1025 then port.Value=9100 end
if #user.String==0 and #pass.String==0 then
  user.String = "user"
  pass.String = "user"
end

end