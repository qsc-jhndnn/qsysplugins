-- Attero Tech unA6IO Plugin for Q-Sys 5.4+
-- by Attero Tech, Fort Wayne, IN, USA
-- July 2017

PluginInfo =
{
  Name = "Attero Tech~AES67~unA6IO",
  Version = "1.0.1",
  Id = "8429cd6f-e6ab-4b48-a9ef-19b9fd6d256c",
  Description = "Control plugin for Attero Tech unA6IO",
}

function GetPrettyName(props)
  return string.format("Attero Tech unA6IO %s", PluginInfo.Version)
end


function GetColor(props)
  return { 242, 89, 00 }
end


function GetProperties()
  props = { }
  return props
end


function GetControls(props)
  return 
  {
    {
      Name = "DeviceName",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "Refresh",
      ControlType = "Button",
      ButtonType = "Momentary",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "Identify",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Both",
      Count = 1,
    },
    {
      Name = "Status",
      ControlType = "Indicator",
      IndicatorType = "Status",
      UserPin = true,
      PinStyle = "Output",
      Count = 1,
    },
    {
      Name = "Mode",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "NIC",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "IPAddress",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "UnitName",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "Connect",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Both",
      Count = 1,
    },
    {
      Name = "Connected",
      ControlType = "Indicator",
      IndicatorType = "Led",
      UserPin = true,
      PinStyle = "Both",
      Count = 1,
    },
    {
      Name = "Details",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "Metering",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Both",
      Count = 1,
    },
    {
      Name = "SigPresIn",
      ControlType = "Indicator",
      IndicatorType = "Led",
      UserPin = true,
      PinStyle = "Output",
      Count = 4,
    },
    {
      Name = "SaveAsDefaultBtn",
      ControlType = "Button",
      ButtonType = "Momentary",
      UserPin = false,
    },
    {
      Name = "InputGain",
      ControlType = "Text",
      UserPin = true,
      PinStyle = "Both",
      Count = 2,
    },
    {
      Name = "PhantomPower",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Both",
      Count = 2,
    },
    {
      Name = "InputSelect",
      ControlType = "Text",
      UserPin = true,
      PinStyle = "Both",
      Count = 2,
    },
    {
      Name = "OutputVolume",
      ControlType = "Knob",
      ControlUnit = "Integer",
      Min = -60,
      Max = 0,
      UserPin = true,
      PinStyle = "Both",
      Count = 2,
    },
    {
      Name = "OutputMute",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Both",
      Count = 2,
    },
    {
      Name = "SigPresOut",
      ControlType = "Indicator",
      IndicatorType = "Led",
      UserPin = true,
      PinStyle = "Output",
      Count = 2,
    },
    {
      Name = "TxStreamName",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "TxStreamIP",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "TxStreamEnable",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = false,
      Count = 1
    },
    {
      Name = "TxStreamState",
      ControlType = "Indicator",
      IndicatorType = "Led",
      UserPin = true,
      PinStyle = "Output",
      Count = 1,
    },
    {
      Name = "RxStreamName",
      ControlType = "Text",
      UserPin = false,
      Count = 2,
    },
    {
      Name = "RxStreamChannel",
      ControlType = "Text",
      UserPin = false,
      Count = 2,
    },
    {
      Name = "RxStreamState",
      ControlType = "Indicator",
      IndicatorType = "Led",
      UserPin = true,
      PinStyle = "Output",
      Count = 2,
    },
    {
      Name = "RxStreamApply",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = false,
      Count = 1
    },
    {
      Name = "IPAddrMode",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "QoSMode",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "AES67Name",
      ControlType = "Text",
      UserPin = false,
      Count = 1,
    },
    {
      Name = "PilotToneFreq",
      ControlType = "Knob",
      ControlUnit = "Hz",
      Min = 20,
      Max = 20000,
      UserPin = true,
      PinStyle = "Both",
      Count = 1,
    },
    {
      Name = "PilotToneVol",
      ControlType = "Knob",
      ControlUnit = "dB",
      Min = -100,
      Max = 0,
      UserPin = true,
      PinStyle = "Both",
      Count = 1,
    },
    {
      Name = "PilotToneEnable",
      ControlType = "Button",
      ButtonType = "Toggle",
      UserPin = true,
      PinStyle = "Both",
      Count = 1
    },
    {
      Name = "PTPClockSync",
      ControlType = "Indicator",
      IndicatorType = "Led",
      UserPin = true,
      PinStyle = "Output",
      Count = 1,
    },
    {
      Name = "PTPClockRole",
      ControlType = "Text",
      UserPin = true,
      PinStyle = "Output",
      Count = 1,
    },
  }
end


function GetControlLayout(props)
  local Color = {
    Orange =   { 242, 89,  0   },
    White  =   { 255, 255, 255 },
    Black  =   { 0,   0,   0,  },
    Bkgnd  =   { 175, 175, 175 },
    CtlBkgnd = { 80,  80,  80  },
    LtGry  =   { 99,  99,  99  },
    Red    =   { 255, 0,   0   },
    DkRed  =   { 188, 0,   29  },
    Green  =   { 0,   255, 0   },
    Yellow =   { 255, 255, 0   },
  }
  local CH_X_OFFSET = 86
  local AES67_COL1_OFFSET = 492
  local AES67_COL2_OFFSET = 660
  local AES67_ROW1_OFFSET = 10
  local AES67_ROW2_OFFSET = 154
  
  layout = {

    DeviceName = 
    {
      PrettyName = "Device~Name",
      Style = "Text",
      IsReadOnly = true,
      Position = { 4 , 34 },
      Size = { 128 , 16 },
      Fill = Color.White,
      TextBoxStyle = "NoBackground",
      TextSize = 10,
      HTextAlign = "Center",
      VTextAlign = "Center",
    },

    Refresh =
    {
      PrettyName = "Device~Refresh",
      Style = "Button",
      ButtonStyle = "Momentary",
      Legend = "Refresh",
      Color = Color.Orange,
      OffColor = Color.LtGry,
      StrokeColor = Color.LtGry,
      StrokeWidth = 1,
      UnlinkOffColor = true,
      Position = { 8 , 170 },
      Size = { 56 , 16 },
      TextFontSize = 10,
    },

    Metering =
    {
      PrettyName = "Device~Metering",
      Style = "Button",
      ButtonStyle = "Toggle",
      Legend = "Meters",
      Color = Color.Orange,
      OffColor = Color.LtGry,
      StrokeColor = Color.LtGry,
      StrokeWidth = 1,
      UnlinkOffColor = true,
      Position = { 70 , 170 },
      Size = { 56 , 16 },
      TextFontSize = 10,
    },

    Identify =
    {
      PrettyName = "Device~Identify",
      Style = "Button",
      ButtonStyle = "Toggle",
      Legend = "Identify",
      Color = Color.Orange,
      OffColor = Color.LtGry,
      StrokeColor = Color.LtGry,
      StrokeWidth = 1,
      UnlinkOffColor = true,
      Position = { 8 , 186 },
      Size = { 118 , 16 },
      TextFontSize = 10,
    },

    Status = 
    {
      Style = "Text",
      PrettyName = "Device~Status",
      Position = { 8 , 208 },
      Size = { 118 , 14 },
      Fill = Color.White,
      TextSize = 9,
      HTextAlign = "Center",
      VTextAlign = "Center",
    },

    NIC = 
    {
      Style = "ComboBox",
      PrettyName = "Device~NIC",
      Position = { 48 , 67 },
      Size = { 76 , 16 },
      Fill = Color.White,
      TextSize = 10,
      HTextAlign = "Center",
      VTextAlign = "Center",
    },

    Mode = 
    {
      Style = "ComboBox",
      PrettyName = "Device~Mode",
      Position = { 48 , 107 },
      Size = { 76 , 16 },
      Fill = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
      VTextAlign = "Center",
    },

    --IPAddress and UnitName controls sit on top each other but only one is ever shown
    IPAddress =
    {
      Style = "Text",
      PrettyName = "Device~IP Address",
      TextBoxStyle = "Normal",
      Position = { 48 , 127 },
      Size = { 76 , 16 },
      Fill = Color.White,
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
      VTextAlign = "Center",
    },

    --IPAddress and UnitName controls sit on top each other but only one is ever shown
    UnitName = 
    {
      Style = "ComboBox",
      PrettyName = "Device~Unit Select",
      Position = { 48, 127 },
      Size = { 76 , 16 },
      TextFontSize = 10,
    },

    Connect =
    {
      PrettyName = "Device~Connect",
      Style = "Button",
      ButtonStyle = "Toggle",
      Legend = "Connect",
      Color = Color.Orange,
      OffColor = Color.LtGry,
      StrokeColor = Color.LtGry,
      StrokeWidth = 1,
      UnlinkOffColor = true,
      Position = { 28 , 145 },
      Size = { 98 , 16 },
      TextFontSize = 10,
    },

    Connected =
    {
      PrettyName = "Device~Connected",
      Style = "LED",
      Color = Color.Green,
      OffColor = Color.Grey,
      UnlinkOffColor = true,
      Position = { 8 , 145 },
      Size = { 16 , 16 },
      CornerRadius = 8,
    },
    
    Details = 
    {
      PrettyName = "Device~Details",
      IsReadOnly = true,
      Style = "Text",
      WordWrap = true,
      HTextAlign = "Left",
      VTextAlign = "Top",
      TextFontSize = 9,
      TextBoxStyle = "NoBackground",
      Position = { 8, 240 },
      Size = { 117, 51 },
    },

    SaveAsDefaultBtn =
    {
      PrettyName = "Device~Save as default",
      Style = "Button",
      ButtonStyle = "Momentary",
      Legend = "Save as Default",
      Color = Color.Orange,
      OffColor = Color.LtGry,
      StrokeColor = Color.LtGry,
      StrokeWidth = 1,
      UnlinkOffColor = true,
      Position = { 8 , 294 },
      Size = { 115 , 16 },
      TextFontSize = 10,
    },

    TxStreamName =
    {
      Style = "Text",
      TextBoxStyle = "Normal",
      PrettyName = "Network~Tx Stream Name",
      Position = { AES67_COL2_OFFSET + 12 , AES67_ROW2_OFFSET + 26 },
      Size = { 168 , 16 },
      Fill = Color.White,
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
      VTextAlign = "Center",
    },

    TxStreamIP =
    {
      Style = "Text",
      TextBoxStyle = "Normal",
      PrettyName = "Network~Tx Stream IP",
      Position = { AES67_COL2_OFFSET + 60 , AES67_ROW2_OFFSET + 46 },
      Size = { 120 , 16 },
      Fill = Color.White,
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
      VTextAlign = "Center",
    },

    TxStreamState =
    {
      PrettyName = "Network~Tx Stream State",
      Style = "LED",
      Color = Color.CtlBkgnd,
      OffColor = Color.CtlBkgnd,
      UnlinkOffColor = true,
      Position = { AES67_COL2_OFFSET + 168, AES67_ROW2_OFFSET + 0 },
      Size = { 16 , 16 },
      CornerRadius = 8,
    },

    TxStreamEnable =
    {
      PrettyName = "Network~Tx Stream Enable",
      Style = "Button",
      ButtonStyle = "Toggle",
      Legend = "Enable",
      Color = Color.Orange,
      OffColor = Color.LtGry,
      UnlinkOffColor = true,
      Position = { AES67_COL2_OFFSET + 134 , AES67_ROW2_OFFSET + 84 },
      Size = { 48, 16 },
      TextSize = 10,
    },

    RxStreamApply =
    {
      PrettyName = "Network~Rx Stream Apply",
      Style = "Button",
      ButtonStyle = "Momentary",
      Legend = "Apply",
      Color = Color.Orange,
      OffColor = Color.LtGry,
      UnlinkOffColor = true,
      Position = { AES67_COL2_OFFSET + 132 , AES67_ROW1_OFFSET + 114 },
      Size = { 48, 16 },
      TextSize = 10,
    },

    PTPClockSync =
    {
      PrettyName = "Network~PTP Clock Sync",
      Style = "LED",
      Color = Color.Green,
      OffColor = Color.Red,
      UnlinkOffColor = true,
      Position = { AES67_COL1_OFFSET + 76, AES67_ROW1_OFFSET + 14 },
      Size = { 16 , 16 },
      CornerRadius = 8,
    },

    PTPClockRole =
    {
      Style = "Text",
      TextBoxStyle = "Normal",
      PrettyName = "Network~PTP Clock Role",
      IsReadOnly = true,
      Position = { AES67_COL1_OFFSET + 76 , AES67_ROW1_OFFSET + 34 },
      Size = { 64 , 16 },
      Fill = Color.White,
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Center",
      VTextAlign = "Center",
    },

    QoSMode = 
    {
      Style = "ComboBox",
      PrettyName = "Network~QoS Mode",
      Position = { AES67_COL1_OFFSET + 76 , AES67_ROW1_OFFSET + 54 },
      Size = { 48 , 16 },
      Fill = Color.White,
      TextSize = 10,
    },

    AES67Name = 
    {
      Style = "Text",
      IsReadOnly = true,
      PrettyName = "Network~AES67 Name",
      Position = { AES67_COL1_OFFSET + 44 , AES67_ROW2_OFFSET + 14 },
      Size = { 120 , 16 },
      Fill = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
      VTextAlign = "Center",
    },

    IPAddrMode =
    {
      Style = "Text",
      TextBoxStyle = "Normal",
      PrettyName = "Network~IP Mode",
      IsReadOnly = true,
      Position = { AES67_COL1_OFFSET + 88 , AES67_ROW2_OFFSET + 34 },
      Size = { 48 , 16 },
      Fill = Color.White,
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
      VTextAlign = "Center",
    },

    PilotToneFreq =
    {
      Style = "Knob",
      PrettyName = "Device~Pilot Tone Frequency",
      Position = { AES67_COL2_OFFSET + 76, AES67_ROW2_OFFSET + 118 },
      Size = { 40 , 36 },
      Color = Color.Orange,
      TextSize = 9,
      ShowTextbox = true,
    },

    PilotToneVol =
    {
      Style = "Knob",
      PrettyName = "Device~Pilot Tone Volume",
      Position = { AES67_COL2_OFFSET + 132 , AES67_ROW2_OFFSET + 118 },
      Size = { 40 , 36 },
      Color = Color.Orange,
      TextFontSize = 9, 
      ShowTextbox = true,
    },

    PilotToneEnable =
    {
      Style = "Button",
      PrettyName = "Device~Pilot Tone Enable",
      ButtonStyle = "Toggle",
      Legend = "Enable",
      Color = Color.Orange,
      OffColor = Color.LtGry,
      UnlinkOffColor = true,
      Position = { AES67_COL2_OFFSET + 16, AES67_ROW2_OFFSET + 134 },
      Size = { 48, 16 },
      TextSize = 10,
    },
  }

  --AES67 Rx Stream Controls
  for i=1, 2 do
    layout["RxStreamName "..i] = {
      Style = "ComboBox",
      PrettyName = "Rx Stream Name~"..i,
      Position = { AES67_COL2_OFFSET + 16 , ((i - 1) * 50) + AES67_ROW1_OFFSET + 42 },
      Size = { 128 , 16 },
      Fill = Color.White,
      TextSize = 10,
    }

    layout["RxStreamChannel "..i] = {
      Style = "ComboBox",
      PrettyName = "RX Stream Channel~"..i,
      Position = { AES67_COL2_OFFSET + 148 , ((i - 1) * 50) + AES67_ROW1_OFFSET + 42 },
      Size = { 24 , 16 },
      Fill = Color.White,
      TextSize = 10,
    }

    layout["RxStreamState "..i] = {
      PrettyName = "Rx Stream state",
      Style = "LED",
      PrettyName = "RX Stream State~"..i,
      Color = Color.CtlBkgnd,
      OffColor = Color.CtlBkgnd,
      UnlinkOffColor = true,
      Position = { AES67_COL2_OFFSET + 162 , ((i - 1) * 50) + AES67_ROW1_OFFSET + 16 },
      Size = { 16 , 16 },
      CornerRadius = 8,
    }
  end

  --Input Controls (All)
  for i=1,4 do
    layout["SigPresIn "..i] = {
      PrettyName = "Input Signal Presence~"..i,
      Style = "LED",
      Color = Color.CtlBkgnd,
      OffColor = Color.CtlBkgnd,
      UnlinkOffColor = true,
      Position = { ((i - 1) * CH_X_OFFSET) + 208 , 10 },
      Size = { 16 , 16 },
      CornerRadius = 8,
    }
  end

  --Input Controls (specfic inputs)
  for i=1,2 do
    --XLR only  
    layout["InputGain "..i] = {
      Style = "ComboBox",
      PrettyName = "Input Gain~"..i,
      Position = { ((i - 1) * CH_X_OFFSET) + 144 , 64 },
      Size = { 76 , 16 },
      Fill = Color.White,
      TextSize = 10,
    }
    --XLR only  
    layout["PhantomPower "..i] = {
      PrettyName = "Phantom Power~"..i,
      Style = "Button",
      ButtonStyle = "Toggle",
      Legend = "Phantom",
      Color = Color.Orange,
      OffColor = Color.LtGry,
      UnlinkOffColor = true,
      Position = { ((i - 1) * CH_X_OFFSET) + 144 , 84 },
      Size = { 76, 16 },
      TextSize = 10,
    }
    --Unbalanced only
    layout["InputSelect "..i] = {
      Style = "ComboBox",
      PrettyName = "Input Select~"..i,
      Position = { ((i - 1) * CH_X_OFFSET) + 316 , 64 },
      Size = { 76 , 16 },
      Fill = Color.White,
      TextSize = 10,
    }
  end

  --Output Controls
  for i=1,2 do
    layout["SigPresOut "..i] = {
      PrettyName = "Output Signal Presence~"..i,
      Style = "LED",
      Color = Color.CtlBkgnd,
      OffColor = Color.CtlBkgnd,
      UnlinkOffColor = true,
      Position = { ((i - 1) * CH_X_OFFSET) + 208, 164 },
      Size = { 16 , 16 },
    }
    layout["OutputVolume "..i] = {
      PrettyName = "Output Volume~"..i,
      Style = "Fader",
      ControlUnit = "Integer",
      Color = Color.Orange,
      Position = { ((i - 1) * CH_X_OFFSET) + 188,  202},
      Size = { 18 , 90 },
      TextFontSize = 10, 
      ShowTextbox = true,
    }
    layout["OutputMute "..i] = {
      PrettyName = "Output Mute~"..i,
      Style = "Button",
      Legend = "Mute",
      ButtonStyle = "Toggle",
      Color = Color.Orange,
      OffColor = Color.LtGry,
      UnlinkOffColor = true,
      Position = { (( i - 1 ) * CH_X_OFFSET) + 148 , 276 },
      Size = { 36 , 16 },
      TextSize = 10,
    }
  end

  graphics = 
  {
    --Background - System Controls
    {
      Type = "GroupBox",
      Position = { 0, 0 },
      Size = { 134 , 320 },
      Fill = Color.Bkgnd,
      CornerRadius = 0,
      StrokeColor = { 80, 80, 80 },
      StrokeWidth = 1,
    },

    --Logo
    {
      Type = "Svg", --  Logo
      Image = "PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2aWV3Qm94PSIwIDAgMTE1MC4wOCAyNDUuNzYiPiAgPHRpdGxlPkFzc2V0IDE8L3RpdGxlPiAgPGcgaWQ9IkxheWVyXzIiIGRhdGEtbmFtZT0iTGF5ZXIgMiI+ICAgIDxnIGlkPSJMYXllcl8xLTIiIGRhdGEtbmFtZT0iTGF5ZXIgMSI+ICAgICAgPGltYWdlIHdpZHRoPSIyMzk2IiBoZWlnaHQ9IjUxMiIgdHJhbnNmb3JtPSJzY2FsZSgwLjQ4KSIgeGxpbms6aHJlZj0iZGF0YTppbWFnZS9wbmc7YmFzZTY0LGlWQk9SdzBLR2dvQUFBQU5TVWhFVWdBQUNWd0FBQUlBQ0FZQUFBQjBjVFY0QUFBQUNYQklXWE1BQUJjU0FBQVhFZ0ZubjlKU0FBQUFHWFJGV0hSVGIyWjBkMkZ5WlFCQlpHOWlaU0JKYldGblpWSmxZV1I1Y2NsbFBBQUFYdDlKUkVGVWVOcnMzVTFXMjBqZk4rQnl1K2ZrbVhxQ254WEF2UUxjS3dqM0NuQm1ub1ZlQWM0S21wNHhpMWxCa3hXMFdVR1RGVHhrd3ZRbEMvRGhyWXFLRHAzT2h3Ri9xRXJYZFU0ZGtZU0FWVkxKa3Z6VHYzcDNkM2NCQUFBQUFBQUFnUFpiVEFhai9PVitiQzl5MjMvd0xlbnJuV2Y4aW8reFhUMzQ4end2Yi9QZjMvYlBicTVzQ1FDNnJDZHdCUUFBQUFBQUFOQWVpOGtnaGFhR29RbFBEWE03YU5uTHZBOW1YZWMyVDh2KzJjMjFMUWhBN1FTdUFBQUFBQUFBQUxZa2g2c2V0b01LVnVzeU5HR3NUMDFGTEFCcUkzQUZBQUFBQUFBQXNDRjVTc0Q3ZHRDUjFiNnZoalZQclg5Mk03Y25BRkF5Z1NzQUFBQUFBQUNBTmNrVnJBNUR0d0pXeTNnWFBnZXdWTUFDb0NnQ1Z3QUFBQUFBQUFBcnNwZ01Yb1RQQWF1MDNORXJQL1FoTk9HcmkvN1p6WVh1QUtEdEJLNEFBQUFBQUFBQW51RkJ5Q3ExbDNyazJWTDFxeFM4U2dHc1c5MEJRTnNJWEFFQUFBQUFBQUE4a3BEVnhxVHcxVXpsS3dEYVJPQUtBQUFBQUFBQVlFbUx5ZUErWkhXa056YnFZMmlxWHAzMnoyNnVkQWNBMnlSd0JRQUFBQUFBQVBBZGk4bGdHQmZqM0hiMXlOWjlpTzAwTkpXdlREa0l3TVlKWEFFQUFBQUFBQUI4eFdJeUdNWEZjVEJsWUp1ZEIxV3ZBTmd3Z1NzQUFBQUFBQUNBQnhhVHdUZ3Vwa0UxcTVKY2hxYmkxVXhYQUxCdUFsY0FBQUFBQUFCQTV5MG1neGVocVdhVjJvNGVLVmFhYm5BYTI0WHBCZ0ZZRjRFckFBQUFBQUFBb0xNRXJhcjFNYmJUMEV3M0tIZ0Z3RW9KWEFFQUFBQUFBQUNkczVnTWhxR3BoSFNrTjZvbWVBWEF5Z2xjQVFBQUFBQUFBSjJob2xWbkNWNEJzRElDVndBQUFBQUFBRUQxQkszSVV2RHF1SDkyTTlNVkFEeVZ3QlVBQUFBQUFBQlF0Y1ZrTUE1TmRTTkJLKzU5Q0UzdzZrSlhBUEJZQWxjQUFBQUFBQUJBbFJhVHdTZzBRYXM5dmNFM1hJWW1lSFdsS3dCWWxzQVZBQUFBQUFBQVVKWEZaREFNVGREcXBkNWdTYi9ITnUyZjNkenFDZ0IrUk9BS0FBQUFBQUFBcU1aaU1wakd4WEV3ZlNDUDl6RTAxYTVtdWdLQTd4RzRBZ0FBQUFBQUFJcVhwdytjeGJhck4zZ20wd3dDOEYwQ1Z3QUFBQUFBQUVDeEZwUEJpN2lZeHZaYWI3QmliL3BuTjFQZEFNQ1hCSzRBQUFBQUFBQ0FJaTBtZzhPNE9BMnFXckUrNzJNYnEzWUZ3RU1DVndBQUFBQUFBRUJSY2xXckZMUTYwaHRzaUdwWEFQeE40QW9BQUFBQUFBQW94bUl5R01YRkxLaHF4ZWFwZGdYQUp6L3BBZ0FBQUFBQUFLQUVpOGtnVmJYNk13aGJzUjE3c2YwVjk4TmpYUUhRYlNwY0FRQUFBQUFBQUsyMm1BejJRMVBWYWs5djBCS1hzUjMyejI1dWRRVkE5d2hjQVFBQUFBQUFBSzIxbUF6R2NaRXFXKzNvamI5ZFB2ZzZUVy8zTVBSem0vL3VxVks0N2NXRFA3L0lmM2Z2UVBmLzdXTm9RbGR6WFFIUUxRSlhBQUFBQUFBQVFPc3NKb01VOUVsQnE2T09yWG9LVXowTVRjM3o4cXBOMVpUaTlobkd4VEQvY2ZSZ21iWmIxeXFSdlluYlptclVBblNId0JVQUFBQUFBQURRS2gyWVF2QkRiTmVoQ1ZOZDUzWlYwL1IwT1RDM245dnd3ZGUxVmlvenhTQkFod2hjQVFBQUFBQUFBSzJ4bUF3T1F4TzJxaVdZOHo0MDFhcitibDBPNVR3SVlvM0M1eERXYmlXcmw0SjBLWFIxWlNRRDFFM2dDZ0FBQUFBQUFHaUZ4V1F3all1VGdsZmhZMmlxVnFYQXpieC9kak8zVlpmYTdnOURXS05RZmlXc1YzSGJ6MnhaZ0hvSlhBRUFBQUFBQUFCYmxRTTNzOWhlRnZiU1UwV2plVzVYS2h1dGRKOTRHTUJLcmJRQTF1OXhmemkySlFIcUpIQUZBQUFBQUFBQWJNMWlNaGpHeFVWc2U0Vzg1SGNoaDZ3RXJEYTZuOXdIc05LVWt3ZUZ2T3pMMEV3eGVHc0xBdFJGNEFvQUFBQUFBQURZaWh5aW1ZZDJWeTlLVmF4U0lDd0ZyQzVzdFZic042a2kyaWcwNGF2RGx1OC83ME1UdXJxMjVRRHFJWEFGQUFBQUFBQUFiTnhpTWhqSHhXbG9aMWdtaFdSbVFSV3JVdmFsRk54TCsxTUtYKzIyOENWK2pHMWtYd0tvaDhBVkFBQUFBQUFBc0ZFNWJQVzJaUy9yUG1SMW9ScFIwZnRXVzhOWEtYUjFIUGV0bWEwRVVENkJLd0FBQUFBQUFHQmpGcFBCTEM2T1d2SnkwblNCNmZYTWhLeXEzTmZhR0w1NkpYUUZVRDZCS3dBQUFBQUFBR0FqV2hLMlNwV0dMbUk3TmNWYnAvYTlGTG82RE8wSSs3MkorOTdVVmdFb2w4QVZBQUFBQUFBQXNGYUx5ZUJGWEp5RzdZWmRMa05UeVdwbWkzUitYMHpCcStQWTlyYjRVczdqdmppMlJRREtKSEFGQUFBQUFBQUFyRTBPdU16RGRzSXRxWnJWTERUVnJLNXREYjdZTjlPVWd5bDRsUUpZTzF0NENVSlhBSVVTdUFJQUFBQUFBQURXWW90aHEvZWhDVm5OYkFXVzNFL0hvUWxmN1c3NDF3dGRBUlJJNEFvQUFBQUFBQUJZdVMyRnJkNkZKbWcxdHdWNDRuNTdQOTNnd1FaL3JkQVZRR0VFcmdBQUFBQUFBSUNWMmtMWTZqeTJxV2tEV2VFK1BBcE4xYXVqVGUzRFFsY0E1UkM0QWdBQUFBQUFBRlptZzJHcmo3R2RocWFpMWEyZVowMzc4ekF1cG1FendTdWhLNEJDQ0Z3QkFBQUFBQUFBSzdHaHNKV2dGZHZZdDRkaE04RXJvU3VBQWdoY0FRQUFBQUFBQU0rMmdiQ1ZvQlZ0Mk0rSFlmM0JLNkVyZ0pZVHVBSUFBQUFBQUFDZVpjMWhLMEVyMnJqUEQ4TjZnMWRDVndBdEpuQUZBQUFBQUFBQVBNdGlNcGlGOVFSUHptTTdGclNpeGZ2K01EU0J3SmZyMlArRnJnRGFTZUFLQUFBQUFBQUFlTEkxaGEzZWhTWm9kYTJIS1dRY2pFSlQ4ZXBneFQvNjF6Z09UdlV3UUxzSVhBRUFBQUFBQUFCUHNvYXcxZnZRQkszbWVwZEN4OFJoYUNwZTdhN3d4NzZLWTJLbWR3SGFRK0FLQUFBQUFBQUFlTFRGWkRDT2k3Y3IrbkVmUXhPMG11bFpLaGtmMDdSUHg3YXpvaDhwZEFYUUlnSlhBQUFBQUFBQXdLT3NPR3oxZTJ6VC90bk5yWjZsc25FeURFMjFxNWNyK0hFcGxEaUs0K1JLendKc244QVZBQUFBQUFBQXNMVEZaTEFmRjMrdDRFZGRocWFxbFFBSnRZK1pVVnpNd3ZPbkdVeWhxLzA0WnE3MUtzQjJDVndCQUFBQUFBQUFTOGxocTNsNDNqUnBLVFNTS2xxZDZsRTZObjZtY1hIeXpCL3pQalNWcmxTRUE5aWluM1FCQUFBQUFBQUE4Q09MeWVCRmFLcjBQQ2RzOVM2Mm9iQVZYUlQzKzJsYy9HOW9xcnM5MVY1c0Yzb1RZTHRVdUFJQUFBQUFBQUIrYURFWnpPUGk0SW4vUFZXMUd2ZlBiZ1JGVnJ0TmhuRXhmUEJYcVFMWml4Lzh0L1Q5MXovNG51c3Z2dWRLUmFXVmI3dmp1SmlHcHdjWXorTTJHZXRKZ08wUXVBSUFBQUFBQUFDK2F6RVp6T0xpNkluL1BWVzFHZ3ZzUExyUDc4TlRYeTVUMjl2aVMwdFQycVZ0ZVoxYit2b3FmUjIzOGJVdDk2aHRQQXhOMWJpbkJobGZ4VDZmNlVtQXpSTzRBZ0FBQUFBQUFMNXBNUm1NNCtMdEUvNnJxbGJMOWU4b05GV25VcnYvZXJmZ1Zib1BaTTFERG1YRmZXQnVTMzkzSDNoT3RhdGY5Qy9BNWdsY0FRQUFBQUFBQUYrVnF5ejk5WVQvcXFyVnYvdnl2a3JWS0M5VDIrMVFGNlFnMXRWOUV4TDY2bGliaGNkWEwwdkJ4bjNWeFFBMlMrQUtBQUFBQUFBQStKY2NFTG9PajZ1Nms4SWYwLzdaemFuKyt6UmQzQ2g4RGxqdDJhditKWVd3NXFFSlljMkZoajd0TjlPNE9IbHNQOGErMjdjN0FXeU93QlVBQUFBQUFBRHdMNHZKWUI0WEI0LzRMeWs4azZwYVhYVzB2NGFoQ1ZjZDV1V092ZWpSUG9RbWdQV3BkVFdBbGFlWnZIamtQblFlKzJ0c0Z3TFlESUVyQUFBQUFBQUE0QjhXazBHcVVQWDZFZi9sUExiakxrMGhtQ3VBamNMbmdOV3VQV2ZsN2l0Z1hYUnRDc0s4ZjgxaWUvbUkvL1lxOXRQTWJnT3dmZ0pYQUFBQUFBQUF3TjhXazBFS0VQMng1TGVuS1FTUHV4THl5RldzN2dOV0wrMHRHNVgydFhsb0tqOWRkQ1hjRi9lNTQ3ajQ3UkY5Tk9wcWxUbUFUUks0QWdBQUFBQUFBRDdKZ2FJVTFsaG1Lck5PVENINElHUTFqbTNQWHRJYTcwSkh3bGVQbkdJd2pjdFJsNnJOQVd5RHdCVUFBQUFBQUFEd3lXSXlTT0dwWlVKRlZVOGhLR1JWbk9yRFYzbUt3Zm15NHpQMnc5aHVBYkErQWxjQUFBQUFBQUJBQ25STTQrSmtpVy85dFg5MmMxcmgrcWRBeTJGdXBnc3NWd3BmemVJK2VsSHBPSjNGeGRFUzMvcXFLMU45QW15RHdCVUFBQUFBQUFCMFhKNnk3TThmZk52SDJBNzdaemZ6eXRaOVB5Nk9ReE8wMnJFM1ZDUHRyN1BZVHVNK2UxM1pQanVPaTdkTHJQOStiZXNPMEJZQ1Z3QUFBQUFBQU5CaHViSlRta3B3OXp2ZjlqNjJjZi9zNXFxaWRVNEJxK2tQMXBzNlhJYW02dFdzb25HYmdvTHo4UDJRNFB1NHp2czJQOERxQ1Z3QkFBQUFBQUJBaHkwbWd6VDEydmVtMEV0aGxWVFo2cmFDZFIyR0ptU2xtbFUzcGFwUGFUck1XUTJWbi9MK25NYnYzbmUrN1UxYzE2bE5EN0JhQWxjQUFBQUFBQURRVVl2SklBV1AvdmpPdDV6M3oyN0dsYXhubWpid3dGYm5mdDhPVGZCcVh2aStuYXExWGZ4ZzMvNVBMZFhwQU5wQzRBb0FBQUFBQUFBNktBYzFyc08zS3ozOTJqKzdPUzE4SGNmQnRJRjhYeFhURGNaOVBiMytvMi84czZrRkFWWk00QW9BQUFBQUFBQTY2QWRUQ2I0cU5ZQ1NnMlNwbXRVNENGcXh2QSt4VFVzT1hzVjlmeG9YSjkvNDU5L2p1aDNiekFDcklYQUZBQUFBQUFBQUhmT2RxUVEveG5aWTRqUnJENEpXcWUzWXlqeFIwY0dyWE5YdDdUZisrWmZTcDFBRWFBdUJLd0FBQUFBQUFPaVE3MHdsbU1KV28vN1p6VldCNnlOb3hhb1ZHN3pLb2F2VHI0d0hVd3NDcklqQUZRQUFBQUFBQUhUSU42WVNMQzVzSldqRmhoUVp2SXJqSXdXcjVsOFpHMi9pdWt4dFZvRG5FYmdDQUFBQUFBQ0FqdmpHVklMdlF6T040SFZCNnpFT1g2L2dBK3VTZ2xmSGNaeGNGRFJPdmhXNitrOXBsZXdBMmtiZ0NnQUFBQUFBQURyZ0cxTUpwckJWcW14MVc4ZzZwTUJZQ2xydDJxSnN5V1ZvS2w3TkN4a3pYd3RkbVZvUTRKbCswZ1VBQUFBQUFBRFFDZE5RYU5ncWhVWmltNGVtT3Bld0ZkdDBFTnVmYVdyTzJJWnRmN0c1a3RVb05OT0czdHVMci8zWXBnUjRPaFd1QUFBQUFBQUFvSEtMeVdBVUYzOCsrS3Npd2xhNUtsZXFhSFZrSzlKU2I5SStXc0JZK3JMU1ZRcGdEVXVwYmdmUU5pcGNBUUFBQUFBQVFQMU9IM3hkU3RncVZlQzVEc0pXdE50SmJGZDV1c3ZXK2txbHF4UzhtdGw4QUUrandoVUFBQUFBQUFCVUxBZVhmc3QvYkgzWUtsZmpTZ0d4UFZ1UHdsekdObzdqNjdyRjQrdkxTbGUveE5jN3Qra0FIa2ZnQ2dBQUFBQUFBQ3FWcCtTN0RrMjRvdFZoSzlNSFVwRldUelA0UmVqcVEzeWRRNXNNNEhGTUtRZ0FBQUFBQUFEMVNnR21GS3BJMDRpMU9XeVZwbU83RHNKVzFPRittc0ZSRzEvY0Y5TUw3dVlxZUFBOGdncFhBQUFBQUFBQVVLRmN4ZWF2OERsc2RkWEMxemlNaTFsc0I3WVlsZm85dG1rYnc0NFBLbDBsd3paUE5RclFOaXBjQVFBQUFBQUFRSjFTZGFzMmg2MVNWWjMwdW9TdHFObnIwTkpxVi9tNGtNYmhUajVlQUxBa0ZhNEFBQUFBQUFDZ01ubUt2ajlpKzAvYndsYXFXdEZocmF4MkZjZmtPQzdldHZGNEFkQldLbHdCQUFBQUFBQkFmVksxbWxjdERGdWxJSmlxVm5SVks2dGR4ZVBFTEM3ZUJGV3VBSmFtd2hVQUFBQUFBQUJVSkUvVmwwSVVweTE2VFM5Q1U5WHFwUzBFbi93ZXgraHh5NDRkYVl6TzR1dWEyendBMzZmQ0ZRQUFBQUFBQUZRaUI1dUdMUXRialVKVDFVcllDajU3SGNkR3FuYTEzNVlYRkk4YjQ3ZzR0R2tBZmt5Rkt3QUFBQUFBQUdBdEZwUEJOQzVPOU1SV3ZJL3Q5aEhmbjhKNmU3cHQ0ejdHZHB5bjlRT2dFQUpYQUFBQUFBQUF3RXJsU2xzWHNSM29qU2Y3RU50MS9qcFZDTHY5eXRlZi90dy91N2xkNDdZY3hzWHd3Vjg5L1BQRHIxT2xwaDJiN2NuT1F4Tzh1dFVWQU8wbmNBVUFBQUFBQUFDc1RKNUNNSVd0aEcrKzc3NEMxVHovK1g1NVZYTG9Kb2Z0VXZqcWEwc1Z0SDY4VDR6ajlyL1NGUUR0Sm5BRkFBQUFBQUFBcklRcEJQOGxUUmQzbGR2MS9iSi9kblBkNFgxa0dKcXFXS1B3dVVLV1Ntai8zR2RNTVFqUWNnSlhBQUFBQUFBQXdMUGtxa2F6MkY1MnVCdFNkYUw3WU5VOEZGNnBhZ3Y3MERCOERtTHQ1N2JiNFM0NWovdlAySjRCMEU0Q1Z3QUFBQUFBQU1DVExTYURGSXhKVXdoMktSenpJZVJRVldpQ1ZYTjd3bHIycmZ2cENFZWhteUdzRk9JYkNlNEJ0SS9BRlFBQUFBQUFBUEFraThuZ01EU1ZyWFlxWDlYTDBJU3I1cWtKd0d4MW54dUd6d0dzdE55cmZKWFRGSU1wZEhWbDZ3TzBoOEFWQUFBQUFBQUE4R2lMeVdBYUZ5ZVZybDZxTEpTcWRzMVZyMnI5ZnBpcVlJMGV0Rm9EV0svaXZqaXp4UUhhUWVBS0FBQUFBQUFBV0ZvT3VKekdkbFRSYXFVcEFqOEZySUlLVmpYc242bnkyaWkzbXFZZy9EM3VtOGUyTXNEMkNWd0JBQUFBQUFBQVM4bGhsbm1vbzRyUXU3d3VGLzJ6bTJ0YnQ5cDk5bjdxd1hFbCsrMTViTWRDZ1FEYkpYQUZBQUFBQUFBQS9GQU9ycVFxVUtWV0RQcVlYLy85VklFQ0s5M2JoKytyWDZYMnN1QlZTVk5lanV6REFOc2pjQVVBQUFBQUFBQjgxMkl5R0lVbXFMUlQyRXYvTzJUVlA3dTVzQ1g1WXIrK0QxOGRGcmh2cDJrd0QrTitmV1ZMQW15ZXdCVUFBQUFBQUFEd1RZdkpZQndYYnd0NnlVSldQR1UvTHpGOGxmYjFrZEFWd09ZSlhBRUFBQUFBQUFCZlZWalk2andJV2ZIOGZiN0VhUWRmeGYxK1p1c0JiSTdBRlFBQUFBQUFBUEF2aThsZ0ZoZEhMWCtabDdHbDE1bUNWcmUyR2lzZUF5bDhOYzV0citVdlYrZ0tZSU1FcmdBQUFBQUFBSUIvYUhuWTZrTm9wZ3c4N1ovZFhOdGFiR2hNN01mRmNXajNsSU8veGpGeGFtc0JySi9BRlFBQUFBQUFBUEMzRm9ldDNzVTJNMlVnV3g0ZjkxTU9wdkJWRzZ0ZW5jY3hNcmFsQU5aTDRBb0FBQUFBQUFDNEQ1S2tNTk5CaTE3V3g5Qk1HYWlhRlcwY00yMnRlaVYwQmJCbUFsY0FBQUFBQUFEUWNUbHNOUS90cWRqelBqUWhxNW10UXlIalp4eWE4TlZ1UzE2VzBCWEFHZ2xjQVFBQUFBQUFRSWUxTEd5VnBnMU1RYXU1TFVPaDQya2NtdkJWR3lyRkNWMEJySW5BRlFBQUFBQUFBSFJVaThKVzU3Rk5UUnRJUldOckZKcmcxZEcyeDViUUZjRHFDVndCQUFBQUFBQkFCN1VnYlBVeHR0UFlab0pXVkR6T2huRXhEZHNOWGdsZEFheVl3QlVBQUFBQUFBQjB6SmJEVnZkQnF6UjE0SzJ0UVVmRzNEQnNOM2dsZEFXd1FnSlhBQUFBQUFBQTBDRmJERnNKV21IOE5lUHZPTGVkRGY5Nm9TdUFGUkc0QWdBQUFBQUFnSTdZVXRoSzBBcStQaGFuc2IzZThLOFd1Z0pZQVlFckFBQUFBQUFBNklqRlpIQVJGeTgzOU9zRXJlREhZM0lZTmovVm9OQVZ3RE1KWEFFQUFBQUFBRUFITENhRFdkaGNxT1AzMkthQ1ZyRDArQnlHelFhdjNzVHhPZFh6QUU4amNBVUFBQUFBQUFDVjIyRFk2ancwUWF0cnZRNVBHcXVqMEFTdkRqYnc2MTdGc1RyVDZ3Q1BKM0FGQUFBQUFBQUFGVnRNQm1sYXY5ZHIvaldYb1FsYXpmVTRyR1RjanVKaUZ0dnVtbitWMEJYQUV3aGNBUUFBQUFBQVFLVVdrOEU0THQ2dThWZDhDRTNRYXFhM1lTMWorRGcwRmE5MjF2aHJmaEdXQkhnY2dTc0FBQUFBQUFDbzBKckRWaDlqUzVXelR2dG5ON2Q2RzlZNmxsK0VKblQxZW8zamVSVEg4cFhlQmxpT3dCVUFBQUFBQUFCVVpqRVo3TWZGUEt5bktzNjcySTc3WnpmWGVobzJQcTVUMFBGZ0RUOCtoYTcyald1QTVRaGNBUUFBQUFBQVFFWFdHTFpLMHdlT1RUMEdXeC9qNDlBRXIxWTl4dCtIcHRLVnFuVUFQL0NUTGdBQUFBQUFBSUE2NUtuSFptSDFRWXczL2JPYm9iQVZiRjhjaDJtTUQyUDdmY1UvZWk4MFlVMEFma0NGS3dBQUFBQUFBS2pFWWpLNENrMW9ZbFV1UTFQVjZscnZRaXZIL0NnMEljdmRGZjdZOHpqbXgzb1g0TnNFcmdBQUFBQUFBS0FDaThsZ0ZoZEhLL3B4SDJPYjlzOXVUdlVzRkRIK3AzRnhzc0lmK2F2eEQvQnRBbGNBQUFBQUFBQlF1TVZrY0J3WHY2M294NmxxQldVZUIvWkRVKzFxVlZYdS9odVBBeGQ2RnVEZkJLNEFBQUFBQUFDZ1lJdko0REF1L2xqQmowcFZyY1lDRmxEOE1XRWFWbFB0S2gwVFJ2R1ljS1ZYQWY1SjRBb0FBQUFBQUFBS2xTdmF6R1BiZWVhUFV0VUs2anMyek1MenExMTlpRzAvSGh0dTlTckFad0pYQUFBQUFBQUFVS0RGWlBBaU5HR3I1d1FxVWdXYmFmL3M1bFNQUXBYSGlXbDRmcldyeTNpTUdPbE5nTTkrMGdVQUFBQUFBQUJRcEZsNFh0anFmV2dxMXdoYlFhWGkrSjdHeFMraHFWVDFWQWVMeWNCeEF1QUJGYTRBQUFBQUFBQ2dNQ3VvV3ZNbUJ6R0FiaHd6VWtXOEZKbzZlc2FQZVJXUEd6TzlDU0J3QlFBQUFBQUFBRVZaVEFhSGNmSEhFLzk3bWtMd3NIOTJNOWVUME1uanh6ZzB3YXVkSng0L1J2SDRjYVVuZ2E0VHVBSUFBQUFBQUlCQ0xDYURZVnlrc01OVHdoTHZZaHYzejI1dTlTUjAvamh5RVo0MkpXbWFpblRrT0FKMDNVKzZBQUFBQUFBQUFJcVJRaEpQQ1Z2OTJqKzdPUlNTQU9KeDREcTIvZmpsNzAvNDd5bWtkYW9YZ2E0VHVBSUFBQUFBQUlBQ0xDYURGSEo0YkVXYU5BWFlmL3BuTndJU3dEL0U0OEp4WFB3M0h5Y2U0eWdlajQ3MUlOQmxwaFFFQUFBQUFBQ0FsbHRNQm9keDhjY2ovOXRsYktwYUFUODZ2cVJxVjdQdytFQm5Dbk5lNlVHZ2l3U3VBQUFBQUFBQW9NVVdrOEV3TGxLbzRURlRDZjZlcTljQUxIT2NlUkdhcVFLUEh2SGYzc2MyRXVvRXVzaVVnZ0FBQUFBQUFOQnVGMkg1c0ZXYUd1eVZzQlh3R0NrMEZkczRmdm5ySS81YnFvaGx1bEtna3dTdUFBQUFBQUFBb0tVV2s4RTBMRC9OMTRmUVZKdVo2VG5nS2VMeEl3V29mZ2xOZUhNWlIzbktVNEJPTWFVZ0FBQUFBQUFBdE5CaU1oakZ4WjlMZnZ0bGJJZW05Z0pXZFB3WmhxYTYzaktCenhUTzJvL0huMnM5QjNTRkNsY0FBQUFBQUFEUU1vdko0RVZjekpiODl2UCsyYzFJMkFwWWxSeWVHc1gyYm9sdjMzbkU4UXFnQ2dKWEFBQUFBQUFBMEQ1cFdxL2RKYjd2VmYvc1pxeTdnRlZMSWM3WTBuU0I1MHQ4KzBHZUFoV2dFMHdwQ0FBQUFBQUFBQzJ5bUF4U3dPR1BIM3hibXNKcjNEKzd1ZEJqd0FhT1MrTzRlTHZFdC80bkhwZXU5QmhRT3hXdUFBQUFBQUFBb0NXV25Fb3doYTFHd2xiQXBzVGpUVG91L1RjZmY3NW5wcmVBTGhDNEFnQUFBQUFBZ1BhWXhiYnpuWDkvSDl1K0NqTEFwdVdRNXloOFAzUzFaMnBCb0F0TUtRZ0FBQUFBQUFBdHNNUlVnaWxzbFNwYjNlb3RZSXZIcXYzUWhFUDN2dk50cGhZRXFxYkNGUUFBQUFBQUFHelpFbE1KbmdkaEs2QUZjcEJxRkpvUTZMZk05QlJRTTRFckFBQUFBQUFBMkw1WitQWlVndWY5czV1eHNCWFFGdmw0TkFyZkRsMlpXaENvbWlrRkFRQUFBQUFBWUl0K01KWGdwN0NWWGdKYWZBeWJ4Y1hSTi83WjFJSkFsVlM0QWdBQUFBQUFnQzM1d1ZTQ2I0U3RnTGJMeDZuemIvenpUQThCTlJLNEFnQUFBQUFBZ08wNURWK2ZTdkJWLyt4bXFudUFFbnduZEdWcVFhQktwaFFFQUFBQUFBQ0FMVmhNQnFPNCtQTXIvNVRDVmpNOUJCUjRYRXZIcmkrbkYvd1kyMzQ4cmwzcklhQVdLbHdCQUFBQUFBREFkc3krOG5mQ1ZrQ3h2bEhwYWllWVdoQ29qTUFWQUFBQUFBQUFiRmllWW12M2k3OFd0Z0tLOTQzUTFVRTg3aDNxSGFBV3BoUUVBQUFBQUFDQURWcE1Cc080dUFwTjFaZDd3bFpBYmNlNmRFeDdPTDNnaDlCTUxYaXJkNERTcVhBRkFBQUFBQUFBbXpVTHdsWkE1YjVTNlNwVjlUdldNMEFOVkxnQ0FBQUFBQUNBRGNsVGF2M3g0SytFcllEYWozdnBHUGV3MHRYL3h1UGV0WjRCU3FiQ0ZRQUFBQUFBQUd6TzZZT3ZoYTJBNm4ybDBwWGpIbEE4Z1NzQUFBQUFBQURZZ01Wa01BM05sRnJKNzhKV1FGZDhFYm82eU5YK0FJb2xjQVVBQUFBQUFBQnJ0cGdNaG5GeG5QOTQzais3T2RZclFKZmswTlc3L01kVFBRS1VUT0FLQUFBQUFBQUExbThhMjA1b3dsWmozUUYwVkRyK3ZZOXROMWY5QXloUzcrN3VUaThBQUFBQUFBREFtaXdtZzFGYy9CbmJaZi9zWnFSSGdJNGZFMS9FeFR5MllXcnh1SGlyVjREU3FIQUZBQUFBQUFBQTZ6VU5UVVdYUTEwQmRGME9XSTN5SDAwdENCUko0QW9BQUFBQUFBRFdaREVacEpCVnF1WXlVc1VGb1BFZ2RIVVlqNVA3ZWdRb2pjQVZBQUFBQUFBQXJNODB0ckd3RmNBL3hlUGlWV2hDVjZwY0FjWHAzZDNkNlFVQUFBQUFBQUJZc2NWa2NCd1g4eHdxQU9Ecng4cHhYRnpIWStWY2J3Q2xVT0VLQUFBQUFBQUExdU5DMkFyZysrSnhjaFlYanBWQVVWUzRBZ0FBQUFBQUFBQUFXSklLVndBQUFBQUFBQUFBQUVzU3VBSUFBQUFBQUFBQUFGaVN3QlVBQUFBQUFBQUFBTUNTQks0QUFBQUFBQUFBQUFDV0pIQUZBQUFBQUFBQUFBQ3dKSUVyQUFBQUFBQUFBQUNBSlFsY0FRQUFBQUFBQUFBQUxFbmdDZ0FBQUFBQUFBQUFZRWtDVndBQUFBQUFBQUFBQUVzU3VBSUFBQUFBQUFBQUFGaVN3QlVBQUFBQUFBQUFBTUNTQks0QUFBQUFBQUFBQUFDV0pIQUZBQUFBQUFBQUFBQ3dKSUVyQUFBQUFBQUFBQUNBSlFsY0FRQUFBQUFBQUFBQUxFbmdDZ0FBQUFBQUFBQUFZRWtDVndBQUFBQUFBQUFBQUVzU3VBSUFBQUFBQUFBQUFGaVN3QlVBQUFBQUFBQUFBTUNTQks0QUFBQUFBQUFBQUFDV0pIQUZBQUFBQUFBQUFBQ3dwSjkxUWZzdEpvUFJ0LzZ0ZjNZejEwTUFBQUFBQUFBQUFMQVp2YnU3Tzcyd1lZdko0RVZjN01jMi9LS0YvUGM3ei9qeEgyTzd5bDlmUDJ6Q1dRQUFBQUFBQUFBQThEd0NWMnVXdzFXajBBU3A3cGM3VzN4SkgwSVR3SnFuSm9URml2ZjMwN3lQdzZaZHhlUFpjUWZIM0RndXhqWS8yeERIM0VndkZIdnNlTGp0dnR5T0w3eVhWK2s0anRrcjNlQzhsN1c2enUyaDIvRDVnU2dWcW1uTGUvOHdmSDdvNzN0L3h5T3VSL040LytZeHdmZ0hBQUNBK3BoU2NBM3lqYXpEMEh5QXRkZXlsN2ViMjBGc0ovRzFwcis3ak8waU5BRXNIOFR3SFB0NTN3STJZMmpNQVY4NUY3MnZwUHBsUmRWZHZkTlpMM1NCODE3VzdvZjdRNzcrVHU0ZmhMcHZuOElhQWhrODhYMy95eXJxKy9tNDc3Mi9uZVAvWVdYNitZUGxyWHR5QUFBQVVCYUJxeFhKSDJ5bDZpb3BhTFZUMk1zL3lDMnRSN3J4TzB1dGYzWnpiY3NDQUxUNkhIUVlQbGRSRlFBQktNUERCNkVlSHRQVElsMlRYK1dtS2pYZmV0OS8rUDYvbzJlS3N2Tmc3Tjh2VHg0Y0E5NC9PQVpjT1FhMFI2L1hzeTNZbHRuZDNkMU1OeFIzekxnUFFIOVpSZnIrNzZuVFZSeXZ4N3FoTStNN2hLOVhpaDhHMVdPckU4ZjJTQytzWlB5VVhqSGVlWm45NGw4RXJwNHBUK2VVVHFEMktsbWxkTk0zM2VoSjFhL2V4ZVdwbXpzQUFLMDU5N3lmcnZxK21xcktGUUIxdVE5anZRei9yRXFkcnNzdlZNRHAzUHYrOE1GN2ZtckNWZlhieSswbzd3UDN4NEQ3RU9hRkx0b2FEemF3TFhOZDBFNDVkUEd3d3ZRTHh3b29mbHlQOHBkZkxqM29BS3RSK2dQRHpzdnNGLzhpY1BWRU9XZzFEWFYveUpWdThMNk02NXB1N0V3RnJ3QUF0bnJ1ZVpqUHp3RG9sdnVxMUNlNUtuVUtYTXlFcjZwOXowODNHdS9mOXdXcmVYZ01lSjBEV08veWNTQ0ZNRzkxRDhENjlYcTlZZmhjWFRJdDkvUUtGRCttOXgrTTZhRnpid0NlUXVEcWtSYVRRWHJqblhYc2pUZmQxUGt6Vjd3Nk50VWdBTUJHemp1SG9hbWtPZzZlb2dPZ2tlNUZ2QTVOOENLRnI2WkI2S0tXOS94eGJqN280VWRlNXZZMjM2dWJxWHdGc0hxOVh1Kyt5cVFRTkpRL251K0RWZmZOZlRZQVZrTGdha2w1K3BacGFHNXNkbFc2bVRPS2ZaR3FYWjNhS3dBQTFuTGVPY3publVkNkE0RHZTQi84dlkzdE5MNTNwR3YwVThHcjR0N3pSNkVKVjZ0Z3lWUGRWNmYvRk1DTXg0Q1pMZ0Y0dWp5ZDJEZzBJU3VCRENoN1BCL21zV3c4QTdBMlArbUNIOHZsM0ZPcC90ZDY0OU5KeVcreFR5NXlDQTBBZ05XY2N3NWptOFV2L3k4SVd3SHd1T3YwazlpdTQvdklzZTRvNGowL1BjdzJqMS8rR1lTdFdJMVBBY3k0WDEzbnFhZ0JXRkt2MTNzUjIzRnMxL205K1NnSVowQ3A0M2tZMjJsczZVR1VQNHhuQU5aTjRPb0hGcE5CU2o3UGc1S3hYMG8zQk9kQ1Z3QUFLem5uVEIrUXA0Qy9vQlVBVDNYL2dOUThWMHVrZmUvM0tWeWRwbjVMSCtZZTZCSFc0RDU0ZFpVcnFBSHdEVGxvTlkxZlhxZHpxT0F6SUNoNVBLZWcxU3cwRHpHK0RrSldBR3lJd05WMzVDZkMvdkRHL0UxN29YbUNkbDlYQUFBODZYenpSYTV3OFp0elRnQldKQVY1cnZJRFpMVG5QZjgrWEsyaUZadVE3dG45R2ZlN3FhNEErTGRVMFNvMFFhc1QxK0pRL0hoTzV6dXF4UU93RlFKWDM1RERWbS8xeEErbGl4R1ZyZ0FBSG4rK2VUOXR0UW9YQUt6ald2MFBVNHUxNHYzK1JhNXFKVnpOTnB6a3FuZnUyd0dFVDhHTS9kaXV2QzlERmVONW1NZnppZDRBWUZzRXJyNGlmL2dsYkxVOG9Tc0FnTWVmYjg2REtRc0FXSyszUWxkYmZiOGY1dmQ3VmEzWXBoVHVkOThPNkx4ZXI1Zk9pZjRLVFJWQW9PenhmUDhRby9FTXdGWUpYSDBoMzN5WTY0bEhTeWMxTTkwQUFQREQ4ODM3c0pXbmFRSFloQlM2R3VtR3JiemYreENJdGtqN29kQVYwRm05WG04V1BHUVB0WXhuOTlVQWFBMkJxMys3OENiOVpDOFhrOEd4YmdBQStMcjhJWmZ6VFFBMjdVTFF3dnM5bmJlWDkwdUFUc2xocXlNOUFWV01aK2ZaQUxTS3dOVUR1Y3orZ1o1NGxxbWJ1QUFBMzVSdUNwbEdFSUJOU3g5SVRIWER4c3k5MzlOU0I0dkp3TEVBNkF4aEs2ak96SGsyQUcwaWNKWGxrTkNwbm5pMm5XQnFRUUNBcjUxdnBrcWd3djBBYk12citGNDAxQTFyZjc5UDk1Wk1JMGliblRnV0FGM1E2L1dtUWRnS2FoclRvN2g0cVNjQWFCT0JxODltUVFuS1ZVbFRDNDUwQXdCQUk0ZjdwM29DZ0MwNzFnVnJmYjhmeGNWclBVRUJuSmNDVmN2QmpCTTlBYzVmQUdDZEJLN0MzemZFcEtKWGEyWnFRUUNBdjZVUHVJWDdBZGkyUTEyd1ZsTmRRQ0dPVkxrQ0tqZlRCVkNQSEtKVU5SNkExdWw4NENxSGdweDhyMTZhUTNtcUd3QUFQbEZSQklCV1hLc3ZKb045M2JCNitXRStId0pSRWdGTW9FcDVLc0ZkUFFGVkdlc0NBTnBJaGF2bXd5OG4zK3Z4Mm8xY0FLRHI0dmxRK2pCTGRTc0Eyc0oxK25xTWRRR0ZFYmdDcXRQcjlkSUQ5aDU0QXVjdEFMQVJQM2Q1NVhNWXlEemU2elVMYnVaMnlWV0Y2MVRqRThvZllydTI3MVVoYmNmTHl0WXB2V2ZVRmt6NTJPRjlsRWFYYndyWi85dmhWaGZRc1hQRGIwa2Z3TzNaNUdHb0M3emZyOG43d3Q1emFyejJlQXdWMllCYTM0ODk4QVFWNmZWNis4WTFBRzMxYzhmWC85UXVzSFo3aThuZ3VIOTJvNjg3SUc3bjZwNGVpdnZ2TUM0dVFqMGZ6THlKMjJscWI2MW16TTFDWmRQaTVxbCswM3ZHVVNXcmRCNWJlaDhVZHVpMnJud0FtOEpWODlBRXJENHQ3ZnZRK2pGN25NOG5PaVUvZkpYT09ZYTVqZkt5SzlXdmgzYi9sZTlUYVIvcXlvZEFYNzdmMzhianlGWGgyKy8rV0xDZjI2Z3J4NE8wN25IN1hSdkZRRVZVdDRMNmpIUUJBRzNWMmNCVkNnRUZUM0p0eWpUMjk0VWJPSlFvN2JmNTVubmFmMHUvZ2Y2N3NCVUZqTGtVemhqbkR6MUtmNTkrSDlkbmJLdDJXOTZYYS80QU5uM29Pa3V0OUE5Ym9ZdlhhVjBNVytYemphdnZITFBUdVg4S3lyNnN1QXVHZHYrVnE3MnlkOVh2OS9sK1ZXcnpMNDRINlZpUTdoL3VWbjQ4dURhRWwvS213bTEvVk9GMnVudzRsaXN4Ti95VzArdjEwbjdkMVdxbUg3NThMMk1ydktjNjExN2wrZmVWOXdHQTl1dGs0Q3JmTkpuYS9CdVRQbVJNMVVxVTE2ZElLUUFTanh1eitPWHJ3bGRGcFRsSzIxOFBqRGtxTUt4MHZkTE4zTTZHTmFBQ0gxVWgvdXA1LzNYSW9aSjgzeUFGTGNiQjlCWDgyQXZ2OTFVZUQ5Sng4alEvaERVTkh0enN0THU3dTJsdDY5VHI5ZEk2MVZMVlBYMHdmUmkzMDl6ZTJtbWpycHpMaHlhQWtWb0taRnpGZlY5MWFXbzI3TUE2dnMvdnlYTmpHcUFzUDNWMHZkTU5FemRNTit2bFlqSVF1S0preFovZ3FqS0hNYmR4eGh5MVNrLzM3d3RiUWRGVXBGdmkzRGxQbVo2ZXByN1VJM1RRNzk3di96NGV6R01ieFM5L0RjMkgzRkNGdTd1N2RNMWF5LzNhc2JBVm9mNHFPT2V4L1RmdTZ5OWlTd0hEMDdUZkMyYlFBY05LMSt0RFByLzgzemlPOTFPNDI1Z0dLRS9uQWxjNTlGUEsxQURwSms2NnNmdStrdTVQVHdtL01Pd0FBSXFVemsxZnBlbHA4L1NmQU5YTHdhdFJhTUluMEJYcC9mN1krLzIvamdmcEFjNVJFTHFpSWpsMFZYcXcrRU5jand0YmsxQnY0Q285OVBRL2NUOGYyOWZwcU5xbWQwN25rci9HOFR6TXdjbHJteGlnWEowS1hPV3dUeW5USnFTUTFURGQySTB0WFNqOEVzcS9vWk9xaWswTk93Q0FJaDJyY2dGMFZhNTJkYTRuNklCWDN1Ky9leXhJRlFKSFFlaUt1cFJlK2ZMYUpxUlM2VE9pLzgxVmI0U2dvWjV4bmFwWm5lb0tnRHAwcmNMVk5KU1JoRTQzYlVZUG55Uk01Y3RESFNXZVh5OG1nNUdoQndCUWxEYytmQVc2TGg0SHg2R2VDdFR3TmUrODN5OTFMRWpobEttZW9DS0NITkErS2VnL1V2a0dxdkxldUFhb1QyY0NWNHZKSUZXSmVsM0l5ejM5V3RuMkhMcXE0WWxheVcwQWdISjhkUDRHOExkalhVREY3L2RqM2JDY1BMM2dCejBCd0JxOHo5TUhDa05DUGRKNTQ4aTRCcWhQbHlwY3pRcDZyZC83UUN2ZDNDMjliUG5lWWpLWUduNEFBR1djUjMvdFlRQ0FMc29QUWdsWlVLTUw3L2VQTnRVRkFLeFkrdXpuVURkQWRZUW9BU3JWaWNCVkR2ZnNGZkp5ejc5M2d5di9XdzFQMUI3SDdUSTBCQUVBV20rdUN3RCs0VUlYWUwvR09SSUFhM0JxdWpHb1RxcGE1N3dSb0ZMVkI2NXlxS2VrZ05MMFI5L1FQN3VaeGNWbDRadG1KNVJWZFF3QW9LdXVkUUhBUDNneW1lcjB6MjRFcmg3Zlora2M2YU9lQUdDRlpyb0FxdU04RzZCaVhhaHdsVTVRZHdwNXJlZjVaczB5eGhWc200UEZaREEyREFFQTJpdWVuMTdwQlFDQXIzS2VCTUNxZkZEZENnQ2dMRlVIcmhhVFFacnIrcUNnbHp4YjlodHpNT3ROQlp2cE5HNm5GNFlpQUFBQUFBRFFVZGU2QUFDZ0xOVUdybktJWjFiUVM3N3NuOTNNSC9NZjR2ZFA0K0pENFpzcVZSODdOUlFCQUFBQUFBQUFBQ2hCelJXdXBxR2NxUVR2WCs5VGpDdllWa2VMeVdCa09BSUFBQUFBQUFBQTBIWlZCcTV5ZU9kMVFTLzV3Mk9yVzkzTC8rKzhnczAyTXh3QkFBQUFBQUFBQUdpN1dpdGN6UXA3dmRObi92L2oyRDRXdnMxMkY1UEIxSkFFQUFBQUFBQUFBS0ROcWd0YzVkRE9ia0V2T1ZXM21qM25COFQvZnh1YTBGWHBUdUwyMnpjc0FRQUFBQUFBQUFCb3E2b0NWNHZKWUJnWEo0Vzk3Tk5WL0pBYzJycXNZRE9lR3BZQUFBQUFBQUFBQUxSVmJSV3Vab1c5M284cmZzMDFWTGs2V0V3R3g0WW1BQUFBQUFBQUFBQnRWRTNnYWpFWmpPUGlvTENYZlpxbkExeUorTE91NHVKTkJadHpHcmZuQzhNVEFBQUFBQUFBQUlDMnFTSndsY001SlU1RmQ3cW1uL21oOEUyNkU4cXJWZ1lBQUFBQUFBQUFRQWZVVXVGcUZwcVFUa25PVjFuZDZsNyttZU1LdHVuTHhXUndhSWdDQUFBQUFBQUFBTkFteFFldUZwUEJLQzVlRnZqU3ArdjZ3ZjJ6bTNsY3ZLdGcvencxdFNBQUFBQUFBQUFBQUcxU2RPQXFoM0ZtQmI3MFZOM3FlczIvWXh6Yng4TDN6OTJ3eG1BYUFBQUFBQUFBQUFBOFZ1a1ZybzVERThvcHpXemR2eUJQTFRpdFlCOTl2WmdNOWcxVkFBQUFXbUtrQ3dBQUFBQ2cyNG9OWE9VUXprbUJMLzB5VC9tM2R2SDNuS2JmVjhGK09qTlVBUUMyZXQ0TlFITk1ITWJGZ1o0QUFBQUFnRzRydWNMVmFhR3ZlN3JoMzNkY3dYNjZ0NWdNamcxWEFJQ3RPTlFGQUZWZFl3TUFBQUR3T0M5MEFWOHFNbkNWd3pjbFBsSDZZVlBWcmU3RjMzY1ZGMjhxMkZlbitVbGlBQUEyNnlTZWg0MTFBOUIxdWVMZmF6MEJBTUFhK0JBWEFOck5UQkRyVVhRbCtaOUxlOEU1ZERNdHRMKzM5YnBUTmJCeGJMc0Y3NnM3b1psYWNPU1lBd0N3Y1c5ejZHcXVLNG8wNjUvZFhPc0dlTG9jdHFybEdPaFlEZ0RRUG51OVhtLy83dTd1U2xjQVFDc2RlSzllcmRpZjQ5TFg0ZWNDWDNNS0QrMFUrTHBUZGF2Wk5uNXgvTDIzK1FPeVAwcy9pTVgxT0l6cmMrSHdBd0N3K1hPeFVQalRKaDAyaisxYU44RFRwT3ZRMER3QXRGUEpLdDNhcWdBQTdieDI2L1Y2SXgva0FrQnJ6ZUo3OVdGOHI3N1dGYytUem5sQ2svMHBXbEdCcTN5VDgyV2hmYjNWblNWTlpSajc3MTNCL2ZmM1FTeFZPVXNoTW9jaEFBQUExaVZYMkQ2dDREcjZTM05iRndDZ2xWTEEvNjllcjVjK3l4RzZLcy8xM2QzZFREY0FWRzB2dHYvelh2MXNoN2t2aTFkTTRHb3hHYVQ1cTB0TnVIME16ZE93MnpZT3paUHRKVCtWbTE3N05MWmp4eUVBQUFCV0tZZXNSdm42dWNhcWZxbjZ0aHVDQUFEdDlqTFVGL3J2Z3N2UWpzOENBZkJlellhVVZPRnFHdHR1b2YxODJvYUtUSGxxd2RTUHZ4VyszNzZPNjNHUnFuWVp3Z0FBQU9YTEQxbnRiK0ZYcDkrWmZ2Y290bUVvOTc3RHNtYjJOZ0FBQUFCNHZpSUNWNHZKSU4wQWZWMXdQN2VtTWxmLzdPWTBUODFZK3BPNnFVLzNEV0VBQUlCV1g4c1B3K2RRMC8wMVhGcnU2S0dOK3hqS3JSd09BQUFBQUsxU1NvV3JXY0Y5Zk42RzZsWmZTTlB4L1ZYNHZydVhxblhGdnAwYXhnQUFBTnNYcjlGR29ha1VsZHFCSG1tZGFRdnZUOVJDdndJQUFBQjB6RTl0ZjRGNUNyeTlndnQ0MnJZWDFEKzd1WXFMTnhYc3Z5ZHgveGdheGdBQUFGdTdaaC9GTm9zdEJVNytUTmRwUWRpcWpTNVR4V3Zkc0RaWHVnQUFBQUNnVzFwZDRTcUhhWTRMN3Q5VTNlcTZwYTh0M1dnZHg3WmIrRDQ4QzgzVDB3QUFBR3p1ZWoxZFQwNHJ1S2JzZ3ZleEhlb0dBQUFBQUZpZHRsZTRtc1cyVTNEL3p0cjZ3dkkwQXVNSzl1R0RmS01mQUFDQU5ZdlhYL3V4cFdvK2I0T3dWUWxTMkdwa0trRUFBQUFBV0szV0JxNFdrMEY2K3JMa2FRaFN1ZjU1bTE5Z2ZuM3ZLdGlQVCtQKzhzSndCZ0FBV090MStqUXUvb3B0VDI4VTRUSUlXd0VBQUFEQVdyUXljSlhETTdQQyszWmF5T3NjeC9heDhMNU9WZEJPRFdjQUFJQzFYYWVuYS9RVFBWR01OLzJ6RzJFckFBQUFBRmlUdGxhNG1vYXlweEw4MFBicVZ2Znl6ZGRwQmZ2eTBXSXlHQm5TQUFBQXF4V3Z0ZElETGtkNm9nZ2ZZdnNsWHV0UGRRVUFBQUFBckUvckFsYzVOUE82OEg2ZGx2UmkrMmMzNmViNVpRWDc4OHpVZ2dBQUFDdTlSaitzNEJxOUMxTGw2bFRWYWxqS0EyQUFBQUFBVUxJMlZyaWFGZDZucWJwVmlldHdYTUgrdkZ2SmVnQUFBTFNGNmR2YjdWUFFLcmFocWxZQUFBQUFzRG10Q2x3dEpvTnBhRUl6SlN2eVpuVC83T1lxTkRkcFMzY1M5Nk45UXhzQUFPRFoxK2pqQ3E3UmE1V21EdncxNUtCVmJMZTZCQUFBQUFBMjUrZTJ2SkRGWkRDTWk1UEMrek05V1RvcitQV25zTmc0MUJGNkd4bmVBQUFBejZLQ2NQdWN4M2JSUDd1NTBCVUFBQUFBc0QxdHFuQTFxNkEvVDB0K3FqUy85aHB1cUI4c0pnTWZEQUFBQUR4UnZLWjZFUmQ3ZW1McjBvTmQ3Mko3RmR2L3hPdjJzYkFWQUFBQUFHeGZLd0pYZVpxQ2d3cjY4N1QwRmNnM2J0OVZzQzJtK1FNQ0FBQUFIczlVN2R0ekdkdWIySDZKMStndllqdU1iV2JhUU5acE1SbU05QUlBQUFEQThyWStwV0FPeFp4VzBKZm5GZDM4VE5XaFJySHRGTHdPNmJYUFlqczB6QUVBQUdpcDk3RmQzYmYrMmMxY2x3QUFBQUJBKy8zY2d0Y3dDMlVIZSs1TmE5a3ArbWMzMTR2SklJWGdUZ3BmbFpkeFBRNU50d0FBQU1DV1hPWmxla0RyNnNIeU9sMTc2eDRBQUFBQUtOTldBMWU1WFBuTEN2cnhmWVUzU21laC9NQlZjaHIzczdtcEZ3QUFudTA4dGhSa2QxNVZuaXRkZ1AzbXV6NkU1aUdxaXkrdkhlUDFaSnBhY2VucDZsV29BZ0FBQUlCdTJGcmdLazhsT0t1a0g2djcwQ2xYdWFwaFZYWkRjK1A4MkhBSEFIaVNqN0dONHZtaDBBNTBTQW9leFd2QzMrT1hyenR3ak52LzFrTTZqbjBBQUFBQXdOZHNzOEpWQ3NEc1Z0S1BCNHZKWUZoVGxhczBGVjlGKy9ucnVENHpOOG9CQUo3azFIa1VkTlkwdGxGc2V4V3Y0MHhGWkFBQVdpUk5TWDBhVkpjdWtXMEc0TDJhNVF4RGM5K3grTHpRVmdKWHVTVC9TV1U3eFVVS0tkVVF1c3BUUGM0cTJ6NXBmZllkdXdBQW5uUWVCWFJRcm5LVnJnL25vZDdRbFp0akFBQzB4Zm5kM2QxWU53Q0E5K3JhOVhxOWkxREJQY2R0VmJnNnJYQ2ZTRHZDL3kwbWc4dkMxK05GcVBORytsN2NOc2Y5czVzYTl6MEFnTFdwcVlvcjhLUmp3SDNvS2wxTEhWVzRpcW02ODlTV0JnQmd5OUpVMThlNkFRQmE2NE93MWVyRXZyenQ5WHJwdnR6L2xid2VHdzljcGRCTFhCeFV2RzhjR0I2dE5ZMzczNFVQRFFFQUFKYVhwOXdieCt1cE5MM29iNVd0bm9kekFBQm9nNnYwd2FOdUFJRDJ2bGZyZ3RXSzV6N1h2Vjd2UXloNGFzR2ZOdm5MRnBQQk1IaHlsTzNaQ2FiRUFRQUFlSkljU3ZwdmFKNityOGx2aThsZ2Fnc0RBQUFBOEEwQ1YrdHhYZktMLzJuRHZ5L2RuTjJ4ejdCRkI0dko0RkEzQUFBQVBGNy83T1lpTGtheGZhaHMxVTVTUmVUWVh0aktBQUFBQU1DUGJDeHdsVU11TDNVNUxUQnpFeDBBQU9CcCttYzM2WW0rL2RndUsxdTFkTTlpSHE4WDkyMWxBQUFBQU9CN05oSzR5dUdXVTkxTlM2UXFhMVBkQUFBQThEVDlzNXZiMkVieHkvUEtWbTB2TktHcmthME1BQUFBQUh6THBpcGNUV1BiMWQyMHlHczMwQUVBQUo2bmYzWXpqb3RYbGExV2Vram56M2pOZUd3TEF3QUFBQUJmcy9iQVZTN0YvMXBYMDBLcXJnRUFBRHhULyt4bUZoZS94UGF4c2xYN2JURVptSkllQUFBQUFQaVhUVlM0bXVsbVdtcHZNUmxNZFFNQUFNRHo5TTl1NW5HUkhyaDZYOW1xSFlWbWlrR2hLd0FBQUFEZ2Iyc05YT1V3eTU1dXBzVk80bjQ2MUEwQUFBRFAweis3dVk2TFVXenZLbHUxZEYvak9sZndCZ0FBQUFCWVgrQXFoMWlPZFRFRm1Pa0NBQUNBNSt1ZjNkekdkaGkvZkZQWnF1M0U5dGRpTWhqYnlnQUFBQURBT2l0Y3pVSnpReExhN3NCTmN3QUFnTlhwbjkxTTQrSlZiQjhyVzdXMzhmcHhaZ3NEQUFBQVFMZXRKWEMxbUF6UzA2d0h1cGVDbk1iOTlvVnVBQUFBV0kzKzJjMHNORk1NMWhhNk9vclhqM1BYa0FBQUFBRFFYU3NQWE9VYmpqTmRTMkZTTmJaVDNRQUFBTEE2L2JPYnE3Z1l4dmErc2xWTEQ1bGRMU2FEZlZzWkFBQUFBTHBuSFJXdXBzRlVncFFwUGFVODBnMEFBQUNyMHorN3VZMHRCWlBPSzF1MTNkam1wcWdIQUFBQWdPNVphZUFxaDFWZTYxWUtOak10QkFEQVA4N3hWVzhCVnFKL2RqT09pMThyVzYzMHdObmJlS3ljMnNJVWJxZ0xBQUFBQUphMzZncFhNMTFLNGRJVHlzZTZBUURnYjhMb3dNcjB6MjdTVk82L3hQYXhzbFU3V1V3R0Z4N2dvV0FDMWs4ejFBVUFBRGhmQk9pbWxRV3U4dE9jdTdxVUNweW81QUFBOExkRFhRQ3NVdi9zWmg0WG85amVWN1pxTDBNenhhRHJTVW8wMGdXUEU4ZjZNTGdYQ2dEQTl3MTFBVUM5VmhLNHlqY1lUblFuRlRuVkJRQUFud2hjQVN2WFA3dTVDazNBNDdLeVZkc0xUZWhxWkN0VDJyNXJ2M1dPQk1CV0NlMURuUTU2dlo1S3lBQ1YrbmxGUDJkV1VaK2NCMU1qUGxVNllVaEJwUnFlN2p0WVRBYkhlYm9MQUlBdTI0M25SZU40WHVRY0dWaXBlRnk1all0UlBNYWs2NjdYRmEzYVRteC94dlg2MVRVbGhaa0dsYTZXa3FjUFBkWVRBS3p5SExMWDYrM2YzZDFkNlFxb1Rqckh2dEFOQVBWNWR1QXFmZmdTRndjVjlFVjZxbmFhcHpiZzZTN3lQcEZ1S3U4VXZpN1R1QzZ6L0NFQUFFQ1huY2J6b25rOEw3cldGY0NxeFdQTGNUekdwQStXM2xhMmFyL2w2UVdQWFZkU0NBK2ZMVzhhVENjSXdPcU5nMEF2MUNpTmE0RXJnQW85YTByQi9EUlhEVGRoM3ZYUGJrYkNWcXVScXg4TVkvdFkrS3Frd05qTUZnVUErSFJlZEpIUC93SFdkUjM1bndxdUk3OTBGSm9wQmgwL0tjVnYrVUU2dmlIM3oyczlBY0Fhakh1OTNsQTNRSFhTdElJajNRQlFuNStlK2Y5bm9md3FSdWxtcmljR1Zpdy92VHV0WUZWZUxpYURRMXNVQUNEc3hYYVZxN1VBck9NNk1sVzVTc2VZOXhVZVA2OGRQeW5JMjdpL1RuWER2K1VwVU4vcUNRRFd4RVBnVUM5VlpBRXE5T1RBMVdJeUdNWEZ5d3I2WUdwcWxQWElKZWd2YXpnSjhqUXlBTUFuYWVxY3Y5S0hzTTZQZ0RWZFI2YnI4MUZzNTVXdDJrNCtmbzV0WlFweEV2Zlg2M3ovci9OU1ArU3BUMVcyQW1EZFVpV2NtVzZBNnV3WjJ3RDFlVkxnS24rNFVzT2J3bVVPQmJFK05WUVBTeDhzVG0xS0FJQy9uWVNtV2tzS3BnOTFCN0JLcVdKeWJPUDQ1WnNLVnk5VkRwclp5dFc1cW5TOTB2MlFQMVBRS0lVRnV4YTJUdXViMTN1ZStpRTAxZW9BWUJPT2VyM2VQRFlQT2tGOVkzdXFHd0RxOGRRS1Z5bEVzMXZCK3B0S2NNM3lsQkExM0NSL2Jmb0hBSUIvU05WYVVwV0gvOHNmeEtidzFhSEtWOEFLcnllbmNmSGYyRDVXdG1wSEtjRGhlRm5Wdm5wYjRYNzZVQW9hcFduMC9sOSt6NS9tOS94aFRTdVoxaWRYc3BybWtOWC95K3Q5WUM4SFlBdlMrODkxcjlmek9SYlU1U1JWdWhLb0JLakR6NC85RHpsMGNsTEJ1ci9KWVNEV0xOMGt6OU1tbEI3U204VW1kQVVBOEc5N3ViM08xd3pwUStkMHJuMGI2cTM2VWRSNXJHblVLZmg2OGlKUGFYWVI2bmp3NjE3NkFDMEZWdzdkbTZqR1BMYVhIWHJQRC9rOVB5M2U1L2Y4MHQ3MzB6MmVGdy9HWkJlUHNYTkRGNkRWMG9OT3YrWFExU3kxdTdzNzEzWjB6WWZLcmdXVG85Z084OWkraU9QNjFtWUdLTlBQVC9nL3MwcmVuRTBsdUZuajBKUmZMOW5lWWpJNE5nMGxBTENzOUNGVy9pQ3lhOUpONGZzUExsL2FFN1p1SHR1MWJxRGdZK2xWZnZncjdjczFUZW1WUGpTWTUrdk1tUzFkdklzT3YrYzlISmZlOTh2eFhoY0FGSFhlbUFvaHBNbzQ3L041OGFmcnZMdTdPK0Y5YW5jZDZndGNKZW5lV2FxbWVockhkYnFXU0dQNUtvN3B1VTBPVUk1SEJhN1NUY0JReDgzTmNTNzN6b2JrRHh2UFE1UGFMbG1xMW5XaFFnQUE4QWp2UTEwQkFZQnRYRk9tYS9qOWVEMDJxK0M2OHFGUE45blRWR1o1Q2tYS2xUNGtPYzNiRkVvdzF3VkFaVkpZb1FzVkMvOVJZYnJYNjZYRmZiVkp4L2Z0U2dHNG1XNVl5emxMeldON0oxL2pIajBZMDhtbGM3ZjJpR1BiOVRyd1ZVc0hydExOdjdpbzRXRHlUcm5zclVtQnZjTlE5czNIOU5yVENmUEk1Z1FBbHBUT0hYN1REUURQRjYvbng0dkpJRjNUdjYxczFVNXlGUzhQaUpXN2I5Nm1CN1JDWFlGQTZqOUhCYWhKbHlzOVBYekk2OEN1c0RXWDNsL1hJcDFqbjNSd3ZROSs4R2MyYTZvTGdLLzU2UkhmVzhOVGVoOURNN1VkVzVCdkdoL1hjSkt6bUF3T2JWRUFZRWt6WFFDdzBtdkxkRno5SlYvajF5Uk54VGJQd1N2S05OVUZGT0l5VGRlcUc0REt6SFVCMUNkUG0vbEJUd0RRUmtzRnJuSzQ1R1VGNnp2MXBPaDI1UnZqbHhXc3lpeU9peGUyS0FDd3hQbFBPdi84L2YremR5OVpiU1RyMm9ERFc2ZVBUMWNkK0VjQWV3UldqY0RzRVZqdXFXZlZDQXFQb0hCUFBZc1JiRHlDRWlNb0dNRVJIYlh4QUxUMHgrZE1sVEVHTEVDWHZEelBXbEVCbEpBekl5TlR0NWN2akFUQVdxK3RrOXhGTU9tcVlic1cxUWtpZE5WemxHczVMNmU1T3pNUzFNQ0pJUUNhWnJGWVRCdjQzQkFvbkJvQ0FLcm9sNEdyTWxUU2hBZXkrTXN0RDhqVjBHL0FQa1MxdHhPSEVnQllVVHh2K0dvWUFOYW5ETGYwY3Z2U3NGMkwxNXQvelFmZG9hUHNNUjgyNEtJTXJRSTBrYytBb0lFV2kwV2MyNnBjQVZBNXExUzRPc2x0dndINzZvM0tpaWpmRlAvWWdGMzU0SytPQVlBVm4vOUVsYXUra1FCWS8vVTF0NmpLM2NSS2duL20xNXlxSzlkdlRrNlRQOUNpdXI1NlRnbzAyV0t4R0NlaERHZ3FuL01DVURtUEJxN0tNTW1IQnV6bng4NW9kdWx3VjBjK0hpY05lZUhqTDJZQWdGV2YvNXpuN25jakFiQ1JhMnk4K2Y0K05hK3kwTHRVTERFb2RGV3YrUmp2Rlh3eEVsVFFjUmtLQkdpeXZpR0E1bGtzRnZHKzJpY2pBVUNWL0tyQ1ZSUENKTmRsdUFjdmZEYmhjRDdvbWw4QXdFcktEMkRQakFUQVJxNng0MVFzTWRpMDBOVmhidFA4MnZQSVVhNlZmbTVYaG9FS2VXOHBRYUFORm90RlhPdUVNcUNaNS9mUWMyd0FxdVRCd0ZVWklqbHN3RDcySGVacUt0L2thY0lMbnoveStYTGdpQUlBS3o0SGl1ZW43NDBFd0VhdXNWSGRPbDZmTmUxTitMM2MvczZ2UGZ1T2NtM21ZaXduM0VzK0VHTDNJb1Q2dmd5bEFyUkNHY3E0TUJMUVNKNWpBMUFaOXdhdXl2QklFOWJDUGZPWFc1VjNrcHJ4MThkamh4SUFXRlg1Z2RkdnFYbFZXQUNxY0kxZEJsMmFXRkh3ODN6UTlmcXpmblBSQjBMc3luWE1RV0Vyb0tXT1BRWkQ4eXdXaStWemJFdDRBN0J6RDFXNGloZmhlelhmdC9qd2F1Z1FWMXY1NW1PL0Fidnl4bDhhQXdCUGZCNDBTVVVWRmtzTUFtemd0V1paVWZEM0J1N2V1L3o2YzVMYmEwZTZIbk14K1VDSTNZZzVkMVJXL2dOb25RaGw1SGJrTlRjMDl2eU9VT1ZIb3dIQUx2MFV1Sm9QdXZFQTlhWUIrellzMzlTaTR2SnhPay9OS085NzZnMXZBT0NKejRPV2dZRGZrdVVPQURaeG5UM04zWDlTOHlvS3h2czJsL2sxNkpHalhKdkgrM2kvN2Zla3VpV2JGMVd0Zm9zNTU3MVJnRy9Cakw3SFlHanMrWDJTaXZmVXJvMEdBTHZ3UStDcURJdU1HN0JmRjBwbDEwNi9BUzk0OXBLbEJRR0FaNGhxVjduMWt1QVZ3Q2F1c2ZGSFBuR05iZHFTTXZ1NVRWUmJydFZjakFEZ2tjZDZOaVErYUh5ZjU5bEJXVWtWZ05KaXNmQVlETTA5dnllNUhhU2kycFZnSlFCYmRiZkNWVHpwM0d2QWZ2VWQybnJwakdiVGN2N1YzZHY1b050elJBR0FaejRuV2dhdi9wMktaUSs4VVFTd251dHJMS2tWMTllbWZjZ1c3K0Y4enE5RFR4emwyc3pGcVpBMWF4YnphQm0wR2hzT2dQc3RGb3RwYnZFWUhOVlBWY09CNXAzajhacm9JRmxHRklBdCtpZHdWWVpFM2pWZ256Nlc0UjFxSmgrM2VETFVoTDg0SGx0YUVBQjQ0Zk9peTFocU1MZDRUdkUrdHk5SitBcmdwZGZXbXpMbzBzUTM0UC9JcjBQUHZSYXQxWHk4WGQzU2gwSThWUVFGUHVYMi8ySWVDVm9Cckc2eFdKeVgxWERpdGZhVkVZRkduZDgzNVRLaS81dFV2QUpnQzI1WHVHckNDL09yTXJSRGZRMGJzQS83RGRrUEFLQUM0Z08wM0k3TDhGWDhKVzU4dU9aTllZRG5YMWY3cWZpQXJXbmVwbUtKd1NOSHVWYnpjVkxPeWY5TlF0WThMcDcveFFlSC95NnJXUTM5MFNuQTh5MFdpM0Z1OGJ4SmhXbG8zdmtkd2F1VDNHNy9JU01Bck4zL3hIL0swdlA3RGRnZklaZWFpemNhODN5TUR4RS8xSHhYdnYxMWNibHNCUURBdXA0cm5lZnV2SHdPSDI4YTlYSTd1dFh2R1NXQWxhNm5VWms0WHE5TkduYnRQRXhGNkNxQ3VoTkh1bFp6OGlZVmZ3dzVMaC9uZStYanU4ZjQ5cm9vcjFIZnJsWGxIQUZnelJhTFJWeG4rL0gxcTFldmpuTzNiQjU3b1JubitMZm4yUG44UHJoMWZyOHhNZ0Nzdy8vTUI5MTRnUG1qQWZ2eXladUpqWEZTUHVHcGV3andOQlZ2akFJQXJGMzVvZHMvQWF4UVByYy9LSitEUkNEcnFQeCszNGdCL0hRZHZTeXJRY1YxOUxCQnV4WWZEdjZWOSszM3ZJK25qblJ0NStja0ZXR2IreDdqbDEvN29LZ1pvbkxWTkJYQnFtaFRmOEFIc0J1eDNPRHlOZmFyVjY5NjZYdjQyV011MVAvOGp1ZGI4ZnJvTkovZjhaN1o4YTF6M1B0bUFEeExWTGdhTjJBL290VHJpY1BaRFBIaDRYelFqV3BsLzYzNXJyeUovZkFHTndDd3hlZFIwMVI4WURlNSsvOXVmVkM3REdLbDlQMEQyMVQrL05Bb0FtMjdicGFWaE9KMTI3dUc3ZDZmWmFCc3FESk80eC9qZStXWFIrWGorZTNIK3VYUFZlbll2bmkvY2htY3VybjE5ZVh5ZStjbVFIVXRGb3ZKN2NmZFd3R3M1UjgyZWYwTTlUMi9mNmd1VzFhL1dwN2ZQZWMzQUt1S3dOVkpBL1pqNmcyS1pvbmxjdWFEN204TjJCWHpzam5HNlo0M3RvR05pUThoZm12QVBrQ1ZubDlOVS9GQmJUaGY1WGR1aGJSd1BlSkg4UWNpcjcxT2FjejFNY2FqbjY5NTQ0YnU0bXZIdlBGemVQbGFkYVhYck9XeXhFZEdidjJQdDk2ZkJHaXV1d0dzVUlhd2xxK2JsOEZuUVdlbzMvazlUWGNLbEpUbjkxSDZIckpVNlE2QW43ektEeUpHQVFBQUFBQUFXdWJWcTFjbnVmdWp4cnR3c1Znc2VvNGtGVHkzN3FzOGVUZjByTkowczdnZU5mKzhQa2cvQnl4Zk81ZWJMNS9icjR6Q1dzNmhTYXAzZVBGam5nc25qcVI1OGNQMkMxd0JBQUFBQUVENzNQcnd1SzV1Rm91RmlxNDA4ZHhVa2RMMUNPY3ZGVkZXT2VUbDU4WXlwRmhYMDdJaUh1YkY5KzBYdUFJQUFBQUFBQUFBQUZqTnZ3d0JBQUFBQUFBQUFBREFhZ1N1QUFBQUFBQUFBQUFBVmlSd0JRQUFBQUFBQUFBQXNDS0JLd0FBQUFBQUFBQUFnQlVKWEFFQUFBQUFBQUFBQUt4STRBb0FBQUFBQUFBQUFHQkZBbGNBQUFBQUFBQUFBQUFyRXJnQ0FBQUFBQUFBQUFCWWtjQVZBQUFBQUFBQUFBREFpZ1N1QUFBQUFBQUFBQUFBVmlSd0JRQUFBQUFBQUFBQXNDS0JLd0FBQUFBQUFBQUFnQlVKWEFFQUFBQUFBQUFBQUt4STRBb0FBQUFBQUFBQUFHQkZBbGNBQUFBQUFBQUFBQUFyRXJnQ0FBQUFBQUFBQUFCWWtjQVZBQUFBQUFBQUFBREFpZ1N1QUFBQUFBQUFBQUFBVmlSd0JRQUFBQUFBQUFBQXNDS0JLd0FBQUFBQUFBQUFnQlVKWEFFQUFBQUFBQUFBQUt4STRBb0FBQUFBQUFBQUFHQkZBbGNBQUFBQUFBQUFBQUFyRXJnQ0FBQUFBQUFBQUFCWWtjQVZBQUFBQUFBQUFBREFpZ1N1QUFBQUFBQUFZQVBtZys0d3Q5ZEdBdURSYStWUmJuMGpBZFNKd0JVQUFBQUFBQUJzeG5uWkFMaEhHVW85Nll4bVk2TUIxSW5BRlFBQUFBQUFBR3hBWnpTYjVtNHlIM1RIUmdQZ1IyWFlhcElFVTRFYUVyZ0NBQUFBQUFDQXpUbk43VmpvQ3VEZTYrT042bFpBSFFsY0FRQUFBQUFBd0laMFJyT2IzQTF6ZXpjZmRQdEdCT0JiZGF0eFhCZHpPekVhUUIyOVdpd1dSZ0VBQUFBQUFBQTJhRDdvWHVidU1MZjNxcmtBTGI4ZVJtV3JEN2w5eWRmRFl5TUMxSkVLVndBQUFBQUFBTEI1dzdML3JOSVYwRmJsOWUvRG5lc2lRTzBJWEFFQUFBQUFBTUNHZFVhelNlNitsTitlemdmZEk2TUN0RWtadHZwY2Z2c3hYeGVuUmdXb0s0RXJBQUFBQUFBQTJJNm81dkkxdDczY0prSlhRRnZjQ1Z0ZDUzWnFWSUE2RTdnQ0FBQUFBQUNBTFNpcnVTeERCa0pYUUN2Y0NWdUZZYjRlM2hnWm9NNWVMUllMb3dBQUFBQUFBQUJiTWg5MHA3bmJMNytOaWxlOXptaDJhV1NBQmw3dklsUTZTVVhJTkZ6azYxM1B5QUIxcDhJVkFBQUFBQUFBYkZmLzF0Y3FYUUdOZEUvWTZ1NzFENkMyQks0QUFBQUFBQUJnaXpxajJTUjNYMjc5U09nS2FKUUh3bFlmeTZWVkFXcFA0QW9BQUFBQUFBQzJiNWlLNVFTWGhLNkFSbmdnYkhXZDI2blJBWnBDNEFvQUFBQUFBQUMyckt6eWNuTG54MEpYUUswOUVMWUsvWHpkdXpGQ1FGTUlYQUVBQUFBQUFNQU9kRWF6cVBaeWRlZkhRbGRBTGVYclZqL2RIN2I2VWk2bEN0QVlBbGNBQUFBQUFBQ3dPLzE3ZmlaMEJkUktHYmI2bkg0T1czMTk0RG9IVUdzQ1Z3QUFBQUFBQUxBam5kSHNNbmNmNy9sZlFsZEFMZHdLVzkxbmFDbEJvSWtFcmdBQUFBQUFBR0MzWW1uQjYzdCtIcUdydjhzd0EwRGwvQ0pzZGRFWnpjWkdDV2dpZ1NzQUFBQUFBQURZb2JMNlMvK1JtM3dXdWdLcUpsK1hJaXo2VU5qS1VvSkFvd2xjQVFBQUFBQUF3STUxUnJOSjdqNDljcE1JWFEyTkZGQUYrWG8wenQySFIyNXlrcTlyVXlNRk5OV3J4V0poRkFBQUFBQUFBR0RINW9QdTY5eGQ1cmIveU0zT09xTlozMmdCTzd4T2pYTjcrOGpOWWluQm50RUNta3pnQ2dBQUFBQUFBQ3BpUHVqMmN2ZlhMMjUybHR1d1hJb1FZRnZYcHdoYlRYSTdmT1Jtc1pUZ2tlcFdRTk5aVWhBQUFBQUFBQUFxWW9XbEJjTzczQ1psK0FGZzQvTDE1aWdWRmZnT2YzSFRvYkFWMEFZcVhBRUFBQUFBQUVERnpBZmRWWUlOMTdrZGQwYXpTeU1HYlBCNjFNdmRlVzU3djdqcGwzdzlPalppUUJ1b2NBVUFBQUFBQUFEVjAxL2hOdnVwcUhRbDRBQnNSTDYreExVb2xqbjlWZGpxNjRyWExZQkdFTGdDQUFBQUFBQ0FpaW1yVnYyK3drMGpCUEhmK2FBN05HckFPdVhyeWpoM24xZThlVDlmdDI2TUd0QVdsaFFFQUFBQUFBQ0FpcG9QdXBQY3ZWbng1bWVkMGF4djFJQVhYbmRlcDJJSndWV3ZQWi95dFVmb0UyZ1ZGYTRBQUFBQUFBQ2d1bUs1d0s4cjN2YmRmTkM5TE1NU0FFK1dyeDlIdVlzS2U2dUdyYTV5T3pGeVFOc0lYQUVBQUFBQUFFQkZsVXQwOVovd0s0ZTVUY3ZRQk1ESzhuVWpyaldUM1BaWC9KVUlnMXBLRUdnbGdTc0FBQUFBQUFDb3NNNW9Ga3Q3ZlhyQ3Iremw5dmQ4MExYRUY3Q1NmTDA0emQzbjh2cXhxbUcrUGwwYVBhQ05YaTBXQzZNQUFBQUFBQUFBRlJmTEJhYWlndFZUbktVaUZLRUNEWERmZFNXV0lJMVE1NXNuL3VwWnZxNzBqU0RRVmlwY0FRQUFBQUFBUUQwY3AySUpyNmQ0bDl2RUVvUEFYZm02ME12ZE5EMDliSFdWbXdwNlFLc0pYQUVBQUFBQUFFQU5kRWF6YWU3NnovalZxSW9Wb2F1K1VRUkN2aDZjNU82djlMUWxCRU9FUHZ1cTVnRnRaMGxCQUFBQUFBQUFxSkg1b0h1YXV3L1AvSFZMREVLN3J4L1BYVUp3NlgyK2ZveU5KTkIyQWxjQUFBQUFBQUJRTS9OQmQ1S2VINWk0enUyNE01cGRHa2xvMVhVamxpVWRwNmRYdFZvNnk5ZU52cEVFc0tRZ0FBQUFBQUFBMUZFRUo2NmYrYnY3dWYxZExpa0dORnhVdFNvcjQvMDNQVDlzZFNWc0JmQ2RDbGNBQUFBQUFBQlFRL05COXloM2svVDhBRVc0eUszZkdjMm1SaFFhZTUwWTUzYjRncnY1bXR1QnBVZ0J2bFBoQ2dBQUFBQUFBR3FvWEJKdytNSzdpV1VKTCtlRDd0Q0lRck9VVmV6K1RpOExXNFdlc0JYQWoxUzRBZ0FBQUFBQWdCb3Jsd3I3c0lhN1V1MEttbkZOV0VkVnE2WDMrWm93TnFvQVAxTGhDZ0FBQUFBQUFHcXNNNXBGZGFxTE5keVZhbGRRYzJ1c2FoWE9oSzBBN3FmQ0ZRQUFBQUFBQU5UY2ZOQjluYnRKV2svSUlxaDJCZlc2QnF5enF0VzNhMEErLzN0R0Z1QitLbHdCQUFBQUFBQkF6WFZHczV2YzlYUDd1cWE3Vk8wS2FpRENsbXV1YWhXdWNqczJ1Z0FQVStFS0FBQUFBQUFBR3FLc2N2UDNtdTgyd2hkUjdlclNDRU9senZkZUtxcGE3YS94YmlPMGVhUzZIY0RqQks0QUFBQUFBQUNnUWVhRGJqOTNuemR3MTU5eU95bXJhUUc3TzhjUGNuZWEyOXMxMzNXRXJYckNsUUMvWmtsQkFBQUFBQUFBYUpET2FEYk8zZThidU9zUHVVM0xRQmV3QStVeW54R0llcnVCdXg4S1d3R3NSb1VyQUFBQUFBQUFhS0Q1b0R2TzNic04zZjFGRXM2QWJaN1B2YlQrNVFOdmUxK0dOUUZZZ2NBVkFBQUFBQUFBTk5TR1ExZkJNb093MlhQNElHMW0rY0RienZJNTNEZmFBS3NUdUFJQUFBQUFBSUNHbWcrNnIzTTN5ZTF3Zy8vTTE5eE9PNlBaaVJHSHRaNjdzWHpnSHh2K3A0U3RBSjVCNEFvQUFBQUFBQUFhYkV1aHEzQ2RpbXBYWTZNT0x6cG5JMmgxa3R2ZWh2K3BML2w4UFRiaUFFOG5jQVVBQUFBQUFBQU50OFhRVmJoSVJmQnFZdVRoU2VkcFB4VkJxLzB0L0hOWHVmVXNCd3J3UEFKWEFBQUFBQUFBMEFMelFmY29GYUdydlMzOWt4RzhHblpHczB1akQ0K2VtNzFVQkszZWJPbWZGTFlDZUNHQkt3QUFBQUFBQUdpSkhZU3V3bGtxS2w1TkhRSDQ0WHpzcGUwR3JZS3dGY0FhQ0Z3QkFBQUFBQUJBaSt3b2RCVUVyeUR0TEdnVmhLMEExa1RnQ2dBQUFBQUFBRnBtaDZHcklIaEZXOCs3WHRwTjBDcGM1M1lrYkFXd0hnSlhBQUFBQUFBQTBFSTdEbDJGTDdtZGRrYXppYU5CdzgrMVh0cGQwQ3A4VFVWbHEwdEhBMkE5Qks0QUFBQUFBQUNncFNvUXVnb1hxYWg0TlhGRWFOajUxVTlGMEdwL2g1c2hiQVd3QVFKWEFBQUFBQUFBMEdJVkNWMkZXUElzZ2xkalI0VWFuMCt2YzlmUGJaaDJHN1JhbmxQSHdsWUE2eWR3QlFBQUFBQUFBQzFYb2RCVmlJbzhwNmxZYnZERzBhRW01OUJCS2tKVy9ZcWNSMWVwcUd6bEhBTFlBSUVyQUFBQUFBQUFvR3FocTZXelZBU3ZWT2locXVkTkx4VkJxN2NWMml4aEs0QU5FN2dDQUFBQUFBQUF2cWxvNkNwRWdDU3FYcDBMa1ZDQjg2Ukt5d2JlZDY0SVd3RnNtTUFWQUFBQUFBQUE4STh5ZERYTzdiQ0NteGZMRFo0blZhL1l6Ym5SUzBYUTZsMUZOMUhZQ21CTEJLNEFBQUFBQUFDQUg1UVZmQ2FwbXFHcnBRaVhqS01KbUxEQmMrRWdGU0dyYVBzVjN0UXZzWTNPQllEdEVMZ0NBQUFBQUFBQWZsS1QwTlZTaEUwaWVIWHV5TEdtdVgrY2lwRFZteHBzOGxtZSszMUhEbUI3Qks0QUFBQUFBQUNBQjgwSDNYR3E3aEpxZHkyWEhEd1h2dUlaYzMwWnNucGJvODMrbE9mNjBORUQyQzZCS3dBQUFBQUFBT0JSTlF0ZExRbGZzY3JjanBEVnN1M1ZiUFBmNTdrOWRoUUJ0ay9nQ2dBQUFBQUFBUGlsK2FEYno5M25tbTYrOEJYTGVieGNMakJhTDlVdlpMV2N6ME5oSzREZEViZ0NBQUFBQUFBQVZsS0dyazVUUFVNcXQzMUpSUUJyMGhuTnBvNXM0K2Z0UWZvZXNucFQ4OTJKc0ZVdno5dExSeFpnZHdTdUFBQUFBQUFBZ0pYTkI5MmozRTFTL1VOWFMxZmwva1QxcTRrajNJZzVHbFdzZW1XTGtOVitnK1pxaEsxdUhHV0EzUks0QWdBQUFBQUFBSjZrRExSTWNqdHM0TzU5S2ZkdG9vcFFyZVprTDMwUFdiMXA2THpzQzFzQlZJUEFGUUFBQUFBQUFQQmtaZWdxbGhkODErRGRqT1hiSm1XN1ZBR3JVdk92bDVvZHNMcnRZNTU3SjQ0NlFIVUlYQUVBQUFBQUFBRFBOaDkwaDduN3MwVzdmSkhLQUZZcVFsaFRzMkRqYyt3Z0ZjR3FvN0kvYk1tdVIrQXZxbHFkbXdVQTFTSndCUUFBQUFBQUFMeElXVzBvUWlGN0xkejlDTVZFK0dxU2hMRFdNWmNpVkhXUXZvZXJqbG82cjY1U0ViYXlyQ1ZBQlFsY0FRQUFBQUFBQUM5V1ZpR0swTldoMGZnbmhCVnRtcjRIc1c0TXpRL3pKVnF2N0tPOU1UTGZmRWxGMk1wOEFhZ29nU3NBQUFBQUFBQmdiZWFEN21udVBoaUpCOFdTaEJHa1dZYXh2clVtVnNXNkZhcUtLbFd2Yi9XQ1ZRLzdQYytGVThNQVVHMENWd0FBQUFBQUFNQmF6UWZkNDl5TlV6dVhnbnVKNjFRRXNKYUJyRlQyeTBwSGxhaVNkU3RJbGRMMzZsU2hWL1pIanYyVFJWVzA0M3g4SjRZQ29Qb0VyZ0FBQUFBQUFJQzFzOFRnVmx6YytmNTJVT3NsZXZmOFRGV3F6YkdFSUVETkNGd0JBQUFBQUFCQVE4d0gzVml1cmRjWnpjNHJ0RTJXR0lTSFZXb0p3YWhPVjZYckIwQlYvY3NRQUFBQUFBQUFRRE9VRlhKNjgwSDNxRUxiTk16ZGI2bFlNZzBvWE9YMjc0cUZyZnFwV0E0U2dGOFF1QUlBQUFBQUFJQm1pUURIZWNWQ1Y1UGNIYVJpNlRSb3UwK3BxRVIzV1pVTktxOFh3N3hOSnc0UHdLOVpVaEFBQUFBQUFBQWFaajdvbnVUdU9CV2hqcHVLYlZzL0ZhR3dQVWVLbHJuT3JWOEdFS3QwVGtiWUtyWXBBbGRqaHduZzExUzRBZ0FBQUFBQWdPYUpRTk5CYnBQNW9QdTZTaHRXQmpvaTRISGhNTkVpVWRYcXFJSmhxN2creERaZENsc0JyRTdnQ2dBQUFBQUFBQnFtckdvMXpPMHdGV0dLcW0zZk5MZGUvdkwzM0w0NllqUllWTFg2TGMvM1lRV3J6UzNEVmxGdDdzU2hBbGlkd0JVQUFBQUFBQUEwVUZtdEpxcElIYzRIM1hGRnQzRlppZXVMSTBZRFZiS3FWYmdWdG9wUTVsa1Z0eEdneWw0dEZndWpBQUFBQUFBQUFBMDBIM1I3dWZ1ci9EWkNGZjBLYit0eEtwWkMzSGZrcUxtcjNJWlZEVEhkQ1Z0Rmhia0loVTBkTm9EVnFYQUZBQUFBQUFBQURWVUdQczdLYjk5VnRkSlZ1YTNudVR0S1JWVWdxS01JTDMzTWMvbW80aFdqWXRzT3k2OVBoYTBBbms2Rkt3QUFBQUFBQUdpd3Nwck5OTGU5OGtlVnJuUlZibk1FcjZMYTFSdEhrSnFJWlRHSFZROHZsYUhMZCtXMzEzbDdEeHc2Z0tjVHVBSUFBQUFBQUlDR213KzZ3OXo5ZWV0SGxROWRsZHNkMnhqQnF6MUhrWXE2enExZjhZcFd5L05wbkw2SHJjSnZkZGh1Z0NvU3VBSUFBQUFBQUlBV21BKzZrL1JqeGFpNmhLNmlRbGNFeHY1d0ZLbVFXRDd3Sko5RHB6VTUvOGZweDdCVkxjNS9nS29TdUFJQUFBQUFBSUFXS0pmcCsvdk9qMnNUdXNqYmY1QzdrL1JqYUFSMjRWTXF3bFkzTlRodklyQjRubjRNVzBaWTdLQU8ydzlRVlFKWEFBQUFBQUFBMEJMelFmY2svVndwcWxhVmJ2SSs5RklSdkhyamlMSmxaNmtJV2sxcmNxNUUyR3FTMitHZC8vVSs3OFBZNFFSNFBvRXJBQUFBQUFBQWFJa3lnSEdaMi82ZC8xVzc1Y1VFcjlpaWk5eUcrUnk1ck5tNVBray9oNjB1OG43MEhGS0FseEc0QWdBQUFBQUFnQllwZzBwLzNmTy9JbFJ5WExkbHh2TCs5Rk1Sdk5wM2RGbXpPQ2Vpb3RXa1p1ZkVRMkdyV0Vyd3FDNFZ1Z0NxVE9BS0FBQUFBQUFBV21ZKzZKN203c005LytzcXQxN2RRbGZsUHZXVDRCWHJVY3VnVlhrZUhPWHUvSUh6NFBlOFQ2Y09MOERMQ1Z3QkFBQUFBQUJBeXp5eXRHQ0kwTlZ4WGF2ZzVIMDd6dDB3V1dxUXA2dHQwS3FjK3hHMmltM2Z1Mi9mTENVSXNENENWd0FBQUFBQUFOQkNqeXd0R0dMcHNhaDBkVm56L1R0SmdsZjgybGx1cHpXZjd4RTBIS2Y3dzFhV0VnUllNNEVyQUFBQUFBQUFhS2xIbGhZTUVkTG9kMGF6ODVydjQwRXFnbGZ2SEhIdXpPOXhLb0pXMDVyUDhYN3VQajl5RTBzSkFxeVp3QlVBQUFBQUFBQzBWTG0wNENTM3cwZHU5cjR6bW8wYnNxK3gxR0EvM2IrVUl1MXduVnVFajhaNVh0ODBZRjdIdWZsWW1OQlNnZ0FiSUhBRkFBQUFBQUFBTFRZZmRJOXk5L2N2Ym5iV0djMzZEZHJuMkpkb2xodHNqeStwcUdZMWFjZ2NqZ0RoT0xlM2o5d3NxbmdkTkNGWUJsQTFBbGNBQUFBQUFBRFFjdk5COXlSM2YvemlaaGU1SFRjcHZGRXVON2lzZXJWbkpqUk9WTE1hcDZLYTFiUmg4emFXK2p6OHhVMy9VL2NsUVFHcVN1QUtBQUFBQUFBQWlCREhKUDI2NGxNRVdDSjBkZG5BL1Q5T1JmRHFyZGxRYTFIVktVSkc0NlpVczdvelQzdmwvdjBxSVBncDcvL1FkQURZRElFckFBQUFBQUFBWUxsRTJUVDlPc2dSZ1paaFp6UWJOM2djK21VN05ETnFJNVlNakNEU2VWT1gwTXR6TXdKVWY2NXcwNnZjZXBZU0JOZ2NnU3NBQUFBQUFBRGdtN0xLMDM5WHZIbmpLK2lVUzdjdEsxOEpYMVZQNDBOVzVUeU1FT0E0clZaOUxRS1J2U1pXb1FPb0VvRXJBQUFBQUFBQTRCL3pRZmMwZHg5V3ZIbHJLdW5jQ2w5RmUyT203RXdyUWxhMzV0MVJLc0pXcXdiKzNqZTEraHhBbFFoY0FRQUFBQUFBQUQrWUQ3cFJIV2ZWZ0VkVTFEbnVqR2FURm8xUFZCeUs0Rld2N1BmTW1vMjV6aTNtVmdTc3psdDJIdlp6ZC9xRStYV1d4Nmh2eWdCc25zQVZBQUFBQUFBQThJTXlVRFJOVHdzU2ZleU1aaWN0SGErb1F0UkxxbCt0UXdUNEpzdld4cVh4eXZNdmdsYnZudkJycmFrMkIxQUZBbGNBQUFBQUFBREFUK2FEYmk5M2Z6M3gxeUwwRWRXdXBzWXVMVnVFc1ZUQWVsanJBMVozNWs3TWw2amt0Zi9FTVR4cSsza0hzRTBDVndBQUFBQUFBTUM5NW9QdU1IZC9QdkhYSXZ3eDdJeG1ZeVA0enpoR2lHWlpCU3Y2d3hZUHgwVnVsMldiQ0FuOU1FOU9jdmZITTM3MVAyMWJiaEZnMXdTdUFBQUFBQUFBZ0FmTkI5MXhldHJTWmt0ZmN1dGI0dXpCY2UzbDdxQnN5Ni8zRzdTTDE2bFlsbktTaW5EVnRPM1ZxeDZaQzNIc0l6RDFuQ0JlYTVmeUJOZ2xnU3NBQUFBQUFBRGdRZk5COTNVcVFqUFBDWU5FdGF1KzZqdFBHdTllN21MTW94TFd3YTFXeFRCV0xDRVpnYnJMVzcxZzFkT09kMVNSTzBuUFczYnlTeDdyWTZNSXNIMENWd0FBQUFBQUFNQ2p5Z284RWFMWmUrWmRxSGExbnVPd0RHS0ZnN0tGMnorLzdjMktkLzIxUEw1M1RXNTl2UXhWcFh3Y0o0N0dXczZwOFJPTzBWMFJkdXM1cHdCMlErQUtBQUFBQUFBQStLWDVvQnVCbnI5ZmNCZXFYVUY2Y1ZXcjVibDBsTStscWRFRTJBMkJLd0FBQUFBQUFHQWw4MEczbjd2UEw3eWJxSFkxRkJhaGhlZFBoQmJINlhuTGN5NUYyS3BuMlVhQTNSSzRBZ0FBQUFBQUFGWTJIM1JQY3ZmSEMrOG1RaU9ubmRIc3hJalNnbk1tbG55TXVmNWhEWGYzUHA4M1k2TUtzRnNDVndBQUFBQUFBTUNUekFmZGNlN2VyZUd1cmxKUjdXcGlWR25vdVhLY3U5UGM5dGR3ZDcvbmMrWFVxQUxzbnNBVkFBQUFBQUFBOEdUelFYZVN1emRydXJ1ejNFNHNNMGlEem8rRFZDd2Z1TFp6Sko4ZmZTTUxVQTMvTWdRQUFBQUFBQURBTTBUbG5xczEzVmRVeTdvc2x5dUUyb3JsQTNPTEtsVC9sNFN0QUJwTGhTc0FBQUFBQUFEZ1dTSmNrcnRKYm9kcnZOdnJWRlM3R2h0aGFuWStER1B1NXJhM3hydU5VR012bnc4M1JoaWdPZ1N1QUFBQUFBQUFnR2ViRDdwSHFRaGQ3YTM1cmk5U0VieWFHR1VxZmc3MFV4RzAybC96WFF0YkFWU1V3QlVBQUFBQUFBRHdJaHNNWFFYQks2bzY3M3U1aStVRER6ZHc5OEpXQUJVbWNBVUFBQUFBQUFDODJJWkRWK0VzRmNHcnFkRm14M085bDRxS1ZtODI5RS9Fc3BwSHdsWUExU1Z3QlFBQUFBQUFBS3pGRmtKWFFmQ0tYYzN2WHRwczBDcDhUVVZscTBzakRsQmRBbGNBQUFBQUFBREEybXdwZEJVaWVEVzIxQ0JibU5POXRQbWdWUkMyQXFnSmdTc0FBQUFBQUFCZ3JiWVl1Z29YcWFoNE5USHlySGtlOTNNM3pPMXdDLytjc0JWQWpRaGNBUUFBQUFBQUFHdTM1ZEJWdU1ydHRET2FqWTArTDVpM3IzTjNuSXFLVnZ0YittZUZyUUJxUnVBS0FBQUFBQUFBMklnZGhLN0NkVzdqVklTdmJod0ZWcHlyQjZtb1p0WGY4bndWdGdLb0lZRXJBQUFBQUFBQVlHTjJGTHBhT2t0RjhFcVloWWZtWjFTejZ1ZjJkZ2YvZkZSbDZ3a0dBdFNQd0JVQUFBQUFBQUN3VVRzT1hZVnZ5dzNtZGk3Y1Fsbk5xbCsyL1IzT1NXRXJnSm9TdUFJQUFBQUFBQUEycmd4ZGpYTTczT0ZteFBKdDU3RWRuZEZzNHFpMGJnN3VzcHJWYmNKV0FEVW5jQVVBQUFBQUFBQnN4WHpRZloyS1NsZUhGZGljNjFTRXIyTEp3YW1qMDlnNUYwRy9mdG4yS3JCSlgySmJoSzBBNmszZ0NnQUFBQUFBQU5pYWlvV3VscUxpMERnVlN3NU9IYVhhejdGbHlDb3FXdTFYYU5QTzh2enFPMElBOVNkd0JRQUFBQUFBQUd6ZGZOQWQ1KzVkQlRkTitLcWU4Nm1xSWF1bGozaytuVGhTQU0wZ2NBVUFBQUFBQUFEc3hIelFQY25kSHhYZXhPV3lnK1BPYUhicGlGVnUva1M0cXBlcUc3SmFlcC9uejlnUkEyZ09nU3NBQUFBQUFBQmdaK2FEYmo5M24ydXdxVjlURWI2YVJGUDlhaWR6NVNBVjRhcGVibTlyTW1kNndub0F6U053QlFBQUFBQUFBT3hVdVJ6Y0pMZTlHbTMyVmJuTjMxcG5OTHR4Sk5jK0x3NVNFYTVhdHYyYXpZKytzQlZBTXdsY0FRQUFBQUFBQURzM0gzUmZweUs4ZEZqVFhWZ0dzQ0pnb3dMVzgrWkFCTytpOVZMOUFsYTNmVWxGMkVvSUQ2Q2hCSzRBQUFBQUFBQ0FTaWhEVjZlNXZXdkE3c1J5Y3BOVUJyQ2lGOEQ1NFZnZnBDSmN0UXhZUmIvWGdGMzdtSS96aVNNTTBHd0NWd0FBQUFBQUFFQ2x6QWZkWWU3K2JPQ3VSUWhyR2NDYVJ1dU1acE9HSDhzSTBTMkRWUWUzdnQ1cjRMR05xbGJuem1DQTVoTzRBZ0FBQUFBQUFDcW5YRjR1d2l2N0xkamRaUkFyMnMzdHZnNVZzVzZGcXBiOVFmb2VydHByd2ZHTDVTU1BMU01KMEI0Q1Z3QUFBQUFBQUVBbGxVR2VjVzV2V3o0VTE2bW9pQlVtdDM1KysrdWJ6bWgydWNheDc5MzZkaG1rV2xyK3Y0UFVqa0RjWXo3bGNSODZXd0hhUmVBS0FBQUFBQUFBcUxRR0x6RzRiVkdKS1NwbVJZRHEwSEM4aUNVRUFWcE00QW9BQUFBQUFBQ292SEtKd1hFU0ZHTDNMbElSdHBvYUNvQjJFcmdDQUFBQUFBQUFhcUZjWXZBa3R3OUdneDM1MkJuTlRnd0RRTHNKWEFFQUFBQUFBQUMxTWg5MGU2bW9kclZ2Tk5pU1dJNHhxbHBkR2dvQUJLNEFBQUFBQUFDQTJpbXJYWjNtOXM1b3NHR3FXZ0h3QTRFckFBQUFBQUFBb0xaVXUyS0RWTFVDNEY0Q1Z3QUFBQUFBQUVDdGxkV3VUbkw3WURSWWc2KzVuYXBxQmNCREJLNEFBQUFBQUFDQVJwZ1B1a2VwcUhaMWFEUjRwb3RVVkxXYUdnb0FIaUp3QlFBQUFBQUFBRFRLZk5BZHBxTGkxWjdSWUVYWHVRMDdvOW01b1FEZ1Z3U3VBQUFBQUFBQWdNYXh6Q0FyK3JaOFlDcVdFTHd4SEFDc1F1QUtBQUFBQUFBQWFLejVvSHVRaW1VRzN4Z043ampMN2NUeWdRQThsY0FWQUFBQUFBQUEwSGp6UWJlWGlrcEdoMGFqOVM1U3NYemdwYUVBNERrRXJnQUFBQUFBQUlEV21BKzYvVlFzTmJodk5Gb25nbFpSMFdwaUtBQjRDWUVyQUFBQUFBQUFvSFVFcjFybE9oVVZyYzROQlFEcklIQUZBQUFBQUFBQXRKYmdWYU5GUmF0eFp6UWJHd29BMWtuZ0NnQUFBQUFBQUdnOXdhdEdzWFFnQUJzbGNBVUFBQUFBQUFCUW1nKzZ2VlFFcjk0WWpkbzVTMFZGcTRtaEFHQ1RCSzRBQUFBQUFBQUE3cGdQdWdlcENGNGQ1N1puUkNycmEyNm5xUWhhVFEwSEFOc2djQVVBQUFBQUFBRHdnUG1nK3pvVm9hdGhib2RHcERKaTJjQUlXWTBOQlFEYkpuQUZBQUFBQUFBQXNJTDVvSHVVaXVDVnFsZTdjWjNiZVc2bnFsa0JzRXNDVndBQUFBQUFBQUJQTkI5MCs2a0lYcjAxR2hzVlN3Wkd5T3E4TTVxZEd3NEFxa0RnQ2dBQUFBQUFBT0NaYmkwNUtIeTFYbC9TOTZEVmplRUFvRW9FcmdBQUFBQUFBQURXNEU3NHFwY3NPL2dVLzFTeXltMGlaQVZBbFFsY0FRQUFBQUFBQUd6QWZOQmRCcStpSFJxUm4xeWw3MVdzTGcwSEFIVWhjQVVBQUFBQUFBQ3dZYmVxWC9WeU8wcnRER0JGd0dxeWJLcFlBVkJYQWxjQUFBQUFBQUFBVzFZR3NIcXBDRjh0K3lZdFFYaWQyMlhaSnRFTFdBSFFGQUpYQUFBQUFBQUFBQlV3SDNRUFVoRzhXcmI0dmc2VnNDNXltNVp0a29TckFHZzRnU3NBQUFBQUFBQ0FDaXVEV1BlMThHWUxtM0JSOXRNN1RiQUtnRmI2L3dJTUFGNTRwUkFrZlJ5VUFBQUFBRWxGVGtTdVFtQ0MiLz4gICAgPC9nPiAgPC9nPjwvc3ZnPg==",
      Position = { 10, 4 },
      Size = { 116, 25 }
    },

    --Background - I/O Controls
    {
      Type = "GroupBox",
      Position = { 134, 0 },
      Size = { 358 , 320 },
      Fill = Color.CtlBkgnd,
      CornerRadius = 0,
      StrokeColor = Color.Black,
      StrokeWidth = 1,
    },

    --Details Group
    {
      Type = "GroupBox",
      Text = "Details",
      Position = { 4, 226 },
      Size = { 125 , 67 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      --HTextAlign = "Left",
    },
    
    --Connection Group Box
    {
      Type = "GroupBox",
      Text = "Connection Setup",
      Position = { 4, 53 },
      Size = { 125 , 112 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      --HTextAlign = "Left",
    },

    --NIC Label
    {
      Type = "Label",
      Text = "NIC",
      Position = { 8 , 67 },
      Size = { 40 , 14 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Right",
    },

    --Mode Label
    {
      Type = "Label",
      Text = "Mode",
      Position = { 8 , 107 },
      Size = { 40 , 14 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Right",
    },

    --Name Label
    {
      Type = "Label",
      Text = "Unit/IP",
      Position = { 8 ,127 },
      Size = { 40 , 14 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Right",
    },

    --Commms Configuration Background
    {
      Type = "GroupBox",
      Position = { AES67_COL1_OFFSET, 0 },
      Size = { 360 , 320 },
      Fill = Color.CtlBkgnd,
      CornerRadius = 0,
      StrokeColor = Color.Black,
      StrokeWidth = 1,
    },

    --Aes67 Tx GroupBox     
    {
      Type = "GroupBox",
      Text = "AES67 Tx Setup",
      Position = { AES67_COL2_OFFSET + 8, AES67_ROW2_OFFSET + 0 },
      Size = { 176 , 158 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      IsBold = true,
      HTextAlign = "Left",
    },

    --AES67 Tx Stream Name Label
    {
      Type = "Label",
      Text = "Stream Name",
      Position = { AES67_COL2_OFFSET + 12 , AES67_ROW2_OFFSET + 12 },
      Size = { 64 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
    },

    --AES67 Tx Stream Address Label
    {
      Type = "Label",
      Text = "Stream IP",
      Position = { AES67_COL2_OFFSET + 12 , AES67_ROW2_OFFSET + 46 },
      Size = { 48 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
    },

    --AES67 Tx Stream Options Label
    --{
      --Type = "Label",
      --Text = "Stream Options",
      --Position = { AES67_COL2_OFFSET + 12 , AES67_ROW2_OFFSET + 66 },
      --Size = { 68 , 16 },
      --Color = Color.White,
      --TextSize = 10,
      --HTextAlign = "Left",
    --},

    --AES67 Tx Stream State Label
    {
      Type = "Label",
      Text = "Stream State",
      Position = { AES67_COL2_OFFSET + 12 , AES67_ROW2_OFFSET + 110 },
      Size = { 60 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Right",
    },

    --AES67 RX stream Group box
    {
      Type = "GroupBox",
      Text = "AES67 Rx Setup",
      Position = { AES67_COL2_OFFSET + 8, AES67_ROW1_OFFSET },
      Size = { 174 , 130 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      IsBold = true,
      HTextAlign = "Left",
    },

    --AES Status Group
    {
      Type = "GroupBox",
      Text = "AES Status",
      Position = { AES67_COL1_OFFSET + 8, AES67_ROW1_OFFSET },
      Size = { 160 , 130 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      IsBold = true,
      HTextAlign = "Left",
    },

    --PTP Clock Sync Label
    {
      Type = "Label",
      Text = "PTP Clock Sync",
      Position = { AES67_COL1_OFFSET + 12 , AES67_ROW1_OFFSET + 14 },
      Size = { 64 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Right",
    },

    --PTP Clock Role Label
    {
      Type = "Label",
      Text = "PTP Clock Role",
      Position = { AES67_COL1_OFFSET + 12 , AES67_ROW1_OFFSET + 34 },
      Size = { 64 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Right",
    },

    --QoS Mode Label
    {
      Type = "Label",
      Text = "QoS Mode",
      Position = { AES67_COL1_OFFSET + 12, AES67_ROW1_OFFSET + 54 },
      Size = { 64 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Right",
    },

    --Device Configuration Group
    {
      Type = "GroupBox",
      Text = "Device Configuration",
      Position = { AES67_COL1_OFFSET + 8 , AES67_ROW2_OFFSET + 0 },
      Size = { 160, 130 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      IsBold = true,
      HTextAlign = "Left",
    },

    --Device Name label
    {
      Type = "Label",
      Text = "Name",
      Position = { AES67_COL1_OFFSET + 12 , AES67_ROW2_OFFSET + 14 },
      Size = { 32 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Right",
    },

    --IP condifugration Label
    {
      Type = "Label",
      Text = "IP Address Mode",
      Position = {AES67_COL1_OFFSET + 12 , AES67_ROW2_OFFSET + 34 },
      Size = { 76 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Right",
    },

    --Pilot Tone Group
    {
      Type = "GroupBox",
      Text = "Pilot Tone",
      Position = { AES67_COL2_OFFSET + 12 , AES67_ROW2_OFFSET + 102 },
      Size = { 168 , 52 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      IsBold = true,
      HTextAlign = "Left",
    },

    --Pilot Tone Frequency Label
    {
      Type = "Label",
      Text = "Frequency",
      Position = { AES67_COL2_OFFSET + 72 , AES67_ROW2_OFFSET + 102 },
      Size = { 48 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Center",
    },

    --Pilot Tone Volume Label
    {
      Type = "Label",
      Text = "Volume",
      Position = { AES67_COL2_OFFSET + 132 , AES67_ROW2_OFFSET + 102 },
      Size = { 40 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Center",
    },
  }

  --AES67 Rx Stream Name Labels
  for i=0, 1 do
    table.insert(graphics,{
      Type = "GroupBox",
      Text = "Output "..(i + 1),
      Position = { AES67_COL2_OFFSET + 12, ( i * 50 ) + AES67_ROW1_OFFSET + 16 },
      Size = { 166 , 46 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      IsBold = true,
      HTextAlign = "Left",
    })

    table.insert(graphics,{
      Type = "Label",
      Text = "Stream Name",
      Position = { AES67_COL2_OFFSET + 16 , ( i * 50 ) + AES67_ROW1_OFFSET + 28 },
      Size = { 84 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
    })

    table.insert(graphics,{
      Type = "Label",
      Text = "CH",
      Position = { AES67_COL2_OFFSET + 148 , ( i * 50 ) + AES67_ROW1_OFFSET + 28 },
      Size = { 24 , 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Center",
    })
  end    

  --Input Graphics
  for i=0, 1 do
    --Input group boxes (CH1 & 2)
    table.insert(graphics,{
      Type = "GroupBox",
      Text = "Mic/Line In "..( i + 1 ),
      Position = { ( i * CH_X_OFFSET ) + 140, 10 },
      Size = { 84 , 140 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      IsBold = true,
      HTextAlign = "Left",
    })

    --Input group boxes (CH3 & 4)
    table.insert(graphics,{
      Type = "GroupBox",
      Text = "Line In "..( i + 3 ),
      Position = { ( i * CH_X_OFFSET ) + 312, 10 },
      Size = { 84 , 140 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      IsBold = true,
      HTextAlign = "Left",
    })

    --Input Preamp Control labels
    table.insert(graphics,{
      Type = "Label",
      Text = "Gain",
      Position = { ( i * CH_X_OFFSET ) + 144, 50 },
      Size = { 32, 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
    })

    --Input Select Control labels
    table.insert(graphics,{
      Type = "Label",
      Text = "Input Select",
      Position = { ( i * CH_X_OFFSET ) + 316, 50 },
      Size = { 76, 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Left",
    })
  end

  for i=0, 3 do
    --TX Label Divider
    table.insert(graphics,{
      Type = "GroupBox",
      Position = { ( i * CH_X_OFFSET ) + 146, 46 },
      Size = { 72, 1 },
      Fill = Color.Bkgnd,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
    })

    --Input Channel labels
    table.insert(graphics,{
      Type = "Label",
      Text = "AES67 TX CH "..(i +1 ),
      Position = { ( i * CH_X_OFFSET ) + 144, 136 },
      Size = { 76 , 16 },
      Color = Color.White,
      TextSize = 8,
      HTextAlign = "Center",
    })
  end

  --Output Graphics
  for i=0, 1 do
    --Output group boxes
    table.insert(graphics,{
      Type = "GroupBox",
      Text = "Line Out "..(i + 1),
      Position = { ( i * CH_X_OFFSET ) + 140, 164 },
      Size = { 84, 148 },
      Fill = Color.Bkgnd,
      CornerRadius = 4,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
      TextSize = 9,
      IsBold = true,
      HTextAlign = "Left",
    })

    --RX Label Divider
    table.insert(graphics,{
      Type = "GroupBox",
      Position = { ( i * CH_X_OFFSET ) + 146, 200 },
      Size = { 70, 1 },
      Fill = Color.Bkgnd,
      StrokeColor = Color.White,
      StrokeWidth = 1,
      Color = Color.White,
    })

    --Output Volume labels
    table.insert(graphics,{
      Type = "Label",
      Text = "Volume",
      Position = { ( i * CH_X_OFFSET ) + 144, 200 },
      Size = { 40, 16 },
      Color = Color.White,
      TextSize = 10,
      HTextAlign = "Right",
    })

    --Fader levels labels
    for j=0,6 do
      table.insert(graphics,{
        Type = "Label",
        Text = tostring( 0 - (j * 10) ),
        Position = { ( i * CH_X_OFFSET ) + 200, 203 + (j * 10)},
        Size = { 20 , 7 },
        Color = Color.White,
        TextSize = 6,
        HTextAlign = "Center",
        VTextAlign = "Center",
      })
    end

    --Output Channel Labels
    table.insert(graphics,{
      Type = "Label",
      Text = "AES67 RX CH "..(i +1 ),
      Position = { ( i * CH_X_OFFSET ) + 144, 298 },
      Size = { 76, 16 },
      Color = Color.White,
      TextSize = 8,
      HTextAlign = "Center",
    })
  end

  return layout, graphics
end


function GetPins(props)
  local pins = { }
  return pins
end


function GetComponents(props)
  return 
  {
    {
      Name = "nic_storage",
      Type = "scriptable_controls",
      Properties = 
      {
        ["config"] = '[{"Name":"Core","ControlType":"Text","ButtonType":"Momentary","TextType":"TextBox","IndicatorType":"Led","ControlUnit":"dB","PinStyle":"None","Min":-100.0,"Max":12.0,"Count":1.0},{"Name":"Emul","ControlType":"Text","ButtonType":"Momentary","TextType":"TextBox","IndicatorType":"Led","ControlUnit":"dB","PinStyle":"None","Min":-100.0,"Max":12.0,"Count":1.0},{"Name":"lastIP","ControlType":"Text","ButtonType":"Momentary","TextType":"TextBox","IndicatorType":"Led","ControlUnit":"dB","PinStyle":"None","Min":-100.0,"Max":12.0,"Count":1.0},{"Name":"lastname","ControlType":"Text","ButtonType":"Momentary","TextType":"TextBox","IndicatorType":"Led","ControlUnit":"dB","PinStyle":"None","Min":-100.0,"Max":12.0,"Count":1.0}]'
      }
    }
  }
end


function GetWiring(props)
  local wiring = {}
  return wiring
end


if Controls then -- Start of runtime Lua code
-- Subtract 31 from any error line numbers for actual error line
--********************************************************************************
--* Aliases
--********************************************************************************
cbNic = Controls.NIC
cbMode = Controls.Mode;
editIPAddr = Controls.IPAddress
editDeviceName = Controls.DeviceName
cbUnitName = Controls.UnitName
btnRefresh = Controls.Refresh
btnIdentify = Controls.Identify
btnConnect = Controls.Connect
ledConnected = Controls.Connected
btnMetering = Controls.Metering
btnSave = Controls.SaveAsDefaultBtn
editStatus = Controls.Status
cbIGain = Controls.InputGain
btnPhantom = Controls.PhantomPower
cbISelect = Controls.InputSelect
fdrOVolume = Controls.OutputVolume
btnOMute = Controls.OutputMute
txtDetails = Controls.Details
ledSignalIn = Controls.SigPresIn
ledSignalOut = Controls.SigPresOut
editTxStreamName = Controls.TxStreamName
editTxStreamIP = Controls.TxStreamIP
ledTxStreamState = Controls.TxStreamState
btnTxStreamEnable = Controls.TxStreamEnable
cbRxStreamName = Controls.RxStreamName
cbRxStreamCh = Controls.RxStreamChannel
ledRxStreamState = Controls.RxStreamState
btnRxStreamApply = Controls.RxStreamApply
ledPTPClk = Controls.PTPClockSync
editPTPClk = Controls.PTPClockRole
editIPMode = Controls.IPAddrMode
cbQoSMode = Controls.QoSMode
editAES67Name = Controls.AES67Name
editPilotFreq = Controls.PilotToneFreq
editPilotVol = Controls.PilotToneVol
btnPilotEnable = Controls.PilotToneEnable


--********************************************************************************
--* Constants
--********************************************************************************
local VENDOR_ID        = "0x41747465726f5400"
local PROD_ID          = "0x000000000000000d"

local IP_PATTERN       = "[012]?%d?%d+%.[012]?%d?%d+%.[012]?%d?%d+%.[012]?%d?%d"
local UDP_PORT         = 49494
local BIN_PORT         = 49495
local COLOR_ON         = "#FF7F00"
local COLOR_OFF        = "#636363"
local TX_STREAM_PORT   = 5004
local PROTOCOL_VERSION = 2
local ERROR            = 1
local OK               = 0


--********************************************************************************
--* Enumerated types
--********************************************************************************
local ISELECT     = {{"A [RCA-L]", "B [3.5mm-L]", "A+B [Both-L]"} , {"A [RCA-R]", "B [3.5mm-R]", "A+B [Both-R]"}}
local IGAINS      = {"-18.0", "-3.0", "+25.0", "+40.0"}
local IGAINS_DISP = {"Line (-15dB Pad)", "Line (No Pad)", "Low Mic (+25dB)", "High Mic (+40dB)"}
local ON_OFF      = {"ON", "OFF"}
local QOS_MODE    = {"Dante", "AES67", "Other"}
local PTP_CLOCK   = { [0]="Master", [1]="Uncertain", [2]="Slave", [3]="Disabled" }
local TX_STR_OPT  = {"None", "Pilot tone", "Mix down"}

                     --Green   Orange    Red        Grey            Red          Blue
local STATUS_STATE = { OK = 0, WARN = 1, FAULT = 2, NOTPRESENT = 3, MISSING = 4, INITIALIZING = 5 }


--********************************************************************************
--* Global objects/variables
--********************************************************************************
e = System.IsEmulating
local lastDev = { ip = nic_storage.lastIP, name = nic_storage.lastname }
local nic_storage = nic_storage[tostring(e and "Emul" or "Core")]
local deviceUDP = UdpSocket.New() -- Create UDP object for device control
local deviceBIN = UdpSocket.New() -- Create BIN object for device control
local deviceSTA = UdpSocket.New() -- Create STA object for status control
local dataTimer = Timer.New()
local healthTimer = Timer.New()
local discovered = {}
local details = {}
local ipLookup = {}
local msgQueue = {}
local streams = {}
local commErrCnt = 0
local localIP = ""
local mtr_ip = ""   --Added for lcoa storage as no visible controls for this value
local mtr_prt = 0   --Added for lcoa storage as no visible controls for this value
local sta_prd = 0   --Added for lcoa storage as no visible controls for this value
local mtr_prd = 0   --Added for lcoa storage as no visible controls for this value


--********************************************************************************
--* Debug display/print functions
--********************************************************************************

--********************************************************************************
--* Function: DisplayData
--* Description: Prints data from a table
--********************************************************************************
function DisplayData(data)
  for k,v in pairs(data) do
    if type(v) == "table" then
      for a,b in pairs(v) do
      print("  --"..k, " ", a, " ", b)
    end
    else
      print("  "..k, " ", v)
    end
  end
end

  
--********************************************************************************
--* Function: DebugFormat
--* Description: Format strings containing non-printable characters so we can see 
--*              what they are
--********************************************************************************
function DebugFormat(string, hex)
  local visual = ""
  for i = 1, #string do
    local byte = string:sub(i, i)
    if hex ~= nil then
      if string.byte(byte) >= 33 and string.byte(byte) <= 126 or string.byte(byte) == 0x20 then
        visual = visual..byte
      else
        visual = visual..string.format("\\x%02x", string.byte(byte))
      end
    else
      visual = visual..string.format("[%02X]", string.byte(byte))
    end
  end
  return visual
end


--********************************************************************************
--* Discovery Functions
--********************************************************************************

--********************************************************************************
--* Function: Find(a, t)
--* Description: Finds if a value exists a given array 
--********************************************************************************
local function Find(a, t) 
  local f = false 
  for _,_a in pairs(t) do 
    f=a==_a 
    if f then 
      break 
    end 
  end 
  return f 
end


--********************************************************************************
--* Bonjour Bits on Core - Adjusts for 5.4/6.0 method change
--********************************************************************************
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


--********************************************************************************
--* Function: mDNSBrowse()
--* Description: Event handler for mDNS events (Core only)
--********************************************************************************
function mDNSBrowse()
  if not e then
    mDNS = BonjourBrowser.New()
    mDNS.EventHandler = function( record ) -- record contents Domain=local. Type=_Attere-ad._udp. NetIf=2 Added=true Name=(friendly name)
      --DisplayData(record)
      if record.Type == "_attero-ad._udp." then
        if record.Added then
          local r = BonjourResolver.New()
          r.EventHandler = function( rc )
            --print("Resolver event:", rc.Values.Model)
            local model = rc.Values.Model
            if model ~= nil then
              if model == "unA6IO" then
                --DisplayData(rc)
                --ResolveBonjourName(     name,                     friendly,                                  model, DiscTable,  IPLuTable, makedisplayList, killtime)
                ResolveBonjourName(string.match(rc.Target,"(.+)%."),string.match(rc.Name,"(.+)%._attero%-ad"), model, discovered, ipLookup, MakeDisplayList, .06)
              end
            end
          end
          r:Resolve( record )
        else
          DeleteBonjourEntry(record.Name)
        end
      end
    end   
    mDNS:Start( "_attero-ad._udp", 0, "local" )
  end
end


--********************************************************************************
--* Function: DeleteBonjourEntry(friendly)
--* Description: 
--********************************************************************************
function DeleteBonjourEntry(friendly)
  --print("DeleteBonjourEntry()")
  if ipLookup[friendly] ~= nil then
    local ipa = ipLookup[friendly]
    if discovered[ipa] ~= nil then
      if discovered[ipa].Name == friendly then
        discovered[ipa] = nil
        ipLookup[friendly] = nil
        MakeDisplayList()
      end
    end
  end
end


--********************************************************************************
--* Function: MakeDisplayList()
--* Description: Updates unit control with names of all discovered devices
--********************************************************************************
function MakeDisplayList()
  displayList = {"None"}
  for key,item in pairs(discovered) do
    if item.Name ~= nil then
      table.insert(displayList, item.Name)
    end
  end
  cbUnitName.Choices = displayList
  cbUnitName.EventHandler = UnitHandler
end


--********************************************************************************
--* Function: UnitHandler()
--* Description: Event handler for cbUnitName selection change
--********************************************************************************
function UnitHandler()
  if cbUnitName.String ~= "None" then
    local ipa = ipLookup[cbUnitName.String]
    if ipa ~= nil then
      editIPAddr.String = ipa
      details.IP = ipa
    end
  else
    ledConnected.Boolean = false
    editIPAddr.String = ""
    editDeviceName.String = ""
    editAES67Name.String = ""
    details = {}
  end
  AssembleDetails()
end


--********************************************************************************
--* Function: HideDiscControls()
--* Description: Sets controls based on wether Discovery is manual or not
--********************************************************************************
function HideDiscControls(bool)
  --print("HideDiscControls()")
  cbUnitName.IsInvisible = bool
  editIPAddr.IsInvisible = not bool
end


--********************************************************************************
--* Function: DiscoverDevices()
--* Description: Initiate Discovery of devices
--********************************************************************************
function DiscoverDevices()
  --print("DiscoverDevices()")
  if cbMode.String == "Manual" then
    HideDiscControls(true)
  else
    --This can only happen when running on core  
    HideDiscControls(false)
    MakeDisplayList()
    UnitHandler()
    if e then
      print("Emulate...")
    else
      print("Discovery...")
      mDNSBrowse()
    end
  end
end


--********************************************************************************
--* Function: AssembleDetails()
--* Description: Creates data string for details pane
--********************************************************************************
function AssembleDetails()
  --DisplayData(details)
  local detailstr = {}

  --Details.Name
  if details.Name ~= nil then
    editDeviceName.String = details.Name
    editAES67Name.String = details.Name
  end

  --Details.IP
  if details.MAC ~= nil then
    table.insert(detailstr, "MAC: "..details.MAC)
  end

  --Details.MAC
  if details.IP ~= nil then
      table.insert(detailstr, "IP: "..details.IP)
    end

  --Details.MCU
  if details.MCU ~= nil then
    table.insert(detailstr, "MCU: "..details.MCU)
  end

  txtDetails.String = table.concat(detailstr, "\r")
end


--********************************************************************************
-- General Functions
--********************************************************************************

--********************************************************************************
-- Function: SetSignalLED(ctl, state)
-- Description: Update signal presence LED state based on given value
--              0x00=CLIP, 0x01=HAS SIGNAL, 0xFD=NO SIGNAL, or 0xFF=INVALID
--********************************************************************************
function SetSignalLED(ctl, state)
  if  tonumber(state) >= 0 then
    ctl.Color = "#ff0000"       --red
    ctl.Boolean = true
  elseif tonumber(state) >= -10 and tonumber(state) < 0 then
    ctl.Color = "#FFFF00"       --yellow
    ctl.Boolean = true
  elseif tonumber(state) >=-60 and tonumber(state) < -10 then
    ctl.Color = "#00ff00"       --green
    ctl.Boolean = true
  else                          --inactive and unconfigured
    ctl.Color = "#808080"       --CtlBkgnd
    ctl.Boolean = false
  end
end


--********************************************************************************
-- Function: SetStreamLED(ctl, state)
-- Description: Generic function to update Stream LED state based on given value
--********************************************************************************
function SetStreamLED(ctl, state)
  if state == 1 then            --configured but inactive
    ctl.Color = "#ff0000"       --red
    ctl.Boolean = true
  elseif  state == 0 then       --active
    ctl.Color = "#00ff00"       --green
    ctl.Boolean = true
  else                          --inactive and unconfigured
    ctl.Color = "#808080"       --CtlBkgnd
    ctl.Boolean = false
  end
end


--********************************************************************************
-- Function: SetStatus(msg, state)
-- Description: Update status message and state to given values
--********************************************************************************
function SetStatus(msg, state)
  editStatus.Value = STATUS_STATE[state]
  editStatus.String = msg
  if DebugDesc or (STATUS_STATE[state] > 0) then 
    print(msg) 
  end
end


--********************************************************************************
--* Function: SetControlState(boolEnable)
--* Description: Enable/Disable screen controls
--********************************************************************************
function SetControlState(boolEnable)
  --print("SetControlState:", boolEnable)
  cbIGain[1].IsDisabled      = not boolEnable
  cbIGain[2].IsDisabled      = not boolEnable
  btnPhantom[1].IsDisabled   = not boolEnable
  btnPhantom[2].IsDisabled   = not boolEnable
  cbISelect[1].IsDisabled    = not boolEnable
  cbISelect[2].IsDisabled    = not boolEnable
  fdrOVolume[1].IsDisabled   = not boolEnable
  fdrOVolume[2].IsDisabled   = not boolEnable
  btnOMute[1].IsDisabled     = not boolEnable
  btnOMute[2].IsDisabled     = not boolEnable

  SetMeteringState()

  btnRefresh.IsDisabled      = not boolEnable
  btnMetering.IsDisabled     = not boolEnable
  btnSave.IsDisabled         = not boolEnable
  btnIdentify.IsDisabled     = not boolEnable

  editTxStreamName.IsDisabled    = true   --This is always true as read only
  editTxStreamIP.IsDisabled      = true   --This is always true as read only
  btnTxStreamEnable.IsDisabled   = true   --This is always true as read only
  ledTxStreamState.IsDisabled    = not boolEnable
  cbRxStreamName[1].IsDisabled   = true   --This is always true as read only
  cbRxStreamName[2].IsDisabled   = true   --This is always true as read only
  cbRxStreamCh[1].IsDisabled     = true   --This is always true as read only
  cbRxStreamCh[2].IsDisabled     = true   --This is always true as read only
  btnRxStreamApply.IsDisabled    = true   --This is always true as read only
  ledRxStreamState[1].IsDisabled = not boolEnable
  ledRxStreamState[2].IsDisabled = not boolEnable
  editPTPClk.IsDisabled          = true   --This is always true as read only
  ledPTPClk.IsDisabled           = not boolEnable;
  editAES67Name.IsDisabled       = true   --This is always true as read only
  editIPMode.IsDisabled          = true   --This is always true as read only
  cbQoSMode.IsDisabled           = true   --This is always true as read only
  editPilotFreq.IsDisabled       = (not boolEnable) or btnPilotEnable.Boolean or not btnTxStreamEnable.Boolean
  editPilotVol.IsDisabled        = (not boolEnable) or btnPilotEnable.Boolean or not btnTxStreamEnable.Boolean
  btnPilotEnable.IsDisabled      = not boolEnable  or not btnTxStreamEnable.Boolean

  --Clear LED states on disconnect
  if( not boolEnable) then
    ledPTPClk.Boolean = false;
    SetStreamLED(ledTxStreamState, 2)
    SetStreamLED(ledRxStreamState[1], 2)
    SetStreamLED(ledRxStreamState[2], 2)
  end
end


--********************************************************************************
--* Function: UDPSend(ip, uport, data)
--* Description: Sends UDP message to device
--********************************************************************************
function UDPSend(ip, uport, data)
  --print("UDPSend: "..ip, uport, data)
  deviceUDP:Send(ip, uport, data)
end


--********************************************************************************
--* Function: BINSend(ip, uport, data)
--* Description: Sends UDP message to device
--********************************************************************************
function BINSend(ip, uport, data)
  --print("BINSend: "..ip, uport, DebugFormat(data))
  deviceBIN:Send(ip, uport, data)
end


--********************************************************************************
--* Function: SendCmd()
--* Description: Sets up sending next message from message queue
--********************************************************************************
function SendCmd()
  dataTimer:Start(1)
  --print("    Sent: "..editIPAddr.String.." "..msgQueue[1].ifc.. " "..tostring(DebugFormat(msgQueue[1].msg)))
  if msgQueue[1].ifc == "BIN" then
    local ipgood, result = pcall(BINSend, editIPAddr.String, BIN_PORT, msgQueue[1].msg) -- Use pcall to test whether ip is reachable to avoid crashing
    if not ipgood then
      --print(result.." - BINCmd: "..tostring(msgQueue[1].msg))
      SetStatus("SendCmd-IP error", "FAULT")
      table.remove(msgQueue, 1)  --Prevents build-up of unsent messages
      --print("QueueLen: "..#msgQueue)
    end
  else
    local ipgood, result = pcall(UDPSend, editIPAddr.String, UDP_PORT, tostring(msgQueue[1].msg).."\r") -- Use pcall to test whether ip is reachable to avoid crashing
    if not ipgood then
      --print(result.." - ASCIICmd: "..tostring(msgQueue[1].msg))
      SetStatus("SendCmd-IP error", "FAULT")
      table.remove(msgQueue, 1)  --Prevents build-up of unsent messages
      --print("QueueLen: "..#msgQueue)
    end
  end
end


--********************************************************************************
--* Function: AddCmdToQueue(ifc, cmd, ext)
--* Description: Adds new message to device message queue
--********************************************************************************
function AddCmdToQueue(ifc, cmd, ext)
  local command = {}
  command.ifc = ifc
  if ifc == "ASCII" then
    command.msg = cmd..tostring(ext and " "..ext or "")
  elseif ifc == "BIN" then 
    command.msg = cmd
  end
  if command.msg ~= nil then
    if #msgQueue == 0 then
      table.insert(msgQueue, command)
      SendCmd()
    else
      table.insert(msgQueue, command)
    end
    --print("QueueLen: "..#msgQueue..cmd)
  else
    --oooops, bad command
    --print("Bad Command")
  end
end


--********************************************************************************
--* Function: SendNextQueuedMsg()
--* Description: Rmvoes last message from queue and send next one if any available
--********************************************************************************
function SendNextQueuedMsg()
  --Remove last message
  table.remove(msgQueue, 1)
  --print("QueueLen: "..#msgQueue)

  --Send next remaining message
  if #msgQueue > 0 then
    SendCmd()
  end
end


--********************************************************************************
--* Function: ErrorHandler(state) 
--* Description: Handle comm errors and error logic
--********************************************************************************
function ErrorHandler(state)
  --print("Err: ", state)
  if(state == 0) then -- OK
    commErrCnt = 0
  else
    commErrCnt = commErrCnt + 1
  end

  --print("Err Cnt: ", commErrCnt)
  if (ledConnected.Boolean == false and commErrCnt > 0 ) or (commErrCnt == 3 and ledConnected.Boolean == true) then    --device is likely gone from network
    --print("Lost Device. Disconnecting...")
    DisconnectFromDevice()
  end
end


--********************************************************************************
--* Function: SetInputGainCombo(gain, channel)
--* Description: Sets input gain control parameter of a given channel to a given value
--********************************************************************************
function SetInputGainCombo(gain, channel)
  for k,v in ipairs(IGAINS) do
    if gain == string.format("%2.1f", tonumber(v:match("(.+)"))) then 
      cbIGain[channel].String = IGAINS_DISP[k] 
      break 
    end
  end
end


--********************************************************************************
--* Function: SetInputSelectCombo(select, channel)
--* Description: Sets input select control parameter of a given channel to a given value
--********************************************************************************
function SetInputSelectCombo(sel, channel)
  for k,v in ipairs(ISELECT[1]) do  --You could use [1] or [2] as only matching characters at start
    if sel == v:match("(.+) %[.+%]") then
      cbISelect[channel].String = ISELECT[channel][k]
      break 
    end
  end
end


--********************************************************************************
--* Event Handlers for Controls
--********************************************************************************

--********************************************************************************
--* Function - OpenListeners
--* Description - Opens up ports for AES67 control
--********************************************************************************
function OpenListeners()
  deviceSTA:Open(nil, 49495)
  deviceSTA:JoinMulticast("239.255.255.255")  -- Sends a multicast join report
end


--********************************************************************************
--* Function - Event Handler for deviceUDP socket response
--* Description - Checks responses from UDP messages
--********************************************************************************
deviceUDP.EventHandler = function(udp, packet)
  local pdata = string.match(string.gsub(packet.Data,"\n",""),"([^\r]+)") -- eliminate stray newlines
  local ack, cmd, param = string.match(pdata,"([N]*ACK) (%a+)[ ]*(.*)")
  --print("Response: "..DebugFormat(pdata, true))
  if ack == "ACK" then
    local sentCmd, sentParam = string.match(msgQueue[1].msg, "(%a+)[ ]*(.*)")
    if cmd == sentCmd then
      dataTimer:Stop()
      ErrorHandler(OK)

      if cmd == "GETVENDORID" then
        --print("VendorID: "..DebugFormat(param, true))
        if param == VENDOR_ID then
          AddCmdToQueue("ASCII", "GETPRODID")
        else
          SetStatus("Not Attero", "FAULT")
        end
      elseif cmd == "GETPRODID" then
        --print("ProdID: "..DebugFormat(param, true))
        if param == PROD_ID then
          AddCmdToQueue("ASCII", "GETDEVICENAME")
        else
          SetStatus("Not unA6IO", "FAULT")
        end
      elseif cmd == "GETDEVICENAME" then
        --print("Device Name: "..DebugFormat(param, true))
        details.Name = tostring(param)
        AssembleDetails()
        AddCmdToQueue("ASCII", "GETMAC")
      elseif cmd == "GETMAC" then
        --print("MAC: "..DebugFormat(param, true))
        details.MAC = param
        AssembleDetails()
        AddCmdToQueue("ASCII", "VERSION")
      elseif cmd == "VERSION" then
        --print("Version: "..DebugFormat(param, true))
        details.MCU = string.format("%d.%d",string.match(param,"(%d+).(%d+)"))
        AssembleDetails()
        AddCmdToQueue("ASCII", "NETCFG")
      elseif cmd == "NETCFG" then
        local ipMode, ipAddr, mask, gateway = param:match("MODE=(%a+) IP=(%d+%.%d+%.%d+%.%d+) M=(%d+%.%d+%.%d+%.%d+) G=(%d+%.%d+%.%d+%.%d+)")
        --print("NetCfg:", ipMode, ipAddr, mask, gateway)
        editIPMode.String = ipMode
        AddCmdToQueue("BIN", "\x02")
      elseif cmd == "QUERY" then
        local ig1, ig2, pp1, pp2, id, ov1, ov2, om1, om2, is3, is4 = param:match("IG1=(%-?%d+.%d+) IG2=(%-?%d+.%d+) PP1=(%a+) PP2=(%a+) ID=(%a+) OV1=(%-?%d+) OV2=(%-?%d+) OM1=(%a+) OM2=(%a+) IS3=(%a%+?%a?) IS4=(%a%+?%a?)")
        --print("Query: "..DebugFormat(param, true))
        --print("unA6IO:", ig1, ig2, pp1, pp2, id, ov1, ov2, om1, om2, is3, is4, lk)

        if id ~= nil then
          SetInputGainCombo(ig1, 1)
          SetInputGainCombo(ig2, 2)
          btnPhantom[1].Boolean = (pp1 == "ON")
          btnPhantom[2].Boolean = (pp2 == "ON")
          SetInputSelectCombo(is3, 1)
          SetInputSelectCombo(is4, 2)
          fdrOVolume[1].Value = tonumber(ov1)
          fdrOVolume[2].Value = tonumber(ov2)
          btnOMute[1].Boolean = (om1 == "ON")
          btnOMute[2].Boolean = (om2 == "ON")
          btnIdentify.Boolean = (id == "ON")

          --initial data reception is complete
          SetStatus("Connected", "OK")
          SetControlState(true)

          -- intialize on first connect / reconnect and begin polling for status
          if (ledConnected.Boolean == false) then
            healthTimer:Start(5)
            OpenListeners()
            ledConnected.Boolean = true
          end
        else
          SetStatus("Not unA6IO", "FAULT") 
          ErrorHandler(ERROR)
        end
      elseif cmd == "PP" or cmd == "IG" or cmd == "IP" or cmd == "IS" or cmd == "ID" or cmd == "OV" or cmd == "OM" or cmd == "SAVE" then
        --valid responses but no action required
      else
        SetStatus("Cmd Fail", "WARN")
        print("Unrecongnised Response: ", cmd)
      end

      --Send next queued message
      SendNextQueuedMsg()
    end
  else
    --If "NACK" recevied, skip to next message
    if ack == "NACK" then
      --Clear previous and move on to next
      table.remove(msgQueue, 1)
      if #msgQueue > 0 then
        SendCmd()
      end
    end
  end
end


--********************************************************************************
--* Function - Event Handler for deviceBIN socket response
--* Description - Checks repsonses from BIN messages
--********************************************************************************
deviceBIN.EventHandler = function(udp, packet)
  local STREAM_DATA_OFFSET = 4
  local DEV_NAME_OFFSET    = 17
  local SAP_OFFSET         = 49
  local METERING_OFFSET    = 65
  local TX_STREAM_OFFSET   = 81
  local RX_STREAM_OFFSET   = 129
  local RX_STREAM_SIZE     = 48

  local ack, protoVer, cmd = string.unpack("BBB", packet.Data)
  --print("Revd:", DebugFormat(packet.Data))
  --print("Revd:", DebugFormat(ack), DebugFormat(protoVer), DebugFormat(cmd))
  if ack == 0 then
    if protoVer == PROTOCOL_VERSION then
      local sentCmd = string.unpack("B", msgQueue[1].msg)
      if tonumber(sentCmd) == cmd then
        ErrorHandler(OK)
        dataTimer:Stop()
        if cmd == 2 then          --General Read
          local rch, ptp, dom, cp1, cp2, aqos, pqos, pf, pa = string.unpack("BBBBBBB>I2>i1", packet.Data, STREAM_DATA_OFFSET)

          if pqos == 46 and aqos == 34 then 
            cbQoSMode.String = "AES67"
          elseif pqos == 56 and aqos == 46 then 
            cbQoSMode.String = "Dante"
          else
            cbQoSMode.String = "Other"
          end

          --Pilot Tone setup
          local pe = pf & 0x8000
          pf = pf & 0x7fff
          --print("PilotTone: "..pf, pa, pe)
          editPilotFreq.Value = pf
          editPilotVol.Value = pa
          btnPilotEnable.Boolean = (tonumber(pe) > 0)

          local dn = string.gsub(string.unpack("c32",packet.Data, DEV_NAME_OFFSET), "[\x00\xff]", "")
          --print("devName:", DebugFormat(dn))
          details.Name = dn
          AssembleDetails()

          local sap_ip, sap_port, sap_per = string.unpack(">I4>I2>I4", packet.Data, SAP_OFFSET)
          --print("SA:", sap_ip, sap_port, sap_per)
           
          mtr_ip, mtr_prt, sta_prd, mtr_prd = string.unpack(">I4>I2>I4>I4", packet.Data, METERING_OFFSET)
          --print("Metering:", mtr_ip, mtr_prt, sta_prd, mtr_prd)
          btnMetering.Boolean = (tonumber(mtr_prd) > 0)
          SetMeteringState()

          --Tx Stream data
          local txStreamName, tip1, tip2, tip3, tip4, tp, te =  string.unpack("c32BBBB>I2>I8", packet.Data, TX_STREAM_OFFSET)
          --print("TxStreamName:", DebugFormat(txStreamName))
          --print("TX INFO: "..tip1, tip2, tip3, tip4, tp, te)
          editTxStreamName.String = txStreamName
          editTxStreamIP.String = tip1.."."..tip2.."."..tip3.."."..tip4
          --print("TxStreamIP: ", editTxStreamIP.String)
          --print("txStreamPort: ", tp)
          --print("txStreamEn: ", te)
          btnTxStreamEnable.Boolean = ( tonumber(te) ~= -1)
          editTxStreamName.IsDisabled = ( btnTxStreamEnable.Boolean )
          editTxStreamIP.IsDisabled = ( btnTxStreamEnable.Boolean )

          local loop, name, id, maxChm, chNum
          for loop = 0, 1 do  --Rx Stream data..
            local name, rip, rpt, rid, rss, maxCh, chNum = string.unpack("c32>I4>I2BBBB", packet.Data, RX_STREAM_OFFSET + (loop * RX_STREAM_SIZE))
            local rxStreamName = string.gsub(name, "[\x00\xff]", "")
            --print("RxStreamName"..(loop + 1)..":", DebugFormat(rxStreamName))
            if(rxStreamName == "") then
              cbRxStreamName[loop + 1].String = "None"
            else
              cbRxStreamName[loop + 1].String = rxStreamName
            end

            --Rx Stream drop down setup
            --print("RxMaxCh"..(loop + 1)..":", maxCh)
            --print("ChNum:", ch)
            local channels = {}
            if maxCh > 0 then
              --Create channels table
              for i = 1, maxCh do
                table.insert(channels, i)
              end
              cbRxStreamCh[loop + 1].String = (chNum + 1)
            else
              table.insert(channels, 0)
              cbRxStreamCh[loop + 1].String = "0"
            end
            cbRxStreamCh[loop + 1].Choices = channels
          end
          AddCmdToQueue("ASCII", "QUERY")
        elseif cmd == 3 or cmd == 5 or cmd == 9 or cmd == 13 then
          --do nothing as write is good
        else
          SetStatus("Cmd Fail", "WARN")
          print("Unknown Bin Response: ", cmd)
        end
        --Send next queued message
        SendNextQueuedMsg()
      else
        --ignore message as not what we need
      end
    else
      --incorrect protocol, ignore
      SetStatus("Wrong protocol", "FAULT")
    end
  elseif ack == "\x01" then
    --Nack response
    print("Nack Response")
  else
    print("Bad binary packet")  
  end
end


--********************************************************************************
--* Function - Event Handler for deviceUDP socket response
--* Description - Receiver for device status messages
--********************************************************************************
deviceSTA.EventHandler = function(udp, packet)
  --check packet is from connected devices IP address
  if btnConnect.Boolean then
    if tostring(packet.Address) == tostring(editIPAddr.String) then
      --print("Data:", DebugFormat(packet.Data))
      local msgType, param = string.match(packet.Data, "(.?)(.*)")
      if msgType == "\x80" then     --Status Message
        local pv, fg, nrs, cm, tx1, rx1, rx2 = string.unpack("BBBc8BBB", param)
        --print("Status: PV="..pv.."  "..fg.."  "..tx1.."  "..tx2.."  "..tx3.."  "..tx4.."  "..rx1.."  "..rx2)
        if pv == PROTOCOL_VERSION then
          ledPTPClk.Boolean = (((fg & 0xf0) >> 4) == 1)
          editPTPClk.String = PTP_CLOCK[(fg & 0x0f)]

          SetStreamLED(ledTxStreamState, tx1)
          SetStreamLED(ledRxStreamState[1], rx1)
          SetStreamLED(ledRxStreamState[2], rx2)
        end
      elseif msgType == "\x81" then     --Level Message
        if btnMetering.Boolean then     --Only update if metering enabled
          local pv, nop, nip, rx1, rx2, tx1, tx2, tx3, tx4 = string.unpack("BBBbbbbbb", param)
          --print("Meter: PV="..pv.."  "..nop.."  "..nip.." "..rx1.."  "..rx2.."  "..tx1.."  "..tx2.."  "..tx3.."  "..tx4)
          if pv == PROTOCOL_VERSION then
            SetSignalLED(ledSignalOut[1], rx1)
            SetSignalLED(ledSignalOut[2], rx2)
            SetSignalLED(ledSignalIn[1], tx1)
            SetSignalLED(ledSignalIn[2], tx2)
            SetSignalLED(ledSignalIn[3], tx3)
            SetSignalLED(ledSignalIn[4], tx4)
          end
        end
      end
    end
  end
end


--********************************************************************************
--* Function - NicComboBoxEvent
--* Description - Event Handler for Nic ComboBox change
--********************************************************************************
function NicComboBoxEvent()
  if not string.find(cbNic.String, "Choose NIC") then
    localIP = GetNICIP(cbNic)
    nic_storage.String = cbNic.String
    --print("Network:", localIP, cbNic.String)
  end
end


--********************************************************************************
--* Function - ConnectBtnEvent
--* Description - Event Handler for "Connect" button press.
--********************************************************************************
function ConnectBtnEvent()
  local connectedState = btnConnect.Boolean
  if btnConnect.Boolean then
    if string.find(cbNic.String, "Choose NIC") then
      SetStatus("Invalid NIC", "FAULT")
      connectedState = false
    elseif not string.find(editIPAddr.String, IP_PATTERN) then
      SetStatus("Invalid Device IP", "FAULT")
      connectedState = false
    end
    if connectedState then
      SetStatus("Connecting...", "INITIALIZING")
      cbNic.IsDisabled = true
      cbMode.IsDisabled = true
      editIPAddr.IsDisabled = true
      cbUnitName.IsDisabled = true

      --Make sure message queue is empty
      while (#msgQueue > 0) do
        table.remove(msgQueue)
      end
      
      --Clear stream name list
      streams = {}
      cbRxStreamName[1].Choices = {"None"}
      cbRxStreamName[2].Choices = {"None"}
      cbRxStreamCh[1].Choices   = {""}
      cbRxStreamCh[2].Choices   = {""}

      local ipa = cbMode.String == "Manual" and editIPAddr.String or ipLookup[cbUnitName.String]
      if ipa ~= nil then
        if details.IP == nil then
          details.IP = ipa
        end
        healthTimer:Start(5)
        lastDev.name.String = cbUnitName.String
        lastDev.ip.String = ipa
        deviceUDP:Open(localIP, nil)
        deviceBIN:Open(localIP, nil)
        if cbMode.String == "Manual" then
          AddCmdToQueue("ASCII", "GETVENDORID")
        else
          details.Name = cbUnitName.String
          AddCmdToQueue("ASCII", "GETMAC")
        end
      else
        --If not found a valid IP address
        SetStatus("Disconnected", "WARN")
        ledConnected.Boolean = false
      end
    else
      btnConnect.Boolean = false
      DisconnectFromDevice()
    end
  else
    SetStatus("Disconnected", "OK")
    healthTimer:Stop()

    cbNic.IsDisabled = false
    cbMode.IsDisabled = false
    editIPAddr.IsDisabled = false
    cbUnitName.IsDisabled = false

    --Clear Identify if connection closed
    if btnIdentify.Boolean then
      btnIdentify.Boolean = false
      AddCmdToQueue("ASCII", "ID", "0")
    end

    if cbMode.String ==  "Manual" then
      --If disconnect in manual mode, clear details box as data irrelavent
      details = {}
      AssembleDetails()
    end
    DisconnectFromDevice()
  end
end


--********************************************************************************
--* Function: DisconnectFromDevice
--* Description: Terminates the device connection
--********************************************************************************
function DisconnectFromDevice()
  --Stop metering on disconnect
  if btnMetering.Boolean then
    btnMetering.Boolean = false
    --MeteringBtnEvent()
  end

  ledConnected.Boolean = false
  commErrCnt = 0
  deviceSTA:Close()
  dataTimer:Stop()

  SetControlState(false)
  deviceUDP:Close()
  deviceBIN:Close()
end


--********************************************************************************
--* Function: IdentifyBtnEvent(ctl) 
--* Description: Event Handler for "Identify" button press
--********************************************************************************
function IdentifyBtnEvent(ctl) 
  --print("Identify", ctl.Boolean) 
  AddCmdToQueue("ASCII", "ID", tostring(ctl.Boolean and "1" or "0")) 
end


--********************************************************************************
--* Function: RefreshBtnEvent(ctl) 
--* Description: Event Handler for "Refresh" button press
--********************************************************************************
function RefreshBtnEvent(ctl) 
  --Only do on negative edge otherwise this gets called twice when you press button
  if btnRefresh.Boolean == false then
    AddCmdToQueue("ASCII", "VERSION")
  end
end


--********************************************************************************
--* Function: SetMeteringState()
--* Description: Sets state of metering indicators based on metering button state
--********************************************************************************
function SetMeteringState()
  if btnMetering.Boolean then
    if btnConnect.Boolean then
      ledSignalIn[1].IsDisabled = false
      ledSignalIn[2].IsDisabled = false
      ledSignalIn[3].IsDisabled = false
      ledSignalIn[4].IsDisabled = false
      ledSignalOut[1].IsDisabled = false
      ledSignalOut[2].IsDisabled = false
    end
  else
    --print("Disable Metering")
    SetSignalLED(ledSignalIn[1], "-100")
    SetSignalLED(ledSignalIn[2], "-100")
    SetSignalLED(ledSignalIn[3], "-100")
    SetSignalLED(ledSignalIn[4], "-100")
    SetSignalLED(ledSignalOut[1], "-100")
    SetSignalLED(ledSignalOut[2], "-100")

    ledSignalIn[1].IsDisabled = true
    ledSignalIn[2].IsDisabled = true
    ledSignalIn[3].IsDisabled = true
    ledSignalIn[4].IsDisabled = true
    ledSignalOut[1].IsDisabled = true
    ledSignalOut[2].IsDisabled = true
  end
end


--********************************************************************************
--* Function: MeteringBtnEvent()
--* Description: Event Handler for "Meters" button press
--********************************************************************************
function MeteringBtnEvent() 
  SetMeteringState()
  if btnMetering.Boolean then
    if btnConnect.Boolean then
      --Start Metering process
      --print("Enable Metering")
      local msgStr = "\x0d"..string.pack(">I4>I2>I4>I4", mtr_ip, mtr_prt, sta_prd, 100)
      AddCmdToQueue("BIN", msgStr)
    end
  else
    --stop metering process
    --print("Disable Metering")
    local msgStr = "\x0d"..string.pack(">I4>I2>I4>I4", mtr_ip, mtr_prt, sta_prd, 0)
    AddCmdToQueue("BIN", msgStr)
  end
end


--********************************************************************************
--* Function: SaveAsDefaultBtnEvent(ctl) 
--* Description: Event Handler for "Save as Default" button press
--********************************************************************************
function SaveAsDefaultBtnEvent(ctl) 
  if( ctl.Boolean ) then    --Only do this when button pushed 
    AddCmdToQueue("ASCII", "SAVE", "0")
  end
end


--********************************************************************************
--* Function: EnableTxStreamBtnEvent(ctl)  
--* Description: Send name padded to 32 chars, IP address and enable byte
--********************************************************************************
function EnableTxStreamBtnEvent(ctl) 
  --Get name padded to 32 characters
  local nameStr = editTxStreamName.String
  if #nameStr > 32 then
    nameStr = string.sub(nameStr, 1, 32)
  elseif (#nameStr < 32) and (#nameStr ~= 0) then 
    while (#nameStr < 32) do
      nameStr = nameStr.."\x00"
    end
  end

  --Validate IP address
  local ipStr = string.match(editTxStreamIP.String, IP_PATTERN)   

  if ipStr and (#nameStr ~= 0) then
    local o1,o2,o3,o4 = ipStr:match("(%d+)%.(%d+)%.(%d+)%.(%d+)")
    if(not ctl.Boolean) then
      o1 = 0
      o2 = 0
      o3 = 0
      o4 = 0
    end

    local option = 0xFFFFFFFFFFFFFFFF     --Disabled
    if ctl.Boolean then
      option = 0x8081828384FFFFFF
    end

    local msgStr = "\x03"..nameStr..string.pack("BBBB>I2>I8", o1, o2, o3, o4, TX_STREAM_PORT, option)
    --print("TxStream:"..DebugFormat(msgStr))
    AddCmdToQueue("BIN", msgStr)
  else 
    SetStatus("Invalid Data", "FAULT")
    ctl.Boolean = not ctl.Boolean
  end
  editTxStreamName.IsDisabled = ( ctl.Boolean )
  editTxStreamIP.IsDisabled = ( ctl.Boolean )
end


--********************************************************************************
--* Function: AddEmptyStream()
--* Description: Create blank RxStream data
--********************************************************************************
function AddEmptyStreamData()
  local nameStr = ""
  while (#nameStr < 32) do
    nameStr = nameStr.."\x00"
  end
  return nameStr..string.pack("BBBB>I2BBBB", 0, 0, 0, 0, 0, 0, 96, 0, 0)
end


--********************************************************************************
--* Function: ApplyRxStreamBtnEvent(ctl)
--* Description: Apply RX stream setup to device
--********************************************************************************
function ApplyRxStreamBtnEvent(ctl) 
  if ctl.Boolean then
    --create rx mesage (char*32 NAME) (uint8_t*4 IP) (uint16_t PORT) (uint8_t SDP_TYPE) (uint8_t SAMPLE_SIZE) (uint8_t NUM_CHANNELS) (uint8_t SELECTED_CHANNEL)
    local msgData,ctlRxName,ctlRxCh = ""

    for i=1, 2 do --Search for Stream name in streams table
      local validSel = 0

      --check for invalid selections
      --print("rxstreamCh = ", cbRxStreamCh[i].String)
      --print("rxstreamName = ", cbRxStreamName[i].String)
      ctlRxName = cbRxStreamName[i].String
      ctlRxCh =   cbRxStreamCh[i].String

      if(ctlRxName == "None") then
        validSel = validSel + 1;
      elseif(#ctlRxCh == 0) then
        --print("Invalid Selection(s)")
      else
        validSel = validSel + 1;
      end

      --print("ValidSel="..validSel.." i="..i)
      if(validSel == 1) then
        if (cbRxStreamName[i].String == "None") or (#streams == 0) then
          msgData = msgData..AddEmptyStreamData()
          --print("data:"..DebugFormat(msgData))
          --print("Len:"..#msgData)
        else
          local nameStr = ""
          local streamNum = 0
          for j=1, #streams do
            if cbRxStreamName[i].String == streams[j].StreamName then
              streamNum = j
              nameStr = streams[streamNum].StreamName
              if #nameStr > 32 then --this should never happen but here just in case
                nameStr = string.sub(nameStr, 1, 32)
              elseif (#nameStr < 32) and (#nameStr ~= 0) then 
                while (#nameStr < 32) do
                  nameStr = nameStr.."\x00"
                end
              end
            end
          end

          if #nameStr == 0 then
            msgData = msgData..AddEmptyStreamData()
            --print("data:"..DebugFormat(msgData))
            --print("Len:"..#msgData)
          else
            local o1,o2,o3,o4 = streams[streamNum].IP:match("(%d+)%.(%d+)%.(%d+)%.(%d+)")
            msgData = msgData..nameStr..string.pack("BBBB>I2BBBB", o1, o2, o3, o4, streams[streamNum].Port, streams[streamNum].MediaType, streams[streamNum].SampleSize, streams[streamNum].NumCh, ((tonumber(cbRxStreamCh[i].String) - 1) ))
            --print("data:"..DebugFormat(msgData))
            --print("Len:"..#msgData)
          end
        end
      end
    end
    --print("rx stream setup data:"..DebugFormat(msgData))
    --print("Len:"..#msgData)
    if( #msgData == 84 ) then --or #msgData == 42 then
      AddCmdToQueue("BIN", "\x05"..msgData)
    else
      --Error
      --print("Error in RX Stream Setup")
      SetStatus("Rx Stream invalid", "FAULT")
      --Reset Data to current setup in device
      --RefreshBtnEvent()
    end
  end
end


--********************************************************************************
--* Function: PilotStreamEnableBtnEvent(ctl)
--* Description: Enable/disable Pilot stream
--********************************************************************************
function PilotStreamEnableBtnEvent(ctl) 
  local fr = math.floor(editPilotFreq.Value + 0.5)
  local am = math.floor(editPilotVol.Value + 0.5)
  editPilotFreq.Value = fr
  editPilotVol.Value = am 
  --print("PT1:", fr, am)

  if (fr == nil) then
    fr = "FF"
    ctl.Boolean = not ctl.Boolean
  elseif (tonumber(fr) < 20) or (tonumber(fr) > 20000) then 
    fr = "FF"
    ctl.Boolean = not ctl.Boolean
  elseif (am == nil) then
    am = "FF"
    ctl.Boolean = not ctl.Boolean
  elseif (tonumber(am) > 255) then 
    am = "FF"
    ctl.Boolean = not ctl.Boolean
  else
     if ctl.Boolean then
       fr = fr | 0x8000
     end
  end

  --change control state based on enable state
  editPilotFreq.IsDisabled = ( ctl.Boolean )
  editPilotVol.IsDisabled = ( ctl.Boolean )

  --print("PT2:", fr, am)
  if(fr ~= "FF") and (am ~="FF") then
    AddCmdToQueue("BIN", "\x09"..string.pack(">I2>i1", fr, am))
  end
end


--********************************************************************************
--* Function: dataTimer.EventHandler
--* Description: Event Handler for "dataTimer" time out event
--********************************************************************************
dataTimer.EventHandler = function()
  if editStatus.Value ~= "OK" then 
    SetStatus("No Response", "FAULT")
    ErrorHandler( ERROR )
  end
  dataTimer:Stop()

  --Remove previously failed msg and send next queued msg if there is one
  SendNextQueuedMsg()
end


--********************************************************************************
--* Function: healthTimer.EventHandler
--* Description: Event Handler for "healthTimer" time out event
--********************************************************************************
healthTimer.EventHandler = function()
  if ledConnected.Boolean then
    AddCmdToQueue("ASCII", "QUERY")
  elseif (not ledConnected.Boolean and btnConnect.Boolean) then
    SourceNIC()
    ConnectBtnEvent()
  else
    SourceNIC()
  end
end


--********************************************************************************
-- Input Gain ComboBox EventHandlers
--********************************************************************************
for index,gain in ipairs(cbIGain) do
  gain.EventHandler = function(ctl)
    for k,v in ipairs(IGAINS_DISP) do
      if v == ctl.String then 
        --print("IG "..index.." "..string.format("%2.1f", IGAINS[k]), ctl.String )
        AddCmdToQueue("ASCII", "IG", index.." "..string.format("%2.1f", IGAINS[k]))
        break 
      end
    end
  end
end


--********************************************************************************
-- Phantom Power button EventHandlers
--********************************************************************************
for k,v in ipairs(btnPhantom) do
  v.EventHandler = function(ctl)
    --print("PP "..k.." "..tostring(ctl.Boolean and 1 or 0))
    AddCmdToQueue("ASCII", "PP", k.." "..tostring(ctl.Boolean and 1 or 0))
  end
end


--********************************************************************************
-- Input Gain ComboBox EventHandlers
--********************************************************************************
for index,sel in ipairs(cbISelect) do
  sel.EventHandler = function(ctl)
    --print("IS "..(index + 2).." "..string.match(ctl.String,"(.+) %[.+%]"))
    AddCmdToQueue("ASCII", "IS", (index + 2).." "..string.match(ctl.String,"(.+) %[.+%]"))
  end
end


--********************************************************************************
-- Output Volume EventHandlers
--********************************************************************************
for index,volume in ipairs(fdrOVolume) do
  volume.EventHandler = function(ctl)
    --print("OV "..index.." "..ctl.String)
    AddCmdToQueue("ASCII", "OV", index.." "..string.format("%2.1f",ctl.String))
  end
end


--********************************************************************************
-- Output Mute button EventHandlers
--********************************************************************************
for k,v in ipairs(btnOMute) do
  v.EventHandler = function(ctl)
    --print("OM "..k.." "..tostring(ctl.Boolean and 1 or 0))
    AddCmdToQueue("ASCII", "OM", k.." "..tostring(ctl.Boolean and 1 or 0))
  end
end


--********************************************************************************
-- RX Stream Name EventHandlers
--********************************************************************************
for k,v in ipairs(cbRxStreamName) do
  v.EventHandler = function(ctl)
    local channels = {}

    --find the stream and get the channel count
    if ctl.String == "None" then
      table.insert(channels, 0)
      cbRxStreamCh[k].String = 0
    else
      local chCount = 0
      for i=1, #streams do
        if streams[i].StreamName == ctl.String then
          chCount = tonumber(streams[i].NumCh)
          break
        end
      end

      if chCount > 0 then
        --Create channels table
        for i = 1, chCount do
          table.insert(channels, i)
        end
        cbRxStreamCh[k].String = ""
      else
        table.insert(channels, 0)
        cbRxStreamCh[k].String = "0"
      end
    end
    cbRxStreamCh[k].Choices = channels
  end
end


--********************************************************************************
--* Function - GetNICIP(ctl)
--* Description - Returns table of available network interfaces
--********************************************************************************
function GetNICIP(ctl)
  return string.match(ctl.String, IP_PATTERN)
end


--********************************************************************************
--* Function - GetIPs
--* Description - Returns table of available network interfaces
--********************************************************************************
local function GetIPs()
  local nics,iptable = Qlib.networkinterfaces(), {}
  for _,n in ipairs(nics) do
    if not string.find(n.Interface, "Loopback") then
      iptable[n.Interface] = n.Address
    end
  end
  return iptable
end


--********************************************************************************
--* Function - SourceNic
--* Description - Gets available network interfaces and confirms local IP address
--********************************************************************************
function SourceNIC()
  iptable = GetIPs()
  local list = {}
  for k,v in pairs(iptable) do
    table.insert(list,tostring(e and v or k).." - "..tostring(e and k or v))
  end
  if #list == 1 then
    localIP = GetNICIP{String = list[1]}
    cbNic.String = list[1]
    --print("Local IP: ", localIP)
  elseif #list > 1 then
    local validNIC = Find(nic_storage.String, list)
    if nic_storage.String ~= "" and validNIC then
      cbNic.String = nic_storage.String
      localIP = GetNICIP(cbNic)
      --print("Local IP: ",localIP)
    else
      cbNic.String = "Choose NIC..."
      ledConnected.Boolean = false
    end
    cbNic.Choices = list
  else
    cbNic.String = "No NICs found"
    localIP = ""
    SetStatus( "No NIC found", "FAULT" )
  end
end


--********************************************************************************
--* Function - StartupCode
--* Description - Initialization code for the plug-in
--********************************************************************************
function StartupCode()
  if e then
    cbMode.Choices = {"Manual"}
    if cbMode.String == "" then 
      cbMode.String = "Manual" 
    end
    if cbMode.String == "Discovery" then 
      cbMode.String = "Manual" 
    end
  else  
    cbMode.Choices = {"Discovery","Manual"}
    if cbMode.String == "" then 
      cbMode.String = "Discovery" 
    end
  end
  cbMode.EventHandler = DiscoverDevices
  SetControlState(false)

  --Choices for input gain ComboBox
  for key,ctl in ipairs(cbIGain) do
    ctl.Choices = IGAINS_DISP
  end

  --Choices for input select ComboBox
  for idx = 1, 2 do
    cbISelect[idx].Choices = ISELECT[idx]
  end

  --Choices for QoS Mode ComboBox
  cbQoSMode.Choices = QOS_MODE

  ledConnected.Boolean = false

  editTxStreamName.String = ""
  editTxStreamIP.String = ""
  cbRxStreamName[1].String = ""
  cbRxStreamName[2].String = ""
  cbRxStreamCh[1].String = ""
  cbRxStreamCh[2].String = ""
  cbUnitName.String = ""
  editPTPClk.String = ""
  editDeviceName.String = ""
  editAES67Name.String = ""
  editIPMode.String = ""
  cbQoSMode.String = ""
  editPilotFreq.String = ""
  editPilotVol.String = ""

  --Copy last settings if found to unit and IP textboxes
  SourceNIC()
  if lastDev.ip.String == "" and lastDev.name.String == "" and cbUnitName.String == "" and cbMode.String == "Discovery" then
    cbUnitName.String = "None"
    editIPAddr.String = ""
    details = {}
  elseif lastDev.ip.String ~= "" and btnConnect.Boolean then
    editIPAddr.String = lastDev.ip.String
    if cbMode.String == "Discovery" then
      ipLookup[lastDev.name.String] = lastDev.ip.String
      cbUnitName.String = lastDev.name.String
    end
    AssembleDetails()
  end
  cbUnitName.EventHandler = UnitHandler

  DiscoverDevices()

  btnIdentify.Boolean = false
  btnIdentify.IsDisabled = true

  cbNic.EventHandler = NicComboBoxEvent
  btnIdentify.EventHandler = IdentifyBtnEvent
  btnRefresh.EventHandler = RefreshBtnEvent
  btnConnect.EventHandler = ConnectBtnEvent
  btnMetering.EventHandler = MeteringBtnEvent
  btnSave.EventHandler = SaveAsDefaultBtnEvent
  btnTxStreamEnable.EventHandler = EnableTxStreamBtnEvent
  btnRxStreamApply.EventHandler = ApplyRxStreamBtnEvent
  btnPilotEnable.EventHandler = PilotStreamEnableBtnEvent

  ConnectBtnEvent()
end


--********************************************************************************
--* Global code
--********************************************************************************
SetStatus("Initialization", "INITIALIZING")
StartupCode()

end -- end of runtime Lua code
