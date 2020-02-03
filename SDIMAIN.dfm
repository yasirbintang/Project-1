object SDIAppForm: TSDIAppForm
  Left = 197
  Top = 111
  Width = 368
  Height = 255
  Caption = 'SDI Application'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object StatusBar: TStatusBar
    Left = 0
    Top = 177
    Width = 352
    Height = 19
    AutoHint = True
    Panels = <>
    SimplePanel = True
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 152
    object File1: TMenuItem
      Caption = '&File'
      Hint = 'File related commands'
      object FileExitItem: TMenuItem
        Caption = 'E&xit'
        Hint = 'Exit|Exit application'
        OnClick = FileExit1Execute
      end
    end
    object Edit1: TMenuItem
      Caption = '&Kasus'
      Hint = 'Edit commands'
      object DaftarKasus: TMenuItem
        Caption = 'D&aftar Kasus'
        Hint = 
          'Pilih Daftar Kasus|Daftar Kasus adalah kumpulan kasus yang dapat' +
          ' dibuat, ubah, hapus dan cetak'
        ImageIndex = 0
        ShortCut = 16433
        OnClick = DaftarKasusExecute
      end
      object InputKasus: TMenuItem
        Caption = 'Input K&asus'
        Hint = 
          'Buat, ubah, hapus dan cetak|Jendela untuk menambahkan entri baru' +
          '; mencetak, mengubah dan/atau menghapus entri lama'
        ImageIndex = 0
        ShortCut = 16434
        OnClick = InputKasusExecute
      end
    end
    object Help1: TMenuItem
      Caption = '&Bantuan'
      Hint = 'Help topics'
      object HelpAboutItem: TMenuItem
        Caption = '&Tentang...'
        Hint = 
          'About|Displays program information, version number, and copyrigh' +
          't'
        OnClick = HelpAbout1Execute
      end
    end
  end
  object Con: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbexpmss.dll'
    Params.Strings = (
      'DriverName=MSSQL'
      'HostName=192.168.0.62:1443'
      'DataBase=dbrekapkasus'
      'User_Name=ta'
      'Password=it@3serangkai'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=False')
    VendorLib = 'oledb'
    Left = 320
    Top = 10
  end
  object DS: TSQLDataSet
    Params = <>
    Left = 250
    Top = 40
  end
end
