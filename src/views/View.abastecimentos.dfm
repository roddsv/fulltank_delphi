inherited ViewAbastecimentos: TViewAbastecimentos
  Align = alClient
  Caption = 'ViewAbastecimentos'
  TextHeight = 15
  inherited topPanel: TPanel
    inherited titleLabel: TLabel
      Width = 561
      Height = 27
      Caption = 'Abastecimentos'
      ExplicitLeft = 37
      ExplicitTop = 2
      ExplicitWidth = 561
      ExplicitHeight = 27
    end
  end
  inherited footerPanel: TPanel
    ExplicitTop = 443
  end
  inherited backLinePanel: TPanel
    inherited CardPanel_Listas: TCardPanel
      inherited card_cadastro: TCard
        object DBGrid_Abastecimentos: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 3
          Width = 628
          Height = 397
          Margins.Left = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsData
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ABASTECIMENTO_ID'
              Title.Caption = 'ID do Abastecimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BOMBA_ID'
              Title.Caption = 'Id da Bomba'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_ABASTECIMENTO'
              Title.Caption = 'Data do Abastecimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE_LITROS'
              Title.Caption = 'Qtde. de Litros'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ABASTECIDO'
              Title.Caption = 'Valor'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPOSTO'
              Title.Caption = 'Impostos Totais'
              Visible = True
            end>
        end
      end
    end
  end
  object dsData: TDataSource
    DataSet = DBServiceConsultas.QRY_abastecimentos
    Left = 225
    Top = 99
  end
end
