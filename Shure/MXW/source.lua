-- Shure Microflex Wireless Plugin for Q-Sys 5.3+
-- by Joe Peavey / QSC Boulder
-- December 2016

PluginInfo = 
{
  Name = "Shure~Microflex Wireless",
  Version = "1.6",
  Id = "7ebd66d6-ec07-4f2a-cff1-6da29ab66f5b",
  Description = "Shure MX Wireless Plugin - Updated Bonjour IP Resolve for 6.0 - July 2016",
  ShowDebug = false
}

function GetColor(props)
  return { 102, 102, 102 }
end

function GetPrettyName(props)
  return "Shure Microflex Wireless"
end

function GetProperties() -- No properties needed
  props = {}
  return props
end

function GetControls(props)
  return
  {
    {
      Name = "mode",
      ControlType = "Text",
      Count = 1
    },
    {
      Name = "nic",
      ControlType = "Text",
      Count = 1
    },
    {
      Name = "ip",
      ControlType = "Text",
      UserPin = true,
      PinStyle = "Both",
      Count = 1,
    },
    {
      Name = "apt",
      ControlType = "Text",
      Count = 1
    },
    {
      Name = "aptid",
      ControlType = "Button",
      ButtonType = "Toggle",
      Count = 1,
      UserPin = true,
      PinStyle = "Input"
    },
    {
      Name = "connect",
      ControlType = "Button",
      ButtonType = "Toggle",
      Count = 1,
      UserPin = true,
      PinStyle = "Input"
    },
    {
      Name = "details",
      ControlType = "Text",
      Count = 1
    },
    {
      Name = "aptstatus",
      ControlType = "Indicator",
      IndicatorType = "Status",
      Count = 1,
      UserPin = true,
      PinStyle = "Output"
    },
    {
      Name = "channel_name",
      ControlType = "Text",
      Count = 8,
      UserPin = true,
      --PinStyle = "Both" -- Restore "Both" when SET CHAN_NAME 
      PinStyle = "Output"
    },
    {
      Name = "identify",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Input",
      Count = 8
    },
    {
      Name = "battery_charge",
      ControlType = "Knob",
      ControlUnit = "Integer",
      Min = 0,
      Max = 100,
      Count = 8,
      UserPin = true,
      PinStyle = "Output"
    },
    {
      Name = "battery_run_time",
      ControlType = "Text",
      Count = 8,
      UserPin = true,
      PinStyle = "Output"
    },
    {
      Name = "audio_level",
      ControlType = "Knob",
      ControlUnit = "Integer",
      Min = 0,
      Max = 98,
      Count = 8,
      UserPin = true,
      PinStyle = "Output"
    },
    {
      Name = "rfmeter_1",
      ControlType = "Indicator",
      IndicatorType = "Led",
      Count = 8,
    },
    {
      Name = "rfmeter_2",
      ControlType = "Indicator",
      IndicatorType = "Led",
      Count = 8,
    },
    {
      Name = "rfmeter_3",
      ControlType = "Indicator",
      IndicatorType = "Led",
      Count = 8,
    },
    {
      Name = "rfmeter_4",
      ControlType = "Indicator",
      IndicatorType = "Led",
      Count = 8,
    },
    {
      Name = "tx_status",
      ControlType = "Text",
      Count = 8,
      UserPin = true,
      PinStyle = "Output"
    },
        {
      Name = "mute",
      ControlType = "Button",
      ButtonType = "Toggle",
      Count = 8,
      UserPin = true,
      PinStyle = "Both"
    },
    {
      Name = "transmitter_type",
      ControlType = "Text",
      Count = 8,
      UserPin = true,
      PinStyle = "Output"
    },
  }
end

function GetControlLayout(props)
  local mg = { gx = {68,54,93},udx={26,0,39},udy={0,9} }
  local Color = {
    GlobalBG = { 102, 102, 102 },
    TChBG = { 80, 81, 84 },
    BChBG = { 70, 71, 73 },
    ChStr = { 51, 51, 51 },
    Combo = { 192, 192, 192 },
    White = { 255, 255, 255 },
    Black = { 0, 0, 0 },
    BtnBlue = { 0, 181, 239 },
    meterGrn = { 81, 177, 78 }, --{ 0, 238, 0 }
    meterBg = { 59, 72 , 79 },
    LtGray = { 223, 231, 234 },
    LtBlue = { 31, 181, 251 },
  }
  layout = {
    aptstatus = {
      PrettyName = "Status~Access Point",
      Style = "Text",
      TextFontSize = 10,
      HTextAlign = "Center",
      WordWrap = true,
      Position = { 3, 49 },
      Size = { 124, 16 },
      IsReadOnly = true
    },
    mode = {
      PrettyName = "Setup~Discover Mode",
      Style = "ComboBox",
      Position = { 34, 79 },
      Size = { 72, 16 },
      TextFontSize = 10,
    },
    ip = {
      PrettyName = "Setup~IP Address",
      Style = "Text",
      Position = { 34, 98 },
      Size = { 72, 16 },
      TextFontSize = 10,
    },
    apt = {
      PrettyName = "Setup~Access Point",
      Style = "ComboBox",
      Position = { 34, 98 },
      Size = { 72, 16 },
      TextFontSize = 10,
    },
    aptid = {
      PrettyName = "ID~Access Point",
      Style = "Button",
      ButtonStyle = "Toggle",
      TextFontSize = 12,
      Legend = "ID",
      Color = Color.BtnBlue,
      OffColor = Color.LtGray,
      UnlinkOffColor = true,
      Position = { 106, 97 },
      Size = { 21, 18 },
      Radius = 2,
      Margin = 1,
    },
    nic = {
      PrettyName = "Setup~Local NIC",
      Style = "ComboBox",
      Position = { 34, 117 },
      Size = { 72, 16 },
      TextFontSize = 10,
    },
    connect = {
      PrettyName = "Setup~Connect",
      Style = "Button",
      ButtonStyle = "Toggle",
      TextFontSize = 12,
      Legend = "Connect",
      Color = Color.BtnBlue,
      OffColor = { 183, 37, 39 },
      UnlinkOffColor = true,
      Position = { 34, 136 },
      Size = { 72, 18 },
      Radius = 2,
      Margin = 1,
      IsBold = true,
    },
    details = {
      PrettyName = "Device Details",
      Style = "Text",
      WordWrap = true,
      HTextAlign = "Left",
      VTextAlign = "Top",
      TextFontSize = 7.5,
      TextBoxStyle = "NoBackground",
      Position = { 9, 166 },
      Size = { 113, 36 },
    },
  }

  local BGColor = { 102, 102, 102 }
  local TextColor = { 204, 204, 204 }
  for i=1,8 do
    layout["channel_name "..i] = 
      {
        PrettyName = "Channel~Name~"..i,
        Style = "Text",
        TextFontSize = 10,
        Position = { tonumber(i>4 and 53 or 52)+81*i, 47 },
        Size = { 78, 16 },
        IsReadOnly = true -- Remove this when SET x CHAN_NAME is fixed in the API
      }
    layout["identify "..i] = {
      PrettyName = "Identify~"..i,
      Style = "Button",
      ButtonStyle = "Toggle",
      Legend = "Identify",
      TextFontSize = 10,
      Legend = "Identify",
      Color = Color.BtnBlue,
      OffColor = Color.LtGray,
      UnlinkOffColor = true,
      Position = { tonumber(i>4 and 54 or 53)+81*i, 63 },
      Size = { 75, 20 },
      Radius = 2,
      Margin = 2,
     }
    layout["battery_charge "..i] = {
      PrettyName = "Battery~Charge~"..i,
      Style = "Meter",
      MeterStyle = "Level",
      Color = { 0, 238, 0 },
      ShowTextBox = false,
      Position = { tonumber(i>4 and 59 or 58)+81*i, 84 },
      Size = { 65, 14 }
    }
    layout["battery_run_time "..i] = 
      {
        PrettyName = "Battery~Run Time~"..i,
        Style = "Text",
        TextBoxStyle = "NoBackground",
        TextFontSize = 9.5,
        IsBold = true,
        Color = TextColor,
        Position = { tonumber(i>4 and 53 or 52)+81*i, 98 },
        Size = { 78, 11 },
        IsReadOnly = true
      }
    layout["audio_level "..i] =
      {
        PrettyName = "Audio Meter~"..i,
        Style = "Meter",
        MeterStyle = "Level",
        Color = { 0, 248, 0 },
        ShowTextBox = false,
        Position = { tonumber(i>4 and 74 or 73)+81*i, 116 },
        Size = { 10, 55 }
      }
    for j=1,4 do
      layout["rfmeter_"..j.." "..i] = 
      {
        Style = "Meter",
        MeterStyle = "Level",
        Color = { 0, 248, 0 },
        ShowTextBox = false,
        Position = { tonumber(i>4 and 90 or 89)+(81*i)+((j-1)*9), 159-(7*(j-1)) },
        Size = { 9, 11+(7*(j-1)) }
      }
    end
    layout["tx_status "..i] = 
      {
        PrettyName = "Transmitter~Status~"..i,
        Style = "Text",
        TextFontSize = 8,
        Color = TextColor,
        Position = { tonumber(i>4 and 63 or 62)+81*i, 193 },
        Size = { 59, 16 },
        IsReadOnly = true
      }
    layout["mute "..i] = 
      {
        PrettyName = "Mute~"..i,
        Style = "Button",
        ButtonStyle = "Toggle",
        Legend = "MUTE",
        Color = { 255, 0, 0 },
        --OffColor = TextColor,
        --UnlinkOffColor = true,
        Position = { tonumber(i>4 and 59 or 58)+81*i, 209 },
        Size = { 67, 18 }
      }
    layout["transmitter_type "..i] = 
      {
        PrettyName = "Transmitter~Type~"..i,
        Style = "Text",
        TextBoxStyle = "NoBackground",
        TextFontSize = 11,
        Color = TextColor,
        Position = { tonumber(i>4 and 55 or 54)+81*i, 233 },
        Size = { 74, 16 },
        IsReadOnly = true
      }
  end

  graphics = 
  {
    {
      Type = "GroupBox",
      Fill = Color.Black,
      StrokeWidth = 0,
      --CornerRadius = 0,
      Position = { 0, 0 },
      Size = { 781, 26 }
    },
    {
      Type = "GroupBox",
      Fill = Color.Black,
      StrokeWidth = 0,
      --CornerRadius = 0,
      Position = { 0, 26 },
      Size = { 131, 1 }
    },
    {
      Type = "Svg", -- White Shure Logo
      Image = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiIHdpZHRoPSIxMTUuMDUzcHgiIGhlaWdodD0iMjAuMjI1cHgiIHZpZXdCb3g9IjAgMCAxMTUuMDUzIDIwLjIyNSIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgMTE1LjA1MyAyMC4yMjUiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnIGlkPSJMYXllcl8zIiBkaXNwbGF5PSJub25lIj48cmVjdCB4PSI4Ni4xMjIiIHk9Ii00LjM3OSIgZGlzcGxheT0iaW5saW5lIiBmaWxsPSIjMjQwMDBFIiB3aWR0aD0iMzAuMDgxIiBoZWlnaHQ9IjEyLjY5MSIvPjwvZz48ZyBpZD0iQmxhY2tfMV8iIGRpc3BsYXk9Im5vbmUiPjxnIGlkPSJCbGFjayIgZGlzcGxheT0iaW5saW5lIj48cGF0aCBmaWxsPSIjMjMxRjIwIiBkPSJNNTYuODQyLDAuMTMxbC0xLjU0OSwxMi4wODVoLTIuMjU0bDEuNTA1LTEyLjA4NWgtOC41MjFsLTEuMTM4LDguMjE0YzAsMC0wLjU4NSwzLjE4OC0wLjExNCw0LjYyOWMxLjA3OSwzLjI2LDMuNzcxLDQuNDQ1LDMuNzcxLDQuNDQ1bDAuMzEyLDAuMTdjMS4wODEsMC41NTMsMi4yMjIsMC43OTUsMy43MDEsMC43OTVoMC44MDZjMi4xNDctMC4wMDYsMy44OTQtMC40ODQsNS4zMi0xLjE5NGMwLjAwMy0wLjAwOSwwLjA4OS0wLjA0MSwwLjA4OS0wLjA0MWMwLjQ2MS0wLjI3NCwzLjExLTEuNjM4LDQuNzUyLTQuODc3YzAuNjg2LTEuMzU1LDEuMDAyLTMuNDQ3LDEuMDAyLTMuNDQ3bDEuMDI0LTguNjkzIi8+PHBhdGggZmlsbD0iIzIzMUYyMCIgZD0iTTExNC40NzEsMC42NTRjMC4zNzksMC4zODcsMC41ODIsMC44OTUsMC41ODIsMS40NDJjMCwwLjU2Ni0wLjIxNiwxLjA3NS0wLjYwNCwxLjQ1M2MtMC40MDEsMC4zODktMC45MjMsMC41OTktMS40NTEsMC41OTljLTAuNTQ5LDAtMS4wNjQtMC4yMi0xLjQ2MS0wLjYyMmMtMC4zODYtMC4zOS0wLjU4OC0wLjg5OS0wLjU4OC0xLjQzYzAtMC4zNjksMC4wOTctMC43MjMsMC4zLTEuMDdjMC4zNjgtMC42MiwxLjAwNy0wLjk4NywxLjc0OS0wLjk4N0MxMTMuNTYxLDAuMDM4LDExNC4wNzMsMC4yNTMsMTE0LjQ3MSwwLjY1NCBNMTExLjgwNywwLjg2M2MtMC4zMzQsMC4zMzUtMC41MiwwLjc3NC0wLjUyLDEuMjI4czAuMTcsMC44NzcsMC40OTEsMS4yYzAuMzI4LDAuMzMyLDAuNzY1LDAuNTIsMS4yMTgsMC41MmMwLjQ0NCwwLDAuODc1LTAuMTgxLDEuMjE0LTAuNTAzYzAuMzIzLTAuMzExLDAuNTA0LTAuNzQxLDAuNTA0LTEuMTgyYzAtMC40OTItMC4xNjUtMC45MDQtMC40ODctMS4yMzNjLTAuMzMyLTAuMzM4LTAuNzUyLTAuNTEzLTEuMjI3LTAuNTEzQzExMi41MzcsMC4zNzgsMTEyLjEzLDAuNTQsMTExLjgwNywwLjg2MyBNMTEzLjAzOSwwLjkxNGMwLjY0OSwwLDAuOTczLDAuMjIyLDAuOTczLDAuNjU1YzAsMC4zMDEtMC4xODYsMC41MjYtMC40OTYsMC42MDZsMC41MDgsMS4wMTZoLTAuNjE2bC0wLjQzNS0wLjkzMmgtMC4yNzF2MC45MzJoLTAuNTU2VjAuOTE0SDExMy4wMzl6IE0xMTIuNzAxLDEuOTI2aDAuMjcxYzAuMzE1LDAsMC40NjktMC4wOTYsMC40NjktMC4zMjJjMC0wLjIzNy0wLjE2NC0wLjM0LTAuNDk4LTAuMzRoLTAuMjQxVjEuOTI2TDExMi43MDEsMS45MjZ6Ii8+PHBvbHlsaW5lIGZpbGw9IiMyMzFGMjAiIHBvaW50cz0iMzIuNDMxLDAuMTMxIDIzLjkzOCwwLjEzMSAyMS44MDEsMTcuNjIyIDMwLjI3NiwxNy42MjIgMzAuMjgzLDE3LjYyNyAzMC4yODMsMTcuNjIyIDMwLjI4NSwxNy42MjIgMzAuMjgzLDE3LjYyIDMxLjAzOCwxMS40OTQgMzMuNjQ2LDExLjQ5NCAzMy42OTcsMTEuNDY0IDMyLjk0MywxNy42MDQgNDEuNDI2LDE3LjYyNyA0My41NzIsMC4xMzYgNDMuNTcyLDAuMTQ3IDM1LjA4OCwwLjE0NyAzNC4zNDIsNi4xOTQgMzQuMzI4LDYuMTg0IDMxLjcwOSw2LjE4NCAzMS42ODMsNi4xOTYgMzIuNDI0LDAuMTM2ICIvPjxwYXRoIGZpbGw9IiMyMzFGMjAiIGQ9Ik05OC40MjEsNC4xNDNoMTAuMTQ2bDAuMzczLTQuMDIxSDkwLjIzTDg4LjYyNiwxMy4xOGwtNi40NDItMy4yODNjMCwwLDEuNzc3LTAuNTA0LDIuNzUtMS4xODNjMS4wMTUtMC43MSwxLjQzOS0xLjQxNSwxLjYyOS0xLjc0NGMwLjM2LTAuNjA0LDAuNzUtMS4zMDQsMC43OTUtMi42MjJjMC4wNDUtMS4zNjEtMC42Ny0yLjMzNy0xLjA1My0yLjc4MmMtMC4zODUtMC40NTctMS4zMy0xLjQ2LTMtMS40MzVjLTEuODU1LDAuMDI2LTE1LjQsMC0xNS40LDBsLTAuNDk2LDMuOTU1aDEyLjE5NWwtMC4yOSwyLjEzNEg2Ny4xNDhMNjUuNzksMTcuNDdoNy4zMzNsMC43NDktNS42NDFsMTMuOTEyLDguMzk1bDAuMzA4LTIuNTg2bDE4LjkyNi0wLjAxN2wwLjQ0MS00LjZsLTEwLjI1NS0wLjAwNmwwLjMxOC0yLjMxOGgxMC4yNDZsMC42MDMtNC40NjJsLTEwLjI0LDAuMDExTDk4LjQyMSw0LjE0M3oiLz48cGF0aCBmaWxsPSIjMjMxRjIwIiBkPSJNNi42NzUsMC4wMzRjLTEuMTQsMC4wMDUtMi4xNTEsMC4zOTctMi45NTcsMS4wMjlsLTAuMDQsMC4wMDdDMy42NzIsMS4wNjksMy42NzEsMS4wNjQsMy42NzEsMS4wNjRsMC4wMDEsMC4wMDdDMS4wODksMy4wODgsMC41MzEsNy41LDQuMTk0LDkuMzE0YzAuNDg4LDAuMjQyLDguNTkxLDMuNTI3LDguNTkxLDMuNTI3bDAuMDIsMC4wMDZMMC43ODIsMTIuODY1bC0wLjc2Nyw0LjczN0wwLDE3LjYxNWgwLjAxNUwwLjAxLDE3LjYyN2wwLjAxMS0wLjAxMmMwLjQ2MSwwLDEzLjg1MywwLjAxNiwxNC45NDUsMC4wMTZjMi4yNTcsMC4wMDIsMy44MDktMC44NjUsNC44ODgtMi4zODdjMC4zOTEtMC41MjEsMC42NS0xLjAzNiwwLjgyNS0xLjU2NGMwLjU2My0xLjY1NSwwLjQ1Ny0zLjU0Mi0wLjY2Ny00LjQ0NGMtMC4yMzktMC4xOTEtMC40NTEtMC4zNTktMC42NzEtMC40OTNjLTAuMTUtMC4wOTItMC40MDItMC4yNDUtMC42Mi0wLjM0N0MxNi43OTcsNy40OCw4LjU2Niw0LjAwMyw4LjU2Niw0LjAwM2wxMi43MDUtMC4wMDhsMC41MjQtMy45NWwtMC4zMTgsMC4yMzNsMC4zMTgtMC4yNDRINi42NzV6Ii8+PC9nPjwvZz48ZyBpZD0iV2hpdGVfMV8iPjxnIGlkPSJXaGl0ZSI+PHBhdGggZmlsbD0iI0ZGRkZGRiIgZD0iTTU2Ljg0MiwwLjEzMWwtMS41NDksMTIuMDg1aC0yLjI1NGwxLjUwNS0xMi4wODVoLTguNTIxbC0xLjEzOCw4LjIxNGMwLDAtMC41ODUsMy4xODgtMC4xMTQsNC42MjljMS4wNzksMy4yNiwzLjc3MSw0LjQ0NSwzLjc3MSw0LjQ0NWwwLjMxMiwwLjE3YzEuMDgxLDAuNTUzLDIuMjIyLDAuNzk1LDMuNzAxLDAuNzk1aDAuODA2YzIuMTQ3LTAuMDA2LDMuODk0LTAuNDg0LDUuMzItMS4xOTRjMC4wMDMtMC4wMDksMC4wODktMC4wNDEsMC4wODktMC4wNDFjMC40NjEtMC4yNzQsMy4xMS0xLjYzOCw0Ljc1Mi00Ljg3N2MwLjY4Ni0xLjM1NSwxLjAwMi0zLjQ0NywxLjAwMi0zLjQ0N2wxLjAyNC04LjY5MyIvPjxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik0xMTQuNDcxLDAuNjU0YzAuMzc5LDAuMzg3LDAuNTgyLDAuODk1LDAuNTgyLDEuNDQyYzAsMC41NjYtMC4yMTYsMS4wNzUtMC42MDQsMS40NTNjLTAuNDAxLDAuMzg5LTAuOTIzLDAuNTk5LTEuNDUxLDAuNTk5Yy0wLjU0OSwwLTEuMDY0LTAuMjItMS40NjEtMC42MjJjLTAuMzg2LTAuMzktMC41ODgtMC44OTktMC41ODgtMS40M2MwLTAuMzY5LDAuMDk3LTAuNzIzLDAuMy0xLjA3YzAuMzY4LTAuNjIsMS4wMDctMC45ODcsMS43NDktMC45ODdDMTEzLjU2MSwwLjAzOCwxMTQuMDczLDAuMjUzLDExNC40NzEsMC42NTQgTTExMS44MDcsMC44NjNjLTAuMzM0LDAuMzM1LTAuNTIsMC43NzQtMC41MiwxLjIyOHMwLjE3LDAuODc3LDAuNDkxLDEuMmMwLjMyOCwwLjMzMiwwLjc2NSwwLjUyLDEuMjE4LDAuNTJjMC40NDQsMCwwLjg3NS0wLjE4MSwxLjIxNC0wLjUwM2MwLjMyMy0wLjMxMSwwLjUwNC0wLjc0MSwwLjUwNC0xLjE4MmMwLTAuNDkyLTAuMTY1LTAuOTA0LTAuNDg3LTEuMjMzYy0wLjMzMi0wLjMzOC0wLjc1Mi0wLjUxMy0xLjIyNy0wLjUxM0MxMTIuNTM3LDAuMzc4LDExMi4xMywwLjU0LDExMS44MDcsMC44NjMgTTExMy4wMzksMC45MTRjMC42NDksMCwwLjk3MywwLjIyMiwwLjk3MywwLjY1NWMwLDAuMzAxLTAuMTg2LDAuNTI2LTAuNDk2LDAuNjA2bDAuNTA4LDEuMDE2aC0wLjYxNmwtMC40MzUtMC45MzJoLTAuMjcxdjAuOTMyaC0wLjU1NlYwLjkxNEgxMTMuMDM5eiBNMTEyLjcwMSwxLjkyNmgwLjI3MWMwLjMxNSwwLDAuNDY5LTAuMDk2LDAuNDY5LTAuMzIyYzAtMC4yMzctMC4xNjQtMC4zNC0wLjQ5OC0wLjM0aC0wLjI0MVYxLjkyNkwxMTIuNzAxLDEuOTI2eiIvPjxwb2x5bGluZSBmaWxsPSIjRkZGRkZGIiBwb2ludHM9IjMyLjQzMSwwLjEzMSAyMy45MzgsMC4xMzEgMjEuODAxLDE3LjYyMiAzMC4yNzYsMTcuNjIyIDMwLjI4MywxNy42MjcgMzAuMjgzLDE3LjYyMiAzMC4yODUsMTcuNjIyIDMwLjI4MywxNy42MiAzMS4wMzgsMTEuNDk0IDMzLjY0NiwxMS40OTQgMzMuNjk3LDExLjQ2NCAzMi45NDMsMTcuNjA0IDQxLjQyNiwxNy42MjcgNDMuNTcyLDAuMTM2IDQzLjU3MiwwLjE0NyAzNS4wODgsMC4xNDcgMzQuMzQyLDYuMTk0IDM0LjMyOCw2LjE4NCAzMS43MDksNi4xODQgMzEuNjgzLDYuMTk2IDMyLjQyNCwwLjEzNiAiLz48cGF0aCBmaWxsPSIjRkZGRkZGIiBkPSJNOTguNDIxLDQuMTQzaDEwLjE0NmwwLjM3My00LjAyMUg5MC4yM0w4OC42MjYsMTMuMThsLTYuNDQyLTMuMjgzYzAsMCwxLjc3Ny0wLjUwNCwyLjc1LTEuMTgzYzEuMDE1LTAuNzEsMS40MzktMS40MTUsMS42MjktMS43NDRjMC4zNi0wLjYwNCwwLjc1LTEuMzA0LDAuNzk1LTIuNjIyYzAuMDQ1LTEuMzYxLTAuNjctMi4zMzctMS4wNTMtMi43ODJjLTAuMzg1LTAuNDU3LTEuMzMtMS40Ni0zLTEuNDM1Yy0xLjg1NSwwLjAyNi0xNS40LDAtMTUuNCwwbC0wLjQ5NiwzLjk1NWgxMi4xOTVsLTAuMjksMi4xMzRINjcuMTQ4TDY1Ljc5LDE3LjQ3aDcuMzMzbDAuNzQ5LTUuNjQxbDEzLjkxMiw4LjM5NWwwLjMwOC0yLjU4NmwxOC45MjYtMC4wMTdsMC40NDEtNC42bC0xMC4yNTUtMC4wMDZsMC4zMTgtMi4zMThoMTAuMjQ2bDAuNjAzLTQuNDYybC0xMC4yNCwwLjAxMUw5OC40MjEsNC4xNDN6Ii8+PHBhdGggZmlsbD0iI0ZGRkZGRiIgZD0iTTYuNjc1LDAuMDM0Yy0xLjE0LDAuMDA1LTIuMTUxLDAuMzk3LTIuOTU3LDEuMDI5bC0wLjA0LDAuMDA3QzMuNjcyLDEuMDY5LDMuNjcxLDEuMDY0LDMuNjcxLDEuMDY0bDAuMDAxLDAuMDA3QzEuMDg5LDMuMDg4LDAuNTMxLDcuNSw0LjE5NCw5LjMxNGMwLjQ4OCwwLjI0Miw4LjU5MSwzLjUyNyw4LjU5MSwzLjUyN2wwLjAyLDAuMDA2TDAuNzgyLDEyLjg2NWwtMC43NjcsNC43MzdMMCwxNy42MTVoMC4wMTVMMC4wMSwxNy42MjdsMC4wMTEtMC4wMTJjMC40NjEsMCwxMy44NTMsMC4wMTYsMTQuOTQ1LDAuMDE2YzIuMjU3LDAuMDAyLDMuODA5LTAuODY1LDQuODg4LTIuMzg3YzAuMzkxLTAuNTIxLDAuNjUtMS4wMzYsMC44MjUtMS41NjRjMC41NjMtMS42NTUsMC40NTctMy41NDItMC42NjctNC40NDRjLTAuMjM5LTAuMTkxLTAuNDUxLTAuMzU5LTAuNjcxLTAuNDkzYy0wLjE1LTAuMDkyLTAuNDAyLTAuMjQ1LTAuNjItMC4zNDdDMTYuNzk3LDcuNDgsOC41NjYsNC4wMDMsOC41NjYsNC4wMDNsMTIuNzA1LTAuMDA4bDAuNTI0LTMuOTVsLTAuMzE4LDAuMjMzbDAuMzE4LTAuMjQ0SDYuNjc1eiIvPjwvZz48L2c+PC9zdmc+",
      Position = { 24, 6 },
      Size = { 88, 15 }
    },
    {
      Type = "Svg", -- White Microflex Wireless letterform
      Image = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiIHdpZHRoPSIxNTAuMzAycHgiIGhlaWdodD0iMTIuNDIzcHgiIHZpZXdCb3g9IjAgMCAxNTAuMzAyIDEyLjQyMyIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgMTUwLjMwMiAxMi40MjMiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnPjxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik0zLjEsMy41MjdIMy4wN3Y4LjEzM0gxLjIxVjAuOTNoMi44MTlMNy4zOCw4Ljg4NWwzLjQxLTcuOTU2aDIuNzZ2MTAuNzNoLTEuODZWMy41MjdIMTEuNjZMOC4yMjIsMTEuNjZINi41NTRMMy4xLDMuNTI3eiIvPjxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik0xNS42MTYsMC42NjRoMS44M3YxLjYyNGgtMS44M1YwLjY2NHogTTE1LjYxNiwzLjczNGgxLjgzdjcuOTI2aC0xLjgzVjMuNzM0eiIvPjxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik0yNy42Niw4LjgyNmMtMC4wNTksMC4yNzYtMC4xOCwwLjU5My0wLjM2MSwwLjk1MnMtMC40NCwwLjY5Ni0wLjc3NCwxLjAxMWMtMC4zMzUsMC4zMTUtMC43NTgsMC41ODMtMS4yNywwLjgwNHMtMS4xMzIsMC4zMzItMS44NiwwLjMzMmMtMC42NCwwLTEuMjM3LTAuMDgxLTEuNzkzLTAuMjQ0Yy0wLjU1Ni0wLjE2Mi0xLjA0Ni0wLjQyLTEuNDY5LTAuNzc1Yy0wLjQyMy0wLjM1NC0wLjc1NS0wLjgxMi0wLjk5Ni0xLjM3M3MtMC4zNjEtMS4yNC0wLjM2MS0yLjAzN2MwLTAuNTIxLDAuMTAxLTEuMDIzLDAuMzAyLTEuNTA2YzAuMjAyLTAuNDgyLDAuNDkyLTAuOTEsMC44NzEtMS4yODRjMC4zNzktMC4zNzQsMC44NDQtMC42NzQsMS4zOTYtMC45YzAuNTUxLTAuMjI2LDEuMTgxLTAuMzM5LDEuODg5LTAuMzM5YzAuNzI5LDAsMS4zNTMsMC4wOTEsMS44NzUsMC4yNzNjMC41MjEsMC4xODMsMC45NTYsMC40MjEsMS4zMDYsMC43MTZjMC4zNSwwLjI5NSwwLjYxMywwLjYyLDAuNzksMC45NzRjMC4xNzcsMC4zNTQsMC4yOCwwLjY5OSwwLjMxLDEuMDMzaC0xLjgzYy0wLjA0OS0wLjE1OC0wLjEzMy0wLjMyLTAuMjUxLTAuNDg3Yy0wLjExOC0wLjE2Ny0wLjI3Mi0wLjMyMi0wLjQ2NS0wLjQ2NWMtMC4xOTEtMC4xNDMtMC40MjMtMC4yNTgtMC42OTMtMC4zNDdjLTAuMjcxLTAuMDg4LTAuNTc4LTAuMTMzLTAuOTIzLTAuMTMzYy0wLjQzMywwLTAuODE2LDAuMDc0LTEuMTUxLDAuMjIycy0wLjYxNywwLjMzOS0wLjg0OSwwLjU3NmMtMC4yMzEsMC4yMzYtMC40MDgsMC41MDctMC41MzEsMC44MTJjLTAuMTIzLDAuMzA1LTAuMTg1LDAuNjE1LTAuMTg1LDAuOTNjMCwwLjM4NCwwLjA1MiwwLjc0MywwLjE1NSwxLjA3N2MwLjEwNCwwLjMzNSwwLjI2MSwwLjYzLDAuNDcyLDAuODg2YzAuMjEyLDAuMjU2LDAuNDc4LDAuNDU4LDAuNzk4LDAuNjA1YzAuMzE5LDAuMTQ4LDAuNzAxLDAuMjIyLDEuMTQ0LDAuMjIyYzAuMzk0LDAsMC43NC0wLjA0NywxLjA0LTAuMTRjMC4zMDEtMC4wOTQsMC41NTQtMC4yMTQsMC43NjEtMC4zNjJjMC4yMDYtMC4xNDcsMC4zNzEtMC4zMTIsMC40OTQtMC40OTVjMC4xMjMtMC4xODIsMC4yMDQtMC4zNjEsMC4yNDQtMC41MzlIMjcuNjZ6Ii8+PHBhdGggZmlsbD0iI0ZGRkZGRiIgZD0iTTI4Ljg0MSwzLjczNGgxLjgzdjEuMTgxaDAuMDQ0YzAuMDk5LTAuMTU4LDAuMjI0LTAuMzIyLDAuMzc3LTAuNDk1YzAuMTUyLTAuMTcyLDAuMzQyLTAuMzMsMC41NjctMC40NzJjMC4yMjctMC4xNDMsMC40OS0wLjI1OCwwLjc5LTAuMzQ3YzAuMy0wLjA4OCwwLjY0Ny0wLjEzMywxLjA0MS0wLjEzM2MwLjEzOCwwLDAuMjU2LDAsMC4zNTQsMGMwLjA5OSwwLDAuMTk3LDAuMDEsMC4yOTYsMC4wM3YxLjk3OGMtMC4wODktMC4wMi0wLjIyMi0wLjA0OS0wLjM5OC0wLjA4OGMtMC4xNzgtMC4wMzktMC40MTktMC4wNTktMC43MjQtMC4wNTljLTAuNTgxLDAtMS4wMjgsMC4wODYtMS4zNDMsMC4yNThjLTAuMzE1LDAuMTcyLTAuNTQ3LDAuMzcyLTAuNjk0LDAuNTk4Yy0wLjE0NywwLjIyNy0wLjIzNiwwLjQ2LTAuMjY2LDAuNzAxYy0wLjAyOSwwLjI0MS0wLjA0NCwwLjQzMS0wLjA0NCwwLjU2OHY0LjIwN2gtMS44M1YzLjczNHoiLz48cGF0aCBmaWxsPSIjRkZGRkZGIiBkPSJNMzkuMDQsMTEuOTI2Yy0wLjU0MSwwLTEuMDc3LTAuMDcxLTEuNjA4LTAuMjE0Yy0wLjUzMi0wLjE0My0xLjAwNy0wLjM4MS0xLjQyNS0wLjcxNnMtMC43NTgtMC43NzItMS4wMTktMS4zMTRjLTAuMjYxLTAuNTQxLTAuMzkxLTEuMjA1LTAuMzkxLTEuOTkyYzAtMC41MzIsMC4wODMtMS4wNSwwLjI1MS0xLjU1OGMwLjE2Ny0wLjUwNiwwLjQzLTAuOTU3LDAuNzg5LTEuMzVzMC44MTktMC43MTEsMS4zOC0wLjk1MmMwLjU2Mi0wLjI0MSwxLjIzNS0wLjM2MiwyLjAyMi0wLjM2MnMxLjQ2MSwwLjEyMSwyLjAyMiwwLjM2MmMwLjU2MSwwLjI0MSwxLjAyMSwwLjU1OSwxLjM4LDAuOTUyczAuNjIyLDAuODQ0LDAuNzg5LDEuMzVjMC4xNjgsMC41MDcsMC4yNTEsMS4wMjYsMC4yNTEsMS41NThjMCwwLjc4Ny0wLjEzLDEuNDUxLTAuMzkxLDEuOTkyYy0wLjI2MSwwLjU0Mi0wLjYwMSwwLjk3OS0xLjAxOSwxLjMxNHMtMC44OTMsMC41NzMtMS40MjUsMC43MTZDNDAuMTE3LDExLjg1NCwzOS41ODEsMTEuOTI2LDM5LjA0LDExLjkyNnogTTM5LjA0LDEwLjM2MWMwLjgyNiwwLDEuNDY0LTAuMjM4LDEuOTExLTAuNzE2YzAuNDQ4LTAuNDc3LDAuNjcyLTEuMTM5LDAuNjcyLTEuOTg1YzAtMC40NjItMC4wNjktMC44NjEtMC4yMDctMS4xOTVzLTAuMzI0LTAuNjA4LTAuNTYxLTAuODE5cy0wLjUxMi0wLjM2Ny0wLjgyNi0wLjQ2NWMtMC4zMTUtMC4wOTktMC42NDUtMC4xNDgtMC45ODktMC4xNDhjLTAuMzU0LDAtMC42ODcsMC4wNDktMC45OTYsMC4xNDhjLTAuMzExLDAuMDk4LTAuNTgzLDAuMjUzLTAuODE5LDAuNDY1cy0wLjQyMywwLjQ4NS0wLjU2MSwwLjgxOWMtMC4xMzksMC4zMzQtMC4yMDcsMC43MzMtMC4yMDcsMS4xOTVjMCwwLjg0NiwwLjIyNCwxLjUwOCwwLjY3MiwxLjk4NUMzNy41NzYsMTAuMTIzLDM4LjIxNCwxMC4zNjEsMzkuMDQsMTAuMzYxeiIvPjxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik00NS42OTYsMTEuNjZWNS41NjRoLTEuNzU3VjRoMS43NTdWMy4wODRjMC0wLjQwMywwLjA2My0wLjc0NSwwLjE5MS0xLjAyNmMwLjEyOC0wLjI4LDAuMjktMC41MTEsMC40ODctMC42OTNjMC4xOTYtMC4xODIsMC40MTUtMC4zMiwwLjY1Ni0wLjQxNGMwLjI0MS0wLjA5MywwLjQ3OC0wLjE2MiwwLjcwOS0wLjIwN3MwLjQ0Mi0wLjA2OSwwLjYzNS0wLjA3NGMwLjE5MS0wLjAwNSwwLjMzNy0wLjAwNywwLjQzNi0wLjAwN2MwLjE3NywwLDAuMzQyLDAuMDA1LDAuNDk0LDAuMDE1czAuMzA1LDAuMDI1LDAuNDU4LDAuMDQ0YzAuMTUyLDAuMDIsMC4zMTIsMC4wNDQsMC40NzksMC4wNzRjMC4xNjcsMC4wMjksMC4zNDksMC4wNjQsMC41NDYsMC4xMDN2MS41NjVjLTAuMjM2LTAuMDU5LTAuNDM2LTAuMTA0LTAuNTk4LTAuMTMzYy0wLjE2Mi0wLjAzLTAuMzAxLTAuMDUyLTAuNDEzLTAuMDY2Yy0wLjExMy0wLjAxNS0wLjIxNy0wLjAyNC0wLjMxMS0wLjAzYy0wLjA5NC0wLjAwNS0wLjE4OS0wLjAwNy0wLjI4Ny0wLjAwN2MtMC4zNzQtMC4wMS0wLjY3LDAuMDI1LTAuODg2LDAuMTA0Yy0wLjIxNywwLjA3OS0wLjM4MiwwLjE4LTAuNDk1LDAuMzAyYy0wLjExMywwLjEyNC0wLjE4NywwLjI1OC0wLjIyMSwwLjQwNmMtMC4wMzUsMC4xNDctMC4wNTIsMC4yODUtMC4wNTIsMC40MTNWNGgyLjg0OXYxLjU2NWgtMi44NDl2Ni4wOTZINDUuNjk2eiIvPjxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik01Mi4xOSwwLjkzaDEuODN2MTAuNzNoLTEuODNWMC45M3oiLz48cGF0aCBmaWxsPSIjRkZGRkZGIiBkPSJNNjQuMDU4LDkuMjg0Yy0wLjAyOSwwLjE2Ny0wLjEyNSwwLjM5OC0wLjI4OCwwLjY5NGMtMC4xNjIsMC4yOTUtMC40MDUsMC41ODUtMC43MywwLjg3MWMtMC4zMjQsMC4yODYtMC43NCwwLjUzNy0xLjI0NywwLjc1M3MtMS4xMjksMC4zMjUtMS44NjcsMC4zMjVjLTAuNzA4LDAtMS4zNDMtMC4xMDYtMS45MDQtMC4zMTdjLTAuNTYxLTAuMjExLTEuMDM1LTAuNTA0LTEuNDI0LTAuODc4cy0wLjY4Ny0wLjgyMi0wLjg5NC0xLjM0M2MtMC4yMDYtMC41MjEtMC4zMS0xLjA5Mi0wLjMxLTEuNzEyYzAtMC41NjEsMC4wOTEtMS4wOTQsMC4yNzMtMS42MDFjMC4xODItMC41MDcsMC40NTctMC45NTUsMC44MjYtMS4zNDNzMC44MjktMC42OTYsMS4zOC0wLjkyM2MwLjU1MS0wLjIyNiwxLjE5LTAuMzM5LDEuOTE5LTAuMzM5YzAuNzQ4LDAuMDEsMS4zOTcsMC4xMjgsMS45NDgsMC4zNTRjMC41NTEsMC4yMjYsMS4wMDksMC41NDMsMS4zNzMsMC45NTJjMC4zNjMsMC40MDksMC42MzcsMC45MDMsMC44MTksMS40ODNjMC4xODIsMC41ODEsMC4yNzIsMS4yMywwLjI3MiwxLjk0OWgtNi45NTJjMC4wMiwwLjEyOCwwLjA2MiwwLjMxMywwLjEyNiwwLjU1M2MwLjA2MywwLjI0MSwwLjE4NSwwLjQ4MiwwLjM2MSwwLjcyM2MwLjE3OCwwLjI0MSwwLjQzNiwwLjQ1OCwwLjc3NSwwLjY0OWMwLjMzOSwwLjE5MiwwLjc4OSwwLjI5OCwxLjM1MSwwLjMxN2MwLjU4LDAsMS4wNTUtMC4xMTUsMS40MjQtMC4zNDdjMC4zNjktMC4yMzEsMC42MjItMC41MDQsMC43NjEtMC44MTlINjQuMDU4eiBNNjIuMjU3LDYuNzljLTAuMTM4LTAuNjY5LTAuNDI2LTEuMTQ0LTAuODYzLTEuNDI0Yy0wLjQzOC0wLjI4MS0wLjk4Ni0wLjQyMS0xLjY0Ni0wLjQyMWMtMC4yMzYsMC0wLjQ4LDAuMDI1LTAuNzMsMC4wNzRjLTAuMjUxLDAuMDQ5LTAuNDg3LDAuMTQzLTAuNzA5LDAuMjgxcy0wLjQyMSwwLjMyNS0wLjU5OCwwLjU2MWMtMC4xNzcsMC4yMzYtMC4zMSwwLjU0Ni0wLjM5OCwwLjkzSDYyLjI1N3oiLz48cGF0aCBmaWxsPSIjRkZGRkZGIiBkPSJNNzMuMjY4LDMuNzM0bC0zLjIwMiwzLjg2N2wzLjM4LDQuMDU5aC0yLjMwM2wtMi4yMTQtMi43NDVsLTIuMTcsMi43NDVoLTIuMzAzbDMuMzgtNC4wNTlsLTMuMjMyLTMuODY3aDIuMzAzbDIuMDIyLDIuNTY4bDIuMDIxLTIuNTY4SDczLjI2OHoiLz48L2c+PGc+PHBhdGggZmlsbD0iI0ZGRkZGRiIgZD0iTTc1LjI2OSwxLjg5Mkg3NC4zNlYxLjM3NWgyLjQ1djAuNTE3aC0wLjkwN3YyLjUyNGgtMC42MzVWMS44OTJ6IE04MC4zMDksMi4xMTNoLTAuMDE1bC0wLjg2MywyLjMwM2gtMC40NThsLTAuODYzLTIuMzAzaC0wLjAxNXYyLjMwM2gtMC42MDVWMS4zNzVoMC45MTZsMC44MDQsMi4wODhsMC43OS0yLjA4OGgwLjkxNXYzLjA0MWgtMC42MDVWMi4xMTN6Ii8+PC9nPjxnPjxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik04NC43MjIsMC45M2gyLjA5NmwyLjA2Niw3LjM4aDAuMDNsMi4wNTEtNy4zOGgyLjAwOGwyLjA4MSw3LjM2NWgwLjAyOWwyLjA1Mi03LjM2NWgyLjA1MmwtMy4xMjksMTAuNzNIOTQuMDVsLTIuMDM2LTcuNjE2aC0wLjAzbC0yLjA1Miw3LjYxNmgtMi4wNTFMODQuNzIyLDAuOTN6Ii8+PHBhdGggZmlsbD0iI0ZGRkZGRiIgZD0iTTEwMC4wNTgsMC42NjRoMS44M3YxLjYyNGgtMS44M1YwLjY2NHogTTEwMC4wNTgsMy43MzRoMS44M3Y3LjkyNmgtMS44M1YzLjczNHoiLz48cGF0aCBmaWxsPSIjRkZGRkZGIiBkPSJNMTAzLjcxOCwzLjczNGgxLjgzdjEuMTgxaDAuMDQ0YzAuMDk5LTAuMTU4LDAuMjI0LTAuMzIyLDAuMzc3LTAuNDk1YzAuMTUyLTAuMTcyLDAuMzQyLTAuMzMsMC41NjctMC40NzJjMC4yMjctMC4xNDMsMC40OS0wLjI1OCwwLjc5LTAuMzQ3YzAuMy0wLjA4OCwwLjY0Ny0wLjEzMywxLjA0MS0wLjEzM2MwLjEzOCwwLDAuMjU2LDAsMC4zNTQsMGMwLjA5OSwwLDAuMTk3LDAuMDEsMC4yOTYsMC4wM3YxLjk3OGMtMC4wODktMC4wMi0wLjIyMi0wLjA0OS0wLjM5OC0wLjA4OGMtMC4xNzgtMC4wMzktMC40MTktMC4wNTktMC43MjQtMC4wNTljLTAuNTgxLDAtMS4wMjgsMC4wODYtMS4zNDMsMC4yNThjLTAuMzE1LDAuMTcyLTAuNTQ3LDAuMzcyLTAuNjk0LDAuNTk4Yy0wLjE0NywwLjIyNy0wLjIzNiwwLjQ2LTAuMjY2LDAuNzAxYy0wLjAyOSwwLjI0MS0wLjA0NCwwLjQzMS0wLjA0NCwwLjU2OHY0LjIwN2gtMS44M1YzLjczNHoiLz48cGF0aCBmaWxsPSIjRkZGRkZGIiBkPSJNMTE4LjE4Myw5LjI4NGMtMC4wMjksMC4xNjctMC4xMjUsMC4zOTgtMC4yODgsMC42OTRjLTAuMTYyLDAuMjk1LTAuNDA1LDAuNTg1LTAuNzMsMC44NzFjLTAuMzI0LDAuMjg2LTAuNzQsMC41MzctMS4yNDcsMC43NTNzLTEuMTI5LDAuMzI1LTEuODY3LDAuMzI1Yy0wLjcwOCwwLTEuMzQzLTAuMTA2LTEuOTA0LTAuMzE3Yy0wLjU2MS0wLjIxMS0xLjAzNS0wLjUwNC0xLjQyNC0wLjg3OHMtMC42ODctMC44MjItMC44OTQtMS4zNDNjLTAuMjA2LTAuNTIxLTAuMzEtMS4wOTItMC4zMS0xLjcxMmMwLTAuNTYxLDAuMDkxLTEuMDk0LDAuMjczLTEuNjAxYzAuMTgyLTAuNTA3LDAuNDU3LTAuOTU1LDAuODI2LTEuMzQzczAuODI5LTAuNjk2LDEuMzgtMC45MjNjMC41NTEtMC4yMjYsMS4xOS0wLjMzOSwxLjkxOS0wLjMzOWMwLjc0OCwwLjAxLDEuMzk3LDAuMTI4LDEuOTQ4LDAuMzU0YzAuNTUxLDAuMjI2LDEuMDA5LDAuNTQzLDEuMzczLDAuOTUyYzAuMzYzLDAuNDA5LDAuNjM3LDAuOTAzLDAuODE5LDEuNDgzYzAuMTgyLDAuNTgxLDAuMjcyLDEuMjMsMC4yNzIsMS45NDloLTYuOTUyYzAuMDIsMC4xMjgsMC4wNjIsMC4zMTMsMC4xMjYsMC41NTNjMC4wNjMsMC4yNDEsMC4xODUsMC40ODIsMC4zNjEsMC43MjNjMC4xNzgsMC4yNDEsMC40MzYsMC40NTgsMC43NzUsMC42NDljMC4zMzksMC4xOTIsMC43ODksMC4yOTgsMS4zNTEsMC4zMTdjMC41OCwwLDEuMDU1LTAuMTE1LDEuNDI0LTAuMzQ3YzAuMzY5LTAuMjMxLDAuNjIyLTAuNTA0LDAuNzYxLTAuODE5SDExOC4xODN6IE0xMTYuMzgyLDYuNzljLTAuMTM4LTAuNjY5LTAuNDI2LTEuMTQ0LTAuODYzLTEuNDI0Yy0wLjQzOC0wLjI4MS0wLjk4Ni0wLjQyMS0xLjY0Ni0wLjQyMWMtMC4yMzYsMC0wLjQ4LDAuMDI1LTAuNzMsMC4wNzRjLTAuMjUxLDAuMDQ5LTAuNDg3LDAuMTQzLTAuNzA5LDAuMjgxcy0wLjQyMSwwLjMyNS0wLjU5OCwwLjU2MWMtMC4xNzcsMC4yMzYtMC4zMSwwLjU0Ni0wLjM5OCwwLjkzSDExNi4zODJ6Ii8+PHBhdGggZmlsbD0iI0ZGRkZGRiIgZD0iTTExOS43MDIsMC45M2gxLjgzdjEwLjczaC0xLjgzVjAuOTN6Ii8+PHBhdGggZmlsbD0iI0ZGRkZGRiIgZD0iTTEzMS41NjksOS4yODRjLTAuMDI5LDAuMTY3LTAuMTI1LDAuMzk4LTAuMjg4LDAuNjk0Yy0wLjE2MiwwLjI5NS0wLjQwNSwwLjU4NS0wLjczLDAuODcxYy0wLjMyNCwwLjI4Ni0wLjc0LDAuNTM3LTEuMjQ3LDAuNzUzcy0xLjEyOSwwLjMyNS0xLjg2NywwLjMyNWMtMC43MDgsMC0xLjM0My0wLjEwNi0xLjkwNC0wLjMxN2MtMC41NjEtMC4yMTEtMS4wMzUtMC41MDQtMS40MjQtMC44NzhzLTAuNjg3LTAuODIyLTAuODk0LTEuMzQzYy0wLjIwNi0wLjUyMS0wLjMxLTEuMDkyLTAuMzEtMS43MTJjMC0wLjU2MSwwLjA5MS0xLjA5NCwwLjI3My0xLjYwMWMwLjE4Mi0wLjUwNywwLjQ1Ny0wLjk1NSwwLjgyNi0xLjM0M3MwLjgyOS0wLjY5NiwxLjM4LTAuOTIzYzAuNTUxLTAuMjI2LDEuMTktMC4zMzksMS45MTktMC4zMzljMC43NDgsMC4wMSwxLjM5NywwLjEyOCwxLjk0OCwwLjM1NGMwLjU1MSwwLjIyNiwxLjAwOSwwLjU0MywxLjM3MywwLjk1MmMwLjM2MywwLjQwOSwwLjYzNywwLjkwMywwLjgxOSwxLjQ4M2MwLjE4MiwwLjU4MSwwLjI3MiwxLjIzLDAuMjcyLDEuOTQ5aC02Ljk1MmMwLjAyLDAuMTI4LDAuMDYyLDAuMzEzLDAuMTI2LDAuNTUzYzAuMDYzLDAuMjQxLDAuMTg1LDAuNDgyLDAuMzYxLDAuNzIzYzAuMTc4LDAuMjQxLDAuNDM2LDAuNDU4LDAuNzc1LDAuNjQ5YzAuMzM5LDAuMTkyLDAuNzg5LDAuMjk4LDEuMzUxLDAuMzE3YzAuNTgsMCwxLjA1NS0wLjExNSwxLjQyNC0wLjM0N2MwLjM2OS0wLjIzMSwwLjYyMi0wLjUwNCwwLjc2MS0wLjgxOUgxMzEuNTY5eiBNMTI5Ljc2OSw2Ljc5Yy0wLjEzOC0wLjY2OS0wLjQyNi0xLjE0NC0wLjg2My0xLjQyNGMtMC40MzgtMC4yODEtMC45ODYtMC40MjEtMS42NDYtMC40MjFjLTAuMjM2LDAtMC40OCwwLjAyNS0wLjczLDAuMDc0Yy0wLjI1MSwwLjA0OS0wLjQ4NywwLjE0My0wLjcwOSwwLjI4MXMtMC40MjEsMC4zMjUtMC41OTgsMC41NjFjLTAuMTc3LDAuMjM2LTAuMzEsMC41NDYtMC4zOTgsMC45M0gxMjkuNzY5eiIvPjxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik0xMzguOTIsNi4xNjljLTAuMDY5LTAuMDg4LTAuMTY1LTAuMjA0LTAuMjg4LTAuMzQ3cy0wLjI4NS0wLjI4MS0wLjQ4Ny0wLjQxNGMtMC4yMDEtMC4xMzMtMC40NS0wLjI0Ni0wLjc0NS0wLjMzOWMtMC4yOTUtMC4wOTMtMC42NDktMC4xNC0xLjA2My0wLjE0Yy0wLjMzNSwwLTAuNjE1LDAuMDI5LTAuODQyLDAuMDg4Yy0wLjIyNiwwLjA1OS0wLjQwOCwwLjEzNS0wLjU0NiwwLjIyOWMtMC4xMzgsMC4wOTMtMC4yMzYsMC4xOTctMC4yOTUsMC4zMWMtMC4wNiwwLjExMy0wLjA4OSwwLjIyNC0wLjA4OSwwLjMzMmMwLDAuMTU3LDAuMDQ3LDAuMjgzLDAuMTQxLDAuMzc2YzAuMDkzLDAuMDk0LDAuMjIyLDAuMTcyLDAuMzg0LDAuMjM2czAuMzU2LDAuMTEzLDAuNTgzLDAuMTQ3YzAuMjI2LDAuMDM1LDAuNDc3LDAuMDcyLDAuNzUzLDAuMTExYzAuNTQxLDAuMDY5LDEuMDYzLDAuMTUsMS41NjQsMC4yNDRjMC41MDIsMC4wOTQsMC45NDQsMC4yMzEsMS4zMjgsMC40MTNjMC4zODQsMC4xODIsMC42ODgsMC40MjMsMC45MTUsMC43MjRjMC4yMjcsMC4zLDAuMzQsMC42OTYsMC4zNCwxLjE4OGMwLDAuMzg0LTAuMDY5LDAuNzE2LTAuMjA3LDAuOTk2Yy0wLjEzOCwwLjI4MS0wLjMxNywwLjUxNy0wLjUzOSwwLjcwOGMtMC4yMjEsMC4xOTItMC40NzIsMC4zNDctMC43NTIsMC40NjVjLTAuMjgxLDAuMTE4LTAuNTY4LDAuMjA5LTAuODY0LDAuMjczYy0wLjI5NSwwLjA2NC0wLjU4LDAuMTA1LTAuODU1LDAuMTI1Yy0wLjI3NSwwLjAyLTAuNTIxLDAuMDI5LTAuNzM4LDAuMDI5Yy0wLjY3OSwwLTEuMjUyLTAuMDYyLTEuNzItMC4xODVjLTAuNDY3LTAuMTIzLTAuODYxLTAuMjc4LTEuMTgxLTAuNDY1cy0wLjU4NS0wLjM5Ni0wLjc5Ny0wLjYyN2MtMC4yMTItMC4yMzEtMC40MDEtMC40NS0wLjU2OC0wLjY1N2wxLjU1LTAuOWMwLjE1NywwLjI1NiwwLjM0MiwwLjQ3MywwLjU1NCwwLjY0OWMwLjIxMSwwLjE3NywwLjQ0MiwwLjMxNywwLjY5MywwLjQyMWMwLjI1MSwwLjEwMywwLjUxNywwLjE3NywwLjc5NywwLjIyMWMwLjI4MSwwLjA0NCwwLjU2MywwLjA2NiwwLjg0OSwwLjA2NmMwLjI0NiwwLDAuNDgtMC4wMiwwLjcwMS0wLjA1OWMwLjIyMi0wLjAzOSwwLjQxOS0wLjA5OCwwLjU5MS0wLjE3N3MwLjMxLTAuMTgsMC40MTMtMC4zMDNzMC4xNTUtMC4yNzMsMC4xNTUtMC40NWMwLTAuMTQ3LTAuMDM1LTAuMjY4LTAuMTA0LTAuMzYyYy0wLjA2OS0wLjA5My0wLjE5MS0wLjE2OS0wLjM2OS0wLjIyOWMtMC4xNzctMC4wNTktMC40MjEtMC4xMTMtMC43My0wLjE2M2MtMC4zMS0wLjA0OS0wLjcwNi0wLjEwOC0xLjE4OC0wLjE3N2MtMC43NDgtMC4wOTktMS4zNTctMC4yMjktMS44My0wLjM5MWMtMC40NzItMC4xNjMtMC44NDEtMC4zNTQtMS4xMDYtMC41NzZjLTAuMjY2LTAuMjIyLTAuNDQ1LTAuNDY1LTAuNTM5LTAuNzMxcy0wLjE0MS0wLjU1MS0wLjE0MS0wLjg1NmMwLTAuMjA3LDAuMDUtMC40NTUsMC4xNDgtMC43NDZjMC4wOTgtMC4yOSwwLjI4NS0wLjU2NSwwLjU2MS0wLjgyNnMwLjY1Ni0wLjQ4NSwxLjE0NC0wLjY3MmMwLjQ4Ny0wLjE4NywxLjExNC0wLjI4LDEuODgyLTAuMjhjMC4yMjcsMCwwLjUxLDAuMDIsMC44NDksMC4wNTljMC4zNCwwLjA0LDAuNjk2LDAuMTIzLDEuMDcsMC4yNTFzMC43NSwwLjMxNywxLjEyOSwwLjU2OGMwLjM3OSwwLjI1LDAuNzE2LDAuNTgzLDEuMDEyLDAuOTk2TDEzOC45Miw2LjE2OXoiLz48cGF0aCBmaWxsPSIjRkZGRkZGIiBkPSJNMTQ3LjY1Nyw2LjE2OWMtMC4wNjktMC4wODgtMC4xNjUtMC4yMDQtMC4yODgtMC4zNDdzLTAuMjg1LTAuMjgxLTAuNDg3LTAuNDE0Yy0wLjIwMS0wLjEzMy0wLjQ1LTAuMjQ2LTAuNzQ1LTAuMzM5Yy0wLjI5NS0wLjA5My0wLjY0OS0wLjE0LTEuMDYzLTAuMTRjLTAuMzM1LDAtMC42MTUsMC4wMjktMC44NDIsMC4wODhjLTAuMjI2LDAuMDU5LTAuNDA4LDAuMTM1LTAuNTQ2LDAuMjI5Yy0wLjEzOCwwLjA5My0wLjIzNiwwLjE5Ny0wLjI5NSwwLjMxYy0wLjA2LDAuMTEzLTAuMDg5LDAuMjI0LTAuMDg5LDAuMzMyYzAsMC4xNTcsMC4wNDcsMC4yODMsMC4xNDEsMC4zNzZjMC4wOTMsMC4wOTQsMC4yMjIsMC4xNzIsMC4zODQsMC4yMzZzMC4zNTYsMC4xMTMsMC41ODMsMC4xNDdjMC4yMjYsMC4wMzUsMC40NzcsMC4wNzIsMC43NTMsMC4xMTFjMC41NDEsMC4wNjksMS4wNjMsMC4xNSwxLjU2NCwwLjI0NGMwLjUwMiwwLjA5NCwwLjk0NCwwLjIzMSwxLjMyOCwwLjQxM2MwLjM4NCwwLjE4MiwwLjY4OCwwLjQyMywwLjkxNSwwLjcyNGMwLjIyNywwLjMsMC4zNCwwLjY5NiwwLjM0LDEuMTg4YzAsMC4zODQtMC4wNjksMC43MTYtMC4yMDcsMC45OTZjLTAuMTM4LDAuMjgxLTAuMzE3LDAuNTE3LTAuNTM5LDAuNzA4Yy0wLjIyMSwwLjE5Mi0wLjQ3MiwwLjM0Ny0wLjc1MiwwLjQ2NWMtMC4yODEsMC4xMTgtMC41NjgsMC4yMDktMC44NjQsMC4yNzNjLTAuMjk1LDAuMDY0LTAuNTgsMC4xMDUtMC44NTUsMC4xMjVjLTAuMjc1LDAuMDItMC41MjEsMC4wMjktMC43MzgsMC4wMjljLTAuNjc5LDAtMS4yNTItMC4wNjItMS43Mi0wLjE4NWMtMC40NjctMC4xMjMtMC44NjEtMC4yNzgtMS4xODEtMC40NjVzLTAuNTg1LTAuMzk2LTAuNzk3LTAuNjI3Yy0wLjIxMi0wLjIzMS0wLjQwMS0wLjQ1LTAuNTY4LTAuNjU3bDEuNTUtMC45YzAuMTU3LDAuMjU2LDAuMzQyLDAuNDczLDAuNTU0LDAuNjQ5YzAuMjExLDAuMTc3LDAuNDQyLDAuMzE3LDAuNjkzLDAuNDIxYzAuMjUxLDAuMTAzLDAuNTE3LDAuMTc3LDAuNzk3LDAuMjIxYzAuMjgxLDAuMDQ0LDAuNTYzLDAuMDY2LDAuODQ5LDAuMDY2YzAuMjQ2LDAsMC40OC0wLjAyLDAuNzAxLTAuMDU5YzAuMjIyLTAuMDM5LDAuNDE5LTAuMDk4LDAuNTkxLTAuMTc3czAuMzEtMC4xOCwwLjQxMy0wLjMwM3MwLjE1NS0wLjI3MywwLjE1NS0wLjQ1YzAtMC4xNDctMC4wMzUtMC4yNjgtMC4xMDQtMC4zNjJjLTAuMDY5LTAuMDkzLTAuMTkxLTAuMTY5LTAuMzY5LTAuMjI5Yy0wLjE3Ny0wLjA1OS0wLjQyMS0wLjExMy0wLjczLTAuMTYzYy0wLjMxLTAuMDQ5LTAuNzA2LTAuMTA4LTEuMTg4LTAuMTc3Yy0wLjc0OC0wLjA5OS0xLjM1Ny0wLjIyOS0xLjgzLTAuMzkxYy0wLjQ3Mi0wLjE2My0wLjg0MS0wLjM1NC0xLjEwNi0wLjU3NmMtMC4yNjYtMC4yMjItMC40NDUtMC40NjUtMC41MzktMC43MzFzLTAuMTQxLTAuNTUxLTAuMTQxLTAuODU2YzAtMC4yMDcsMC4wNS0wLjQ1NSwwLjE0OC0wLjc0NmMwLjA5OC0wLjI5LDAuMjg1LTAuNTY1LDAuNTYxLTAuODI2czAuNjU2LTAuNDg1LDEuMTQ0LTAuNjcyYzAuNDg3LTAuMTg3LDEuMTE0LTAuMjgsMS44ODItMC4yOGMwLjIyNywwLDAuNTEsMC4wMiwwLjg0OSwwLjA1OWMwLjM0LDAuMDQsMC42OTYsMC4xMjMsMS4wNywwLjI1MXMwLjc1LDAuMzE3LDEuMTI5LDAuNTY4YzAuMzc5LDAuMjUsMC43MTYsMC41ODMsMS4wMTIsMC45OTZMMTQ3LjY1Nyw2LjE2OXoiLz48L2c+PC9zdmc+",
      Position = { 131, 7 },
      Size = { 145, 11 },
    },
  }
--[[
    {
      Type = "Label",
      Text = "Mode",
      TextSize = 10,
      HTextAlign = "Right",
      Color = LtGrayText,
      Position = { 8, 220 },
      Size = { 41, 16 },
    },
    {
      Type = "Label",
      Text = "Unit/IP",
      TextSize = 10,
      HTextAlign = "Right",
      Color = LtGrayText,
      Position = { 8, 239 },
      Size = { 41, 16 },
    },
    {
      Type = "Label",
      Text = "NIC",
      TextSize = 10,
      HTextAlign = "Right",
      Color = LtGrayText,
      Position = { 8, 258 },
      Size = { 41, 16 },
    },
]]

  local mleg={t= {0,-9,-18,-30,-60},y={114,123,132,147,166}}
  local SetupBoxes = {PY={27,69,158},SY={42,184,47},SW={0,0,1},R={0,0,3}}
  local ChBoxes = {PY={26},SY={227}}
  local SetupLabels = {
    Pos={X={3,3,3,4,4,4,6,717},Y={27,38,68,79,98,117,158,8}},
    Size={X={30,50,78,30,30,30,30,51},Y={11,11,11,16,16,16,9,10}},
    Text={ "Status","Access Point","Connection Setup","Mode","Unit/IP","NIC","Details","Plugin v"..PluginInfo.Version },
    FSize={10,9,10,9,9,9,9,9},Bold={true,false,true,false,false,false,true,true},
    Just={"Left","Left","Left","Right","Right","Right","Left","Right"},}

  for i=1,#SetupBoxes.PY do
    table.insert(graphics,{
      Type = "GroupBox",
      Fill = i==1 and Color.GlobalBG or Color.BChBG,
      StrokeColor = Color.LtGray,
      StrokeWidth = SetupBoxes.SW[i],
      CornerRadius = SetupBoxes.R[i],
      Position = { i==3 and 3 or 0,SetupBoxes.PY[i] },
      Size = { i==3 and 125 or 131, SetupBoxes.SY[i] }
    })
  end

  for i=1,#SetupLabels.Pos.X do
    table.insert(graphics,{
      Type = "Label",
      Text = SetupLabels.Text[i],
      TextSize = SetupLabels.FSize[i],
      HTextAlign = SetupLabels.Just[i],
      IsBold = SetupLabels.Bold[i],
      Color = Color.LtGray,
      Position = { SetupLabels.Pos.X[i], SetupLabels.Pos.Y[i] },
      Size = { SetupLabels.Size.X[i], SetupLabels.Size.Y[i] },
    })
  end
  for i=1,8 do
    for k,PosY in pairs(ChBoxes.PY) do
      table.insert(graphics,{
        Type = "GroupBox",
        Fill = k>4 and Color.BChBG or Color.TChBG,
        StrokeWidth = 1,
        StrokeColor = Color.ChStr,
        Position = { tonumber(i>4 and 51 or 50)+81*i, PosY },
        Size = { 82, ChBoxes.SY[k] }
      })
    end
    table.insert(graphics,{
      Type = "Label",
      Text = tostring(i),
      TextSize = 16,
      IsBold = true,
      Color = Color.LtGray,
      Position = { tonumber(i>4 and 52 or 51)+81*i, 29 },
      Size = { 79, 16 },
    })
    table.insert(graphics, {
      Type = "Label",
      Text = "Audio",
      TextSize = 10,
      Color = TextColor,
      IsBold = true,
      Position = { tonumber(i>4 and 58 or 57)+82*i, 175 },
      Size = { 30, 9 }
    })
    table.insert(graphics, {
      Type = "Label",
      Text = "RF",
      IsBold = true,
      Color = TextColor,
      Position = { tonumber(i>4 and 97 or 96)+82*i, 175 },
      Size = { 28, 9 }
    })
    for j=1,5 do
      table.insert(graphics, {
        Type = "Label",
        Text = tostring(mleg.t[j]),
        TextSize = 9.5,
        Color = Color.Combo,
        IsBold = true,
        HTextAlign = "Right",
        Position = { tonumber(i>4 and 53 or 52)+81*i, mleg.y[j] },
        Size = { 18, 8 }
      })
    end
  end
  return layout, graphics
end

function GetComponents(props)
  return {{Name = "nic_storage", Type = "scriptable_controls", Properties = {
  ["config"] = '[{"Name":"Core","ControlType":"Text","ButtonType":"Momentary","TextType":"TextBox","IndicatorType":"Led","ControlUnit":"dB","PinStyle":"None","Min":-100.0,"Max":12.0,"Count":1.0},{"Name":"Emul","ControlType":"Text","ButtonType":"Momentary","TextType":"TextBox","IndicatorType":"Led","ControlUnit":"dB","PinStyle":"None","Min":-100.0,"Max":12.0,"Count":1.0},{"Name":"lastIP","ControlType":"Text","ButtonType":"Momentary","TextType":"TextBox","IndicatorType":"Led","ControlUnit":"dB","PinStyle":"None","Min":-100.0,"Max":12.0,"Count":1.0},{"Name":"lastname","ControlType":"Text","ButtonType":"Momentary","TextType":"TextBox","IndicatorType":"Led","ControlUnit":"dB","PinStyle":"None","Min":-100.0,"Max":12.0,"Count":1.0}]'}}}
end

if Controls and tonumber(string.match(_VERSION,"Lua (.+)"))<5.3 then
  Controls.aptstatus.Value = 2
  Controls.aptstatus.String = "Use Q-Sys 5.3+ !!"
elseif Controls then
-- Shure MXWAPT Control
-- Original code by John Britton
-- All updates by Joe Peavey

-- Subtract 30 from any error line numbers for actual error line
discovery = UdpSocket.New()
mxdQuery = UdpSocket.New()
APT = TcpSocket.New()
APT.ReadTimeout = 0
APT.WriteTimeout = 0
APT.ReconnectTimeout = 5
local IPTimer = Timer.New()
local Flash = {
  ID = {
    Toggle = Timer.New(),
    Delay = Timer.New(),
    State = false
    },
  Preview = {
    Toggle = Timer.New(),
    State = false
    }
  }
local NICTimer = Timer.New()
local TXOFFTimer = {}
local GainTimer = {}
local Discovered = {}
local IPLookup = {}
local resolvedIP = {}
local PresetNames-- = {}
local Waits = {}
local Faders = {}
local Details = {}

-- Constants
e = System.IsEmulating
--local nic_storage = Controls["nic.storage."..tostring(e and "Emul" or "Core")] -- Use this line when running in Scriptable Controls
local lastDev = { ip = nic_storage.lastIP, name = nic_storage.lastname }
local nic_storage = nic_storage[tostring(e and "Emul" or "Core")]
local ippattern = "[012]?%d?%d+.[012]?%d?%d+.[012]?%d?%d+.[012]?%d?%d"
local discTimeout = 6
local ShureQuery = "\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x06_shure\x04_tcp\x05local\x00\x00\x0c\x00\x01"
local Colors = {"RED", "GREEN", "BLUE", "PINK", "PURPLE", "YELLOW", "ORANGE", "WHITE"}
local ColorPreview = {
  Bright = {RED="FF0000", GREEN="00FC61", BLUE="61C6FF", PINK="FF98FF", PURPLE="C1ACFF", YELLOW="FFFF00", ORANGE="FF9F38", WHITE="FFFFFF"},
  Dim =    {RED="E90000", GREEN="00E658", BLUE="0098ED", PINK="EDA8ED", PURPLE="A08ED4", YELLOW="ECEC00", ORANGE="E79032", WHITE="E6E6E6"} }
local mTypes = {["0"]= "",["1"]= "Bodypack",["2"]="Handheld",["6"]="Boundary",["8"]="Gooseneck"}
local Behavior = {"ON", "OFF", "FLASHING"}
local ShureQueryIP = "239.255.254.253"
local mDNSIP = "224.0.0.251"
local ShureQueryPort = 8427
local status_state = { OK = 0, COMPROMISED = 1, FAULT = 2, NOTPRESENT = 3, MISSING = 4, INITIALIZING = 5 }


-- Alias Tables
RespToCtl = {
  TX_TYPE = "transmitter_type", 
  TX_STATUS = "tx_status",
  BATT_CHARGE = "battery_charge",
  BATT_TIME_TO_FULL = "battery_run_time",
  BATT_RUN_TIME =     "battery_run_time",
  AUDIO_LEVEL = "audio_level",
  MUTE = "mute",
  BATT_TIME_TO_FULL = "",
  METER_RATE = "",
  FLASH = "identify"
}
-- Control Aliases
status = Controls.aptstatus
identify = Controls.identify
connect = Controls.connect
CH_NUM = Controls.channel_num
channel_name = Controls.channel_name
mode = Controls.mode
nic = Controls.nic
apt = Controls.apt
aptid = Controls.aptid
ip = Controls.ip
details = Controls.details
accesspts = Controls.apt
mute = Controls.mute

-- Timers
DiscoverTimer = Timer.New()

-- Tables
sd_state = {}

-- Control Aliases
-- Helper Functions
function DebugFormat(string,hex) -- Format strings containing non-printable characters so we can see what they are
  local visual = ""
  local format = hex~=nil and "\\x%02x" or "[%02X]"
  for i=1,#string do
    local byte = string:sub(i,i)
    if string.byte(byte) >= 33 and string.byte(byte) <= 126 or string.byte(byte)==0x20 then
      visual = visual..byte
    else
      visual = visual..string.format(format,string.byte(byte))
    end
  end
  return visual
end

local function find(a,t) local f = false for _,_a in pairs(t) do f=a==_a if f then break end end return f end
function GetNICIP(ctl) return string.match(ctl.String,ippattern) end
function ParseChName(str) return string.match(str,"{(.-)%s+}") end

function Status( msg, state )
  status.Value = status_state[state]
  status.String = msg
  if DebugDesc or (status_state[state]>0) then print( msg ) end
end

function round(num)
  if num >= -0.5 then return math.floor(num+.5) 
  else return math.ceil(num-.5) end
end

-------------------------------------------------------------------
-- Discovery and Connect Functions
function SourceNIC()
  iptable = Qlib.networkinterfaces()
  local list = {}
  for i,nicid in pairs(iptable) do
    local name,ipa = nicid.Interface, nicid.Address
    if not string.find(name,"Loopback") then
      table.insert(list,tostring(e and ipa or name).." - "..tostring(e and name or ipa))
      --print(tostring(e and ipa or name).." - "..tostring(e and name or ipa))
    end
  end
  if #list==1 then
    LocalIP=GetNICIP{String=list[1]}
    nic.String=list[1]
    nic.Choices = {list[1]}
    nic_storage.String = list[1]
    if not find(nic.String,list) then print("Single NIC AssignIP()") AssignIP() end
  elseif #list>1 then
    local validnic = find(nic_storage.String,list)
    --print("Chosen nic valid:",validnic)
    if nic_storage.String ~="" and validnic then
      nic.String = nic_storage.String
    end
    if not validnic and e then
      nic.String = "Choose NIC..."
      print("No valid NIC Found. Turning off Connect Button")
      connect.Boolean=false
      nic_storage.String=""
    end
    nic.Choices = list
  else
    nic.String="No NICs found"
    nic_storage.String = ""
    LocalIP = ""
    Status( "No Network Interfaces Found", "FAULT" )
  end
end

function AssignIP()
  if not string.find(nic.String,"Choose NIC") then
    LocalIP=GetNICIP(nic)
    print("Using Local IP: ",LocalIP)
    nic_storage.String = nic.String
  end
end

--* Bonjour Bits on Core - Adjusts for 5.4/6.0 method change
local ResolveBonjourName
local function SetRBN()
  local sixoh = Qlib.gethostbyname~=nil
  local RBN = { "140000003500000007001117000000c6014000c741c003e48180000682400007c24004248280004102010080020000c142010000030004418301005d428304840200016c030000ca4183836c4300008c03c20300040003a443800180038006c0038004a44300012600800009000000040654696d657204044e657704036f730408746d706e616d6504146e6f68757020646e732d7364202d47207634200404203e2004032026040d4576656e7448616e646c65720406537461727401000000000002000000001a0000002c0000000000085400000006404000078040004500800081c000002480800108000080060040000cc041008100020024008101088000830840808208000082060040000c404200850080002440800106004100224000001e4001800680420041c00200864041005d808000868041002440800106004300074043004500800024400001060043000780430041c0030024000101c6404400c780c4010601410041c10400e480800108c00088220000001e000980c6004100dc0080015f00c5011e000880c5000001cc40c501e4400001c6004400c6c080015f80c5011e000180c5008002c6c00002060144005f0081011e000680c60044000bc10000450180020a41818b450100034c81c402c1410600648180010a41018c450180030a41018dc8008101c50080020601440008018101c50000045f80c5011e800180c5000004e44080001ec00080c680420001c1060045010003e4408001260080001c000000040566696c650403696f04056f70656e040272040472657304046d73670405636f646504057265616404032a610406636c6f736504067072696e7404084572726f723a2004036f73040772656d6f7665040865786563757465041d706772657020646e732d7364207c207861726773206b696c6c202d39040c63616e64696461746549500407737472696e6704066d6174636814365b3031325d3f25643f25642b252e5b3031325d3f25643f25642b252e5b3031325d3f25643f25642b252e5b3031325d3f25643f2564130000000000000000040553746f700004054e616d65040844656661756c74040b282e2b292e6c6f63616c04064d6f64656c04114950206e6f74207265736f6c766564210900000000000108010701030104010101000102010500000000540000001b0000001b0000001b0000001b0000001b0000001b0000001c0000001c0000001c0000001c0000001c0000001c0000001c0000001d0000001d0000001d0000001d0000001e0000001e0000001e0000001e0000001e0000001e0000001e0000001e0000001e0000001f0000001f0000001f0000001f000000200000002000000020000000200000002100000021000000210000002100000021000000210000002200000022000000220000002200000022000000220000002300000023000000230000002400000024000000240000002400000024000000240000002400000024000000240000002500000025000000250000002500000025000000250000002500000025000000250000002500000025000000250000002600000026000000260000002700000027000000270000002700000027000000280000002a0000002a0000002a0000002a0000002c000000030000000873756363657373220000005400000005657865632200000054000000077369676e616c220000005400000009000000055f454e5604746d700a6b696c6c74696d65720a446973635461626c650a49504c755461626c6509667269656e646c79056e616d65066d6f64656c106d616b65646973706c61794c697374002e0000003200000003000c12000000c100000006414000078140024001000081c10000c50180005dc1810224010101c6014100000200024642410081820100c00280029dc20205c002000364028001e44100002600800007000000040104036f730408657865637574650404203e2004076173736572740409746f737472696e67041145786563757465204661696c65643a20020000000000010800000000120000002f00000030000000300000003000000030000000300000003000000030000000310000003100000031000000310000003100000031000000310000003100000031000000320000000700000008636d646c696e650000000012000000087061747465726e0000000012000000086361707475726500000000120000000872737472696e6701000000120000000873756363657373080000001200000005657865630800000012000000077369676e616c080000001200000002000000055f454e5604746d7017000000150000001500000015000000160000001600000016000000170000001700000017000000170000001700000017000000180000002c0000002c00000032000000330000003300000033000000340000003400000034000000350000000e000000056e616d65000000001700000009667269656e646c790000000017000000066d6f64656c00000000170000000a446973635461626c6500000000170000000a49504c755461626c650000000017000000106d616b65646973706c61794c6973740000000017000000096b696c6c74696d6500000000170000000a6b696c6c74696d6572030000001700000004746d70060000001700000008636d646c696e650c00000017000000087061747465726e0d0000001700000008636170747572650d000000170000000872737472696e670d0000001700000004436d64100000001700000001000000055f454e56",
    "400000004200000001000308000000460040004740c00080000000648000014780c00047c0c0006600000126008000040000000405516c6962040e676574686f737462796e616d65040a6164647265737365731301000000000000000100000000000000000008000000410000004100000041000000410000004100000041000000410000004200000001000000056e616d65000000000800000001000000055f454e56"}
  local tmpFn = load(bitstring.fromhexstream("1b4c7561530019930d0a1a0a04080408087856000000000000000000000028774001023d"..RBN[sixoh and 2 or 1]))
  if sixoh then
    ResolveBonjourName = function(name,friendly,model,DiscTable,IPLuTable,makedisplayList,killtime)
      local candidateIP = tmpFn(name)
      if DiscTable[candidateIP]==nil or IPLuTable[friendly]~=candidateIP then
         DiscTable[candidateIP]={ Name = friendly, Default = name:match("(.+).local"), Model = model}
         IPLuTable[friendly] = candidateIP
         if makedisplayList~=nil then makedisplayList() end
      end
    end
  else
    ResolveBonjourName=tmpFn
  end
end
if not e then 
  SetRBN() 
end

function mDNSBrowse()
  if not e then
    mDNS = BonjourBrowser.New()
    mDNS.EventHandler = function( record ) -- record contents Domain=local. Type=_shure._tcp. NetIf=2 Added=true Name=(friendly name)
      if record.Type=="_shure._tcp." then
        --[[for k,v in pairs(record) do
          if type(v) == "table" then
            for a,b in pairs(v) do
              print("  --"..k,a,b)
            end
          else
            print("  "..k,v)
          end
        end]]
        if record.Added then
          local r = BonjourResolver.New()
          r.EventHandler = function( rc )
            local model = rc.Values.model
            if rc.Values.model~=nil then
              if model:find("^MXW") then
                --ResolveBonjourName(     name,                     friendly,                            model,DiscTable, IPLuTable,makedisplayList, killtime)
                ResolveBonjourName(string.match(rc.Target,"(.+)%."),string.match(rc.Name,"(.+)%._shure"),model,Discovered,IPLookup,MakeDisplayList,.06)
              end
            end
          end
          r:Resolve( record )
        else
          DeleteBonjourEntry(record.Name)
        end
      end
    end   
    mDNS:Start( "_shure._tcp", 0, "local" )
  end
end

function DeleteBonjourEntry(friendly)
  if IPLookup[friendly]~=nil then
    local ipa = IPLookup[friendly]
    if Discovered[ipa]~=nil then
      if Discovered[ipa].Name==friendly then
        Discovered[ipa] = nil
        IPLookup[friendly] = nil
        MakeDisplayList()
      end
    end
  end
end

function ExpiredDiscovery(ipa)
  if apt.String~="None" then
    if Discovered[ipa]==nil then
      apt.String="None"
    else
      local name = Discovered[ipa].Name
      Discovered[ipa].Timer:Stop()
      Discovered[ipa] = nil
      IPLookup[name] = nil
    end
  end
end

function SendShureQuery() mxdQuery:Send(mDNSIP,5353,ShureQuery) end

-- Discovery Parsing into Discovery table
discovery.EventHandler = function(mxwapi, packet)
  if string.find(packet.Data,"acn%-uacn=MXW%w%w%w") then
    if e then SendShureQuery() end
    local ipa = packet.Address
    if Discovered[ipa]==nil then
      Discovered[ipa]={ Timer = Timer.New() }
    end
  end
end

-- mDNS Receive
function ParseName(data)
  local start,lenpos = string.find(data,"_shure\x04_tcp\x05local\x00\x00\x0c\x00\x01\x00\x00\x11\x94\x00(.)")
  local len = string.byte(string.sub(data,lenpos,lenpos))-2
  return string.sub(data,lenpos+2,lenpos+len), data:match("\x11\x94..\rmodel=(MXW%w+)"), data:match("\x0e([%w%-]-)\xc0\x18\x00\x01\x80\x01\x00\x00\x00x\x00")
end

function MakeDisplayList()
  DisplayList = {APT = {"None"}, NCS = {"None"} }
  for key,item in pairs(Discovered) do
    if item.Name~=nil then
      if string.find(item.Model,"^MXWAPT") then
        table.insert(DisplayList.APT,item.Name)
      elseif string.find(item.Model,"^MXWNCS") then
        table.insert(DisplayList.NCS,item.Name)
      end
    end
  end
  apt.Choices = DisplayList.APT
  aptid.EventHandler = function()
    APT:Write( "< SET FLASH O"..tostring(aptid.Boolean and "N" or "FF").." >" )
  end
end

mxdQuery.EventHandler = function(mxwapi, packet)
  local resp = packet.Data
  if resp:find("MXW%a%a%a%d?") and resp:sub(2,3)=="\x00\x84" and not resp:find("_netaudio") then -- filter models and mDNS Response packets
    if string.find(resp,"\x00\x0c.-\xc0\x0c\xc0%)") then
      local name, model, default = ParseName(resp)
      if Discovered[packet.Address]==nil then Discovered[packet.Address]={ Timer = Timer.New() } end
      if name~= nil and Discovered[packet.Address] ~= nil then
        if Discovered[packet.Address].Name ~= name then
          Discovered[packet.Address].Name = name
          Discovered[packet.Address].Model = model
          Discovered[packet.Address].Default = default
          IPLookup[name] = packet.Address
          if status.Value==5 then Status("Choose Unit", "OK" ) end
          MakeDisplayList()
        end
        if APT.IsConnected and name == lastDev.name then
          BuildDetails()
        end
      else
        print("Shure Discovery packet not yet parsed",packet.Address,name)
        print(DebugFormat(packet.Data,true))
      end
    else
      --print("Not parsed",DebugFormat(packet.Data))
    end
  end
end

function APTHandler()
  if mode.String=="Discovery" then
    if apt.String~="None" and apt.String~=lastDev.name.String then
      ip.String = IPLookup[apt.String]
      APT:Disconnect()
    else
      connect.Boolean = false
      ip.String = ""
      Details = {}
    end
    Connect()
  end
end

function HideDiscControls(bool)
  if e then nic.IsDisabled=bool else nic.IsDisabled=true end
  apt.IsInvisible = bool
  ip.IsInvisible = not bool
end

-- Initiate Discovery of Shure MXWAPT
function DiscoverDevices()
  if mode.String == "Manual" then
    HideDiscControls(true)
  else -- Discovery
    HideDiscControls(false)
    MakeDisplayList()
    if e then
      discovery:Open( GetNICIP(nic), ShureQueryPort ) -- IP address/port are not needed
      discovery:JoinMulticast(ShureQueryIP) -- Sends a multicast join report for the Shure multicast address
      mxdQuery:Open( GetNICIP(nic), 5353 ) -- IP address/port are not needed
      mxdQuery:JoinMulticast(mDNSIP) -- Sends a multicast join report for the Shure multicast address
    else
      mDNSBrowse()
    end
  end
end

function AssembleDetails()
  local detailstr = {}
  if Details.Name ~= nil then table.insert(detailstr,"Name: "..Details.Name) end
  if Details.Model ~= nil then table.insert(detailstr,"Model: "..Details.Model) end
  if Details.IP ~= nil then table.insert(detailstr,"Control IP: "..Details.IP) end
  if Details.AudIP ~= nil then table.insert(detailstr,"Audio IP: "..Details.AudIP) end
  if Details.Service ~= nil then table.insert(detailstr,"Service Name: "..Details.Service) end
  details.String = table.concat(detailstr,"\r")
  lastDev.ip.String = Details.IP
  lastDev.name.String = Details.Name
end

function BuildDetails()
  if Discovered[ip.String] ~= nil then
    Details = { Model = Discovered[ip.String].Model, IP = ip.String, Service = Discovered[ip.String].Default, Name = Discovered[ip.String].Name }
    AssembleDetails()
  end
end

-- End Discovery and Connect Functions


--[[ Device Control 
]]--------------------------------------------------------------
local CH_COUNT = 8
dvc_ch_available = {}
dvc_ch_controls = {
  "transmitter_type", "tx_status", "audio_level", "battery_charge", --"battery_run_time", 
  "mute", "identify", "channel_name", "rfmeter_1", "rfmeter_2", "rfmeter_3", "rfmeter_4"
}

function StopTimers()
  for i=1,8 do TXOFFTimer[i].Timer:Stop() end
end

function dvc_ch_controls_disable( ch, b_disable )
  for i,v in ipairs( dvc_ch_controls ) do
    Controls[v][ch].IsDisabled = b_disable
  end
  if b_disable then
    for _,ctl in ipairs{"audio_level", "battery_charge","rfmeter_1", "rfmeter_2", "rfmeter_3", "rfmeter_4"} do
      Controls[ctl][ch].Value = 0
    end
  end
  Controls.tx_status[ch].String = ""
  Controls.channel_name[ch].String = ""
end

function Connect()
  if connect.Boolean and not string.find(ip.String,ippattern) then
    Status( "Invalid Device IP Address", "FAULT" )
    connect.Boolean = false
  end
  if connect.Boolean and not APT.IsConnected then
    Status( "Connecting...", "INITIALIZING" )
    local ipa = mode.String =="Manual" and ip.String or IPLookup[apt.String]
    if ipa~=nil then APT:Connect(ipa, 2202 )
    else connect.Boolean = false end
  elseif APT.IsConnected then
    StopTimers()
    if not string.find(status.String,"Disconnected") then Status( "Disconnected", "OK",true ) end
    APT:Disconnect() -- there is no disconnected event
  end
end
connect.EventHandler = Connect
apt.EventHandler = Connect

APT.EventHandler = function( sock, evt, err )
  if evt == TcpSocket.Events.Connected then
    StartupFlag = false
    Status( "Connected", "OK" , os.date())
    dvc_start()
    BuildDetails()
  elseif evt == TcpSocket.Events.Reconnect then
    Status( "Reconnecting...", "INITIALIZING"  )
  -- data
  elseif evt == TcpSocket.Events.Data then
    local msg = APT:ReadLine( TcpSocket.EOL.Custom, ">" )
    while msg do
      --print( msg )
      tokens = {}
      for i in string.gmatch( msg, "%S+" ) do
        table.insert( tokens, i )
      end
      dvc_decode( tokens, msg )
      msg = APT:ReadLine( TcpSocket.EOL.Custom, ">" )
    end
  elseif evt == TcpSocket.Events.Closed then
    Status( "Connection closed by remote", "FAULT" )
  elseif evt == TcpSocket.Events.Error then
    Status( "Connection closed due to error: "..err, "FAULT" )
  elseif evt == TcpSocket.Events.Timeout then
    Status( "Connection closed due to timeout", "FAULT" )
  end
end

function StartInit()
  mode.Choices = {"Discovery","Manual"}
  if mode.String=="" then mode.String="Discovery" end
  mode.EventHandler = DiscoverDevices

  -- Copy last settings if found to apt and ip textboxes
  if lastDev.ip.String == "" and lastDev.name.String == "" and apt.String == "" and mode.String=="Discovery" then
    apt.String="None"
    ip.String = ""
    Details = {}
  elseif lastDev.ip ~= "" and connect.Boolean then
    ip.String = lastDev.ip.String
    if mode.String=="Discovery" then
      IPLookup[lastDev.name.String] = lastDev.ip.String
      apt.String = lastDev.name.String
    end
  end
  apt.EventHandler = APTHandler
  
  for ch=1,CH_COUNT do
    dvc_ch_available[ch] = false
    dvc_ch_controls_disable( ch, true )
  end

  for i=1,8 do
    table.insert(TXOFFTimer, {Timer = Timer.New(),index = i } )
    TXOFFTimer[i].Timer.EventHandler = function()
      dvc_get( i, "BATT_TIME_TO_FULL" )
      dvc_get( i, "CHAN_NAME" )
    end
  end

  -- Get Local IP Addresses and Check saved selection
  nic.IsDisabled = not e
  if e then
    SourceNIC()
    NICTimer.EventHandler = SourceNIC
    NICTimer:Start(15)
    nic.EventHandler = function()
      discovery:Close()
      mxdQuery:Close()
      AssignIP()
      DiscoverDevices()
    end
  else
    nic.String = "not applicable"
  end
  DiscoverDevices()
  aptid.Boolean = false
  connect.EventHandler = Connect
  Connect()
end

function dvc_get( ch, key ) APT:Write( "< GET "..ch.." "..key.." >" ) end
function dvc_set( ch, key, value ) APT:Write( "< SET "..ch.." "..key.." "..value.." >" ) end

function dvc_led_update( ch )
  local ls
  if Controls[RespToCtl.MUTE][ch].Boolean then ls = "ON OF" else ls = "OF ON" end
  dvc_set( ch, "LED_STATUS", ls )
end

RF_1, RF_2, RF_3, RF_4 = Controls.rfmeter_1, Controls.rfmeter_2, Controls.rfmeter_3, Controls.rfmeter_4
RFBars = { RF_1, RF_2, RF_3, RF_4 }
function RFBarUpdate(ch, value)
  local ranges = {51,54,58,64}
  for k,bar in ipairs(RFBars) do
    bar[ch].Boolean = tonumber(value) >= tonumber(ranges[k])
  end
end

function dvc_decode( msg, raw )
  if msg[2] == "REP" then
    if msg[3] == "SEC" then
      local msgtmp = {}
      for i=1,#msg-1 do
        table.insert(msgtmp,msg[i>2 and i+1 or i])
      end
      msg = msgtmp
    end
    local ch = tonumber( msg[3] )
    -- channel message
    if ch ~= nil then
      local key = msg[4]
      local value = msg[5]
      --print( ch, key, value )
      -- Channel/Mic availability change
      if key == "TX_AVAILABLE" then
        dvc_ch_available[ch] = value == "YES"
        
        -- channel became available, initialize
        if dvc_ch_available[ch] then
          -- enable GUI controls
          dvc_ch_controls_disable( ch, false ) -----------------------------------
          TXOFFTimer[ch].Timer:Stop()
          -- get current values
          dvc_get( ch, "TX_TYPE" ) 
          dvc_get( ch, "TX_STATUS" ) 
          dvc_get( ch, "BATT_CHARGE" )
          dvc_get( ch, "BATT_RUN_TIME" )
          dvc_get( ch, "BATT_TIME_TO_FULL" )
          dvc_get( ch, "CHAN_NAME" )
          dvc_set( ch, "METER_RATE", "200" )
          dvc_led_update( ch )
        -- channel not available
        else
          TXOFFTimer[ch].Timer:Start(5)
          dvc_set( ch, "METER_RATE", "0" ) -- necessary?
          -- disable GUI controls
          for i,v in ipairs( dvc_ch_controls ) do
            if v~="channel_name" then
              Controls[v][ch].IsDisabled = true
            end
          end
          for _,ctl in ipairs{"audio_level", "battery_charge","rfmeter_1", "rfmeter_2", "rfmeter_3", "rfmeter_4"} do
            Controls[ctl][ch].Value = 0
          end
          Controls.tx_status[ch].String = ""
        end
      -- Mic type update
      elseif key == "TX_TYPE" then
        wtypeid = value:match("MXW(%d)") or "0"
        --wtypeid = wtypeid~=nil and wtypeid or "0"
        Controls[RespToCtl[key]][ch].String = mTypes[wtypeid]
      -- Mic status update
      elseif key == "TX_STATUS" then
        Controls[RespToCtl[key]][ch].String = value
        if value ~= "ACTIVE" and value ~= "MUTE" then
          Controls[RespToCtl.AUDIO_LEVEL][ch].IsDisabled = true
          Controls[RespToCtl.AUDIO_LEVEL][ch].Value = 0
          for k,bar in ipairs(RFBars) do bar[ch].IsDisabled = true end
          RFBarUpdate(ch, 0)
        else
          Controls[RespToCtl.AUDIO_LEVEL][ch].IsDisabled = false
        end
      -- Mic battery update
      elseif key == "BATT_CHARGE" then
        local charge = tonumber( value )
        local ctl = Controls[RespToCtl[key]][ch]
        if charge <= 100 then
          ctl.Value = charge -- 0-100 or 255
          ctl.IsDisabled = false
        else
          ctl.Value = 0 -- ?
          ctl.IsDisabled = true
        end
      elseif key == "BATT_RUN_TIME" then
        --if ch==3 then print(raw) end
        local time = tonumber( value )
        local ctl = Controls[RespToCtl[key]][ch]
        local s = ""
        --local b_disable = false
        if time == 65532 then     s = "Local Power"
        --elseif time == 65533 then s = "Charging"
        elseif time == 65534 then s = "Calculating..."
        --elseif time == 65535 then s = ""
        elseif time ~= 65535 then s = string.format( "Time Left: %d:%02d", math.floor( time/60 ), math.fmod( time, 60 ) )
        end
        if #s>0 then ctl.String = s end
        --ctl.IsDisabled = false --b_disable
      elseif key == "BATT_TIME_TO_FULL" then
        local time,ctl = tonumber( value ), Controls.battery_run_time[ch]
        --if ch==3 then print(raw) end
        if time == 65534 then ctl.String = "Fully Charged"
        elseif time == 65535 then ctl.String = "On Charger"
        --else
        --  if time < 65533 then ctl.String = string.format( "Charge Time: %d:%02d", math.floor( time/60 ), math.fmod( time, 60 ) ) end
        end
      -- Mic button press
      elseif key == "BUTTON_STS" then
        if value == "ON" then
          -- toggle local mute button
          Controls[RespToCtl.MUTE][ch].Boolean = not Controls[RespToCtl.MUTE][ch].Boolean
          -- update LED on mic
          dvc_led_update( ch )
        end
      -- Flash
      elseif key == "FLASH" then
        identify[ch].Boolean = value == "ON"
      elseif key == "CHAN_NAME" then
        channel_name[ch].IsDisabled = false
        channel_name[ch].String = ParseChName(raw)
      end
    elseif msg[3] == "FLASH" then
      aptid.Boolean = msg[4]=="ON"
    end
  -- Metering
  elseif msg[2] == "SAMPLE" then
    local ch = tonumber( msg[3] )
    Controls[RespToCtl.AUDIO_LEVEL][ch].Value = msg[5]
    RFBarUpdate(ch, msg[4])
  end
end

function dvc_start()
  dvc_get( 0, "TX_AVAILABLE" )
end

-- GUI mute button handler
function mute_handler( ch, ctl )
  dvc_led_update( ch )
end
for i=1,CH_COUNT do 
  mute[i].EventHandler = function( ctl )
    mute_handler( i, ctl )
  end
  -- Channel Names (Does not work)
  channel_name[i].EventHandler = function(ctl)
    dvc_set( i, "CHAN_NAME", "{"..ctl.String.."}" )
  end
end

-- GUI flash button handler
function flash_handler( ch, ctl )
  if ctl.Boolean then
    dvc_set( ch, "FLASH", "ON" )
  else
    dvc_set( ch, "FLASH", "OFF" )
  end
end
for i=1,CH_COUNT do 
  identify[i].EventHandler = function( ctl )
    flash_handler( i, ctl )
  end
end

--[[ Initialization ]]--------------------------------------------------------------
Status( "Discovering", "INITIALIZING" )
StartInit()
end