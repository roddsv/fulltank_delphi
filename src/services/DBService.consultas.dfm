object DBServiceConsultas: TDBServiceConsultas
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object QRY_abastecimentos: TFDQuery
    Connection = ServiceDBConn.FirebirdFDConn
    SQL.Strings = (
      'SELECT * FROM ABASTECIMENTO;')
    Left = 104
    Top = 64
    object QRY_abastecimentosABASTECIMENTO_ID: TIntegerField
      FieldName = 'ABASTECIMENTO_ID'
      Origin = 'ABASTECIMENTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_abastecimentosBOMBA_ID: TIntegerField
      FieldName = 'BOMBA_ID'
      Origin = 'BOMBA_ID'
      Required = True
    end
    object QRY_abastecimentosDATA_ABASTECIMENTO: TDateField
      FieldName = 'DATA_ABASTECIMENTO'
      Origin = 'DATA_ABASTECIMENTO'
      Required = True
    end
    object QRY_abastecimentosQUANTIDADE_LITROS: TFMTBCDField
      FieldName = 'QUANTIDADE_LITROS'
      Origin = 'QUANTIDADE_LITROS'
      Required = True
      Precision = 18
      Size = 2
    end
    object QRY_abastecimentosVALOR_ABASTECIDO: TFMTBCDField
      FieldName = 'VALOR_ABASTECIDO'
      Origin = 'VALOR_ABASTECIDO'
      Required = True
      Precision = 18
      Size = 2
    end
    object QRY_abastecimentosIMPOSTO: TFMTBCDField
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object QRY_bombas: TFDQuery
    Connection = ServiceDBConn.FirebirdFDConn
    SQL.Strings = (
      'SELECT * FROM BOMBA;')
    Left = 104
    Top = 184
    object QRY_bombasBOMBA_ID: TIntegerField
      FieldName = 'BOMBA_ID'
      Origin = 'BOMBA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_bombasNUMERO_BOMBA: TIntegerField
      FieldName = 'NUMERO_BOMBA'
      Origin = 'NUMERO_BOMBA'
      Required = True
    end
    object QRY_bombasTANQUE_ID: TIntegerField
      FieldName = 'TANQUE_ID'
      Origin = 'TANQUE_ID'
      Required = True
    end
  end
  object QRY_tanques: TFDQuery
    Connection = ServiceDBConn.FirebirdFDConn
    SQL.Strings = (
      'SELECT * FROM TANQUE;')
    Left = 112
    Top = 304
    object QRY_tanquesTANQUE_ID: TIntegerField
      FieldName = 'TANQUE_ID'
      Origin = 'TANQUE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_tanquesTANQUE_TIPO_COMBUSTIVEL: TStringField
      FieldName = 'TANQUE_TIPO_COMBUSTIVEL'
      Origin = 'TANQUE_TIPO_COMBUSTIVEL'
      Required = True
      Size = 50
    end
  end
end
