PluginInfo = 
{
  Name = "Microsoft~Surface Hub",
  Version = "1.0",
  Id = "d21d8c0a-2151-4b1e-92f0-93baec724f04",
  Description = "Microsoft Surface Hub - Initial Release",
  ShowDebug = false
}

function GetColor(props)
  return { 0, 63, 91 }
end

function GetProperties()
  local props = {}
  return props
end


function GetControls(props)
  ctls = {
    {
      Name = "power",
      ControlType = "Button",
      ButtonType = "Toggle",
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
      Icon = "Power",
    },
    {
      Name = "mute",
      ControlType = "Button",
      ButtonType = "Toggle",
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
      Icon = "Volume Strike",
    },
    {
      Name = "status",
      ControlType = "Indicator",
      IndicatorType = "Status",
      Count = 1,
      UserPin = true,
      PinStyle = "Output",
    },
    {
      Name = "source",
      ControlType = "Button",
      ButtonType = "Toggle",
      Count = 4,
      UserPin = true,
      PinStyle = "Both",
    },
    {
      Name = "sourceid",
      ControlType = "Knob",
      ControlUnit = "Integer",
      Min = 0,
      Max = 3,
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
    },
    {
      Name = "volup",
      ControlType = "Button",
      ButtonType = "Toggle",
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
      Icon = "Volume",
    },
    {
      Name = "voldn",
      ControlType = "Button",
      ButtonType = "Toggle",
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
      Icon = "Volume None",
    },
    {
      Name = "vol",
      ControlType = "Knob",
      ControlUnit = "Percent",
      Min = 0,
      Max = 100,
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
    },
    {
      Name = "bright",
      ControlType = "Knob",
      ControlUnit = "Percent",
      Min = 0,
      Max = 100,
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
    },
    {
      Name = "brightup",
      ControlType = "Button",
      ButtonType = "Toggle",
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
      Icon = "Arrow Up",
    },
    {
      Name = "brightdn",
      ControlType = "Button",
      ButtonType = "Toggle",
      Count = 1,
      UserPin = true,
      PinStyle = "Both",
      Icon = "Arrow Down",
    },
  }
  return ctls
end

function GetControlLayout(props)
  layout = {
    power = {
      PrettyName = "Power",
      Style = "Button",
      ButtonStyle = "Toggle",
      Color = { 128, 255, 0 },
      Position = { 0, 0},
      Size = { 48, 48 }
    },
    status = {
      PrettyName = "Power Status",
      Style = "Text",
      TextBoxStyle = "Normal",
      TextFontSize = 16,
      Position = { 51, 16},
      Size = { 146, 30 },
    },
    volup = {
      PrettyName = "Volume~Up",
      Style = "Button",
      ButtonStyle = "Momentary",
      Position = { 0, 48},
      Size = { 48, 48 }
    },
    vol = {
      PrettyName = "Volume~Level",
      Style = "Meter",
      MeterStyle = "Level",
      ShowTextbox = true,
      Color = { 110,198,241},
      Position = { 3, 98 },
      Size = { 43, 92 },
      IsReadOnly = true,
    },
    voldn = {
      PrettyName = "Volume~Down",
      Style = "Button",
      ButtonStyle = "Momentary",
      Position = { 0, 192},
      Size = { 48, 48 }
    },
    mute = {
      PrettyName = "Volume~Mute",
      Style = "Button",
      ButtonStyle = "Toggle",
      Color = { 207, 0, 33 },
      Position = { 0, 240},
      Size = { 48, 48 }
    },
    sourceid = {
      PrettyName = "Source~ID",
      Style = "Textbox",
      TextBoxStyle = "Meter",
      TextFontSize = 18,
      Position = { 51, 260},
      Size = { 99, 26 },
    },
    brightup = {
      PrettyName = "Brightness~Up",
      Style = "Button",
      ButtonStyle = "Momentary",
      Position = { 151, 48},
      Size = { 48, 48 }
    },
    bright = {
      PrettyName = "Brightness~Level",
      Style = "Meter",
      MeterStyle = "Level",
      ShowTextbox = true,
      Color = { 110,198,241},
      Position = { 153, 98 },
      Size = { 44, 92 },
    },
    brightdn = {
      PrettyName = "Brightness~Down",
      Style = "Button",
      ButtonStyle = "Momentary",
      Position = { 151, 192},
      Size = { 48, 48 }
    },
  }
  for ix,name in ipairs{"Onboard PC","DisplayPort","HDMI","VGA"} do
    layout["source "..ix] = {
      PrettyName = "Source~"..name,
      Legend = name,
      TextFontSize = 18,
      Style = "Button",
      ButtonStyle = "Toggle",
      Color = { 110, 198, 241 },
      Position = { 49, 48*ix},
      Size = { 101, 48 }
    }
  end

  graphics = {
    {
      Type = "Header",
      Text = "Power State",
      Position = { 51, 0 },
      Size = { 146, 16 }
    },
    {
      Type = "Header",
      Text = "Source ID",
      Position = { 51, 244 },
      Size = { 99, 16 }
    },
    {
      Type = "Header",
      Text = "Bright",
      Position = { 150, 244 },
      Size = { 48, 16 }
    },
  }
  return layout, graphics
end

function GetPins(props)
  return {{ Name = "input", Direction = "input", Domain = "serial" }}
end

if Controls then
  -- for errors, subtract 20
  local serial = SerialPorts[1]

  local powerStates = { "Off", "Power up", "Sleep", "Resting", "Ambient", "Ready" }
  local powerst = 0
  local timer = Timer:New()
  local voltimer = Timer.New()
  local britimer = Timer.New()
  local power = Controls.power
  local sourceid = Controls.sourceid
  local mute = Controls.mute
  local source = Controls.source
 
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

 
  local function Send(cmd,dontprint)
    if serial.IsOpen then
      serial:Write(cmd.."\r\n")
      if dontprint~=true then print(">> "..cmd) end
    end
  end

  local function Sources(i,dest)
    if serial.IsOpen and powerst==5 and dest~="ui" then Send(string.format("Source=%d",i)) end
    sourceid.Value = i
    for k,ctl in ipairs(Controls.source) do ctl.Boolean = i+1==k end
  end

  local function Poll(printit)
    if serial.IsOpen then
      if printit then print("Sending Queries") end
      Send("Power?",true)
      if powerst==5 then Send("Source?",true) end
    end
  end
  timer.EventHandler = function() Poll() end

  serial.EventHandler = function( _, ev )
    if ev == SerialPorts.Events.Data then
      local line = serial:ReadLine( SerialPorts.EOL.Any )
      if line:find(line:lower(),"[sp]") then print(303,DebugFormat(line)) end
      if line and line:find("[^\r\n]") then
        local line2 = line
        line = string.lower(line:gsub("[\n\r]","")) -- filter out any stray CR/LF characters
        if line:find("?$") then -- do nothing
        elseif line:find("^error") then
          print(line)
        elseif line:find("=") then
          local prop,val = line:match("(.-)=(.+)")
          if not val:find("%D") then val = tonumber(val) end -- if value is number, change to Lua number
          if prop=="power" then
            print(line,prop,val,type(val))
            Controls.status.String = powerStates[val+1]
            power.Boolean = val>2 or val==1
            power.Color = val==1 and "Orange" or ""
            powerst = val
          elseif prop=="volume" then
            Controls.vol.Value = val
          elseif prop=="brightness" then
            Controls.bright,Value = val
          elseif prop=="source" then
            Sources(val,"ui")
          else
            print("Unknown property returned: "..DebugFormat(line2))
          end
        else
          print("Unknown response returned: "..DebugFormat(line2))
        end
      end
    elseif ev == SerialPorts.Events.Connected then
      Poll(true)
      timer:Start(1)
    end
  end

  local function Vol()
    local updn = tonumber(voldir=="+" and 1 or tonumber(voldir=="-" and -1))
    Controls.vol.Value = Controls.vol.Value+updn
    Send("Volume"..voldir)
  end
  voltimer.EventHandler = function()
    if not volrepeat then voltimer:Start(.1) volrepeat=true end Vol() end
  local function Bright()
    local updn = tonumber(bridir=="+" and 1 or tonumber(bridir=="-" and -1))
    Controls.bright.Value = Controls.bright.Value+updn
    Send("Brightness"..bridir)
  end
  britimer.EventHandler = function()
    if not brirepeat then
      britimer:Start(.1) 
      brirepeat=true 
    end 
    Bright()
  end
  for ix,ctl in ipairs{{"volup","+"},{"voldn","-"}} do
    Controls[ctl[1]].EventHandler = function()
      if Controls[ctl[1]].Boolean then
        --print("Press "..ctl[1])
        voldir = ctl[2]
        Vol()
        voltimer:Start(.6)
      else
        --print("Release "..ctl[1])
        voltimer:Stop()
        volrepeat=false
      end
    end
  end
  for ix,ctl in ipairs{{"brightup","+"},{"brightdn","-"}} do
    Controls[ctl[1]].EventHandler = function()
      if Controls[ctl[1]].Boolean then
        --print("Press "..ctl[1])
        bridir = ctl[2]
        Bright()
        britimer:Start(.6)
      else
        --print("Release "..ctl[1])
        britimer:Stop()
        brirepeat=false
      end
    end
  end
  power.EventHandler = function(ctl) Send("PowerO"..tostring(ctl.Boolean and "n" or "ff")) end
  mute.EventHandler = function(ctl) Send("AudioMute+") end
  sourceid.EventHandler = function(ctl) Sources(math.floor(ctl.Value)) end
  for k,ctl in ipairs(source) do
    ctl.EventHandler = function()
      if ctl.Boolean then
        Sources(k-1)
      end
    end
  end
  if serial.IsOpen then
    serial:Close()
  end
  serial:Open(115200)
  Sources(math.floor(Controls.sourceid.Value))
end