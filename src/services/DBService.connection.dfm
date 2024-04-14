object ServiceDBConn: TServiceDBConn
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FirebirdFDConn: TFDConnection
    Params.Strings = (
      'Database=D:\meus projetos\Delphi\FullTank\FULL_TANK.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=Localhost'
      'Port=3050'
      'CharacterSet=win1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 320
    Top = 192
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 728
    Top = 152
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 736
    Top = 256
  end
end
