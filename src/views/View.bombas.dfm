inherited ViewBombasETanques: TViewBombasETanques
  Caption = 'ViewBombasETanques'
  TextHeight = 15
  inherited topPanel: TPanel
    inherited titleLabel: TLabel
      Caption = 'Bombas e Tanques'
      ExplicitWidth = 197
    end
  end
  inherited backLinePanel: TPanel
    inherited CardPanel_Listas: TCardPanel
      inherited card_cadastro: TCard
        object DBGrid_Bombas: TDBGrid
          Left = 0
          Top = 0
          Width = 638
          Height = 176
          Align = alClient
          DataSource = dsBombas
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
        object DBGrid_Tanques: TDBGrid
          Left = 0
          Top = 176
          Width = 638
          Height = 229
          Align = alBottom
          DataSource = dsTanques
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
    end
  end
  object dsBombas: TDataSource
    DataSet = DBServiceConsultas.QRY_bombas
    Left = 353
    Top = 83
  end
  object dsTanques: TDataSource
    DataSet = DBServiceConsultas.QRY_tanques
    Left = 353
    Top = 275
  end
end
