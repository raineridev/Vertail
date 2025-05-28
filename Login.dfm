object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Vertail'
  ClientHeight = 626
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  TextHeight = 15
  object LabelEmail: TLabel
    Left = 48
    Top = 80
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object LabelPassoword: TLabel
    Left = 48
    Top = 144
    Width = 50
    Height = 15
    Caption = 'Password'
  end
  object Label1: TLabel
    Left = 48
    Top = 238
    Width = 50
    Height = 15
    Caption = 'Password'
  end
  object BtnLogin: TButton
    Left = 48
    Top = 254
    Width = 505
    Height = 41
    Caption = 'Entrar'
    TabOrder = 0
    OnClick = BtnLoginClick
  end
  object InputUser: TEdit
    Left = 48
    Top = 112
    Width = 853
    Height = 23
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    TextHint = 'example@email.com'
  end
  object InputPassword: TEdit
    Left = 48
    Top = 165
    Width = 853
    Height = 23
    TabOrder = 2
    TextHint = 'Your password'
    OnChange = InputPasswordChange
  end
  object CheckBoxPassword: TCheckBox
    Left = 48
    Top = 188
    Width = 97
    Height = 17
    Caption = 'Show password'
    TabOrder = 3
    OnClick = CheckBoxPasswordClick
  end
  object conLogin: TFDConnection
    Params.Strings = (
      'Database=C:\Users\raineri\Desktop\Development\Delphi\database.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 72
    Top = 16
  end
  object qryAuth: TFDQuery
    Active = True
    Connection = conLogin
    SQL.Strings = (
      'SELECT * FROM users;')
    Left = 208
    Top = 16
  end
  object dsAuth: TDataSource
    DataSet = qryAuth
    Left = 144
    Top = 16
  end
end
