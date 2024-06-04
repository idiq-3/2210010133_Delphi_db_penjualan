object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 94
  Top = 152
  Height = 213
  Width = 565
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\KULIAH\SEMESTER 2\VISUAL\libmysql.dll'
    Left = 24
    Top = 24
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 88
    Top = 24
  end
  object Zsatuan: TZQuery
    Params = <>
    Left = 168
    Top = 24
  end
  object Zuser: TZQuery
    Params = <>
    Left = 264
    Top = 40
  end
  object Zsupplier: TZQuery
    Params = <>
    Left = 376
    Top = 32
  end
  object Zbarang: TZQuery
    Params = <>
    Left = 448
    Top = 32
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 88
    Top = 88
  end
  object dssatuan: TDataSource
    Left = 120
    Top = 88
  end
  object dsuser: TDataSource
    Left = 152
    Top = 88
  end
  object dssupplier: TDataSource
    Left = 184
    Top = 88
  end
  object dsbarang: TDataSource
    Left = 216
    Top = 88
  end
end
