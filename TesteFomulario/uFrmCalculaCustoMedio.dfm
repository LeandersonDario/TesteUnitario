﻿object frmCalculaCusto: TfrmCalculaCusto
  Left = 0
  Top = 0
  Caption = 'Calcula Custo Medio'
  ClientHeight = 259
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI Semibold'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 20
  object lblQtde_Estoque_Anterior: TLabel
    Left = 8
    Top = 8
    Width = 150
    Height = 20
    Caption = 'Qtde Estoque Anterior'
  end
  object lblCusto_Médio_Anterior: TLabel
    Left = 8
    Top = 63
    Width = 144
    Height = 20
    Caption = 'Custo M'#233'dio Anterior'
  end
  object lblQuantidade_comprada: TLabel
    Left = 8
    Top = 119
    Width = 156
    Height = 20
    Caption = 'Quantidade comprada'
  end
  object lblVl_Reposicao: TLabel
    Left = 176
    Top = 10
    Width = 86
    Height = 20
    Caption = 'Vl Reposicao'
  end
  object lblQtde_Anterior: TLabel
    Left = 176
    Top = 63
    Width = 93
    Height = 20
    Caption = 'Qtde Anterior'
  end
  object lblQtd_Comprada: TLabel
    Left = 176
    Top = 120
    Width = 102
    Height = 20
    Caption = 'Qtd Comprada'
  end
  object pnlTela: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 281
    TabOrder = 6
    object lblResultado: TLabel
      Left = 8
      Top = 196
      Width = 100
      Height = 25
      Caption = 'Resultado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCalcular: TButton
      Left = 374
      Top = 29
      Width = 75
      Height = 42
      Caption = 'Calcular'
      TabOrder = 0
      OnClick = btnCalcularClick
    end
    object edtResultado: TEdit
      Left = 114
      Top = 196
      Width = 231
      Height = 28
      TabOrder = 1
    end
  end
  object edtQtde_Estoque_Anterior: TEdit
    Left = 8
    Top = 29
    Width = 152
    Height = 28
    TabOrder = 0
  end
  object edtCusto_Médio_Anterior: TEdit
    Left = 8
    Top = 85
    Width = 152
    Height = 28
    TabOrder = 1
  end
  object edtQuantidade_comprada: TEdit
    Left = 8
    Top = 138
    Width = 152
    Height = 28
    TabOrder = 2
  end
  object edtVl_Reposicao: TEdit
    Left = 176
    Top = 29
    Width = 169
    Height = 28
    TabOrder = 3
  end
  object edtQtde_Anterior: TEdit
    Left = 176
    Top = 88
    Width = 169
    Height = 28
    TabOrder = 4
  end
  object edtQtd_Comprada: TEdit
    Left = 176
    Top = 139
    Width = 169
    Height = 28
    TabOrder = 5
  end
end
