object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 571
  Top = 291
  Height = 395
  Width = 593
  object dsGeral: TDataSource
    DataSet = cdsGeral
    Left = 72
    Top = 88
  end
  object cdsGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGeral'
    Left = 120
    Top = 88
  end
  object dspGeral: TDataSetProvider
    DataSet = qryGeral
    Left = 168
    Top = 88
  end
  object qryGeral: TSQLQuery
    DataSource = dsGeral
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Con
    Left = 24
    Top = 88
  end
  object Con: TSQLConnection
    ConnectionName = 'Hosp'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\Hospital\Dados\DADOS.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 56
    Top = 32
  end
end
