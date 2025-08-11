object Form1: TForm1
  Left = 234
  Top = 126
  Width = 1088
  Height = 632
  Caption = 'Flex'#227'o Composta Reta com Armadura Assim'#233'trica UFSCar - PPGECiv'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 289
    Height = 574
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 14
      Height = 13
      Caption = 'N:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 15
      Height = 13
      Caption = 'M:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 21
      Height = 13
      Caption = 'bw:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 128
      Width = 14
      Height = 13
      Caption = 'H:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 160
      Width = 15
      Height = 13
      Caption = 'd'#39':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 192
      Width = 23
      Height = 13
      Caption = 'fck:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 232
      Width = 27
      Height = 13
      Caption = 'A'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 160
      Top = 232
      Width = 20
      Height = 13
      Caption = 'x/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 160
      Top = 256
      Width = 22
      Height = 13
      Caption = 'Kyd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 152
      Top = 40
      Width = 10
      Height = 13
      Caption = 'Tf'
    end
    object Label13: TLabel
      Left = 152
      Top = 72
      Width = 18
      Height = 13
      Caption = 'Tfm'
    end
    object Label14: TLabel
      Left = 152
      Top = 104
      Width = 14
      Height = 13
      Caption = 'cm'
    end
    object Label15: TLabel
      Left = 152
      Top = 136
      Width = 14
      Height = 13
      Caption = 'cm'
    end
    object Label16: TLabel
      Left = 152
      Top = 168
      Width = 14
      Height = 13
      Caption = 'cm'
    end
    object Label17: TLabel
      Left = 152
      Top = 200
      Width = 22
      Height = 13
      Caption = 'MPa'
    end
    object cmbAco: TComboBox
      Left = 48
      Top = 232
      Width = 97
      Height = 21
      ItemHeight = 13
      ItemIndex = 4
      TabOrder = 6
      Text = 'CA50-A'
      OnChange = cmbAcoChange
      Items.Strings = (
        'CA25'
        'CA32'
        'CA40-A'
        'CA40-B'
        'CA50-A'
        'CA50-B'
        'CA60-A'
        'CA60-B')
    end
    object edtxd: TEdit
      Left = 184
      Top = 232
      Width = 97
      Height = 21
      TabOrder = 8
      OnKeyUp = edtNKeyUp
    end
    object edtfck: TEdit
      Left = 48
      Top = 192
      Width = 97
      Height = 21
      TabOrder = 5
      OnKeyUp = edtNKeyUp
    end
    object edtdl: TEdit
      Left = 48
      Top = 160
      Width = 97
      Height = 21
      TabOrder = 4
      OnKeyUp = edtNKeyUp
    end
    object edth: TEdit
      Left = 48
      Top = 128
      Width = 97
      Height = 21
      TabOrder = 3
      OnKeyUp = edtNKeyUp
    end
    object edtbw: TEdit
      Left = 48
      Top = 96
      Width = 97
      Height = 21
      TabOrder = 2
      OnKeyUp = edtNKeyUp
    end
    object edtM: TEdit
      Left = 48
      Top = 64
      Width = 97
      Height = 21
      TabOrder = 1
      OnKeyUp = edtNKeyUp
    end
    object edtN: TEdit
      Left = 48
      Top = 32
      Width = 97
      Height = 21
      TabOrder = 0
      OnKeyUp = edtNKeyUp
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 328
      Width = 273
      Height = 257
      Caption = 'Resultados:'
      TabOrder = 7
      object lblRelat: TLabel
        Left = 16
        Top = 88
        Width = 3
        Height = 13
      end
      object Label10: TLabel
        Left = 16
        Top = 24
        Width = 27
        Height = 30
        Caption = 'm:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'GreekC'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 16
        Top = 56
        Width = 25
        Height = 30
        Caption = 'n:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'GreekC'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblMi: TLabel
        Left = 48
        Top = 33
        Width = 3
        Height = 13
      end
      object lblNi: TLabel
        Left = 48
        Top = 64
        Width = 3
        Height = 13
      end
    end
    object Button1: TButton
      Left = 48
      Top = 272
      Width = 97
      Height = 25
      Caption = 'Calcular'
      TabOrder = 10
      OnClick = Button1Click
    end
    object edtKyd: TEdit
      Left = 184
      Top = 256
      Width = 97
      Height = 21
      TabOrder = 9
      OnKeyUp = edtNKeyUp
    end
  end
  object Chart: TChart
    Left = 289
    Top = 0
    Width = 783
    Height = 574
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = clWhite
    BackWall.Dark3D = False
    BackWall.Size = 8
    BackWall.Transparent = False
    Border.Visible = True
    BottomWall.Dark3D = False
    BottomWall.Size = 8
    LeftWall.Color = clWhite
    LeftWall.Dark3D = False
    LeftWall.Size = 8
    Legend.Font.Height = -13
    Legend.Font.Name = 'Times New Roman'
    Legend.Frame.Visible = False
    Legend.LegendStyle = lsSeries
    Legend.Shadow.HorizSize = 0
    Legend.Shadow.VertSize = 0
    Legend.Symbol.DefaultPen = False
    Legend.Symbol.Pen.Visible = False
    Legend.Transparent = True
    RightWall.Color = clWhite
    RightWall.Dark3D = False
    RightWall.Size = 8
    Title.Font.Color = clBlack
    Title.Font.Height = -16
    Title.Font.Name = 'Times New Roman'
    Title.Text.Strings = (
      'Flex'#227'o Composta Reta com'
      'Armadura Assim'#233'trica')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Axis.Width = 1
    BottomAxis.Grid.Color = clBlack
    BottomAxis.Grid.Style = psSolid
    BottomAxis.GridCentered = True
    BottomAxis.LabelsFont.Height = -13
    BottomAxis.LabelsFont.Name = 'Times New Roman'
    BottomAxis.Maximum = 2.000000000000000000
    BottomAxis.Minimum = -1.000000000000000000
    BottomAxis.MinorTicks.Visible = False
    BottomAxis.Ticks.Color = clBlack
    BottomAxis.TicksInner.Visible = False
    BottomAxis.Title.Caption = 'n'
    BottomAxis.Title.Font.Charset = ANSI_CHARSET
    BottomAxis.Title.Font.Height = -27
    BottomAxis.Title.Font.Name = 'GreekC'
    BottomAxis.Title.Font.Style = [fsBold]
    DepthAxis.Axis.Width = 1
    DepthAxis.Grid.Color = clBlack
    DepthAxis.Grid.Style = psSolid
    DepthAxis.LabelsFont.Height = -13
    DepthAxis.LabelsFont.Name = 'Times New Roman'
    DepthAxis.MinorTicks.Visible = False
    DepthAxis.Ticks.Color = clBlack
    DepthAxis.TicksInner.Visible = False
    DepthAxis.Title.Font.Name = 'Times New Roman'
    DepthTopAxis.Axis.Width = 1
    DepthTopAxis.Grid.Color = clBlack
    DepthTopAxis.Grid.Style = psSolid
    DepthTopAxis.LabelsFont.Height = -13
    DepthTopAxis.LabelsFont.Name = 'Times New Roman'
    DepthTopAxis.MinorTicks.Visible = False
    DepthTopAxis.Ticks.Color = clBlack
    DepthTopAxis.TicksInner.Visible = False
    DepthTopAxis.Title.Font.Name = 'Times New Roman'
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Axis.Width = 1
    LeftAxis.Grid.Color = clBlack
    LeftAxis.Grid.Style = psSolid
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Times New Roman'
    LeftAxis.LabelStyle = talValue
    LeftAxis.MinorTicks.Visible = False
    LeftAxis.Ticks.Color = clBlack
    LeftAxis.TicksInner.Visible = False
    LeftAxis.Title.Caption = 'm'
    LeftAxis.Title.Font.Charset = ANSI_CHARSET
    LeftAxis.Title.Font.Height = -27
    LeftAxis.Title.Font.Name = 'GreekC'
    LeftAxis.Title.Font.Style = [fsBold]
    RightAxis.Axis.Width = 1
    RightAxis.Grid.Color = clBlack
    RightAxis.Grid.Style = psSolid
    RightAxis.LabelsFont.Height = -13
    RightAxis.LabelsFont.Name = 'Times New Roman'
    RightAxis.MinorTicks.Visible = False
    RightAxis.Ticks.Color = clBlack
    RightAxis.TicksInner.Visible = False
    RightAxis.Title.Font.Name = 'Times New Roman'
    RightAxis.Visible = False
    TopAxis.Axis.Width = 1
    TopAxis.Grid.Color = clBlack
    TopAxis.Grid.Style = psSolid
    TopAxis.LabelsFont.Height = -13
    TopAxis.LabelsFont.Name = 'Times New Roman'
    TopAxis.MinorTicks.Visible = False
    TopAxis.Ticks.Color = clBlack
    TopAxis.TicksInner.Visible = False
    TopAxis.Title.Font.Name = 'Times New Roman'
    TopAxis.Visible = False
    View3D = False
    View3DWalls = False
    Zoom.Allow = False
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    ColorPaletteIndex = 5
    object Series1: TPointSeries
      Marks.Arrow.Color = clBlack
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Callout.Length = 8
      Marks.Clip = True
      Marks.Font.Height = -13
      Marks.Font.Name = 'Times New Roman'
      Marks.Style = smsValue
      Marks.Transparent = True
      Marks.Visible = False
      PercentFormat = '##0.##'
      Title = 'Calculado'
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psStar
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TPointSeries
      Marks.Arrow.Color = clBlack
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Callout.Length = 8
      Marks.Font.Height = -13
      Marks.Font.Name = 'Times New Roman'
      Marks.Transparent = True
      Marks.Visible = False
      Title = 'U0'
      ClickableLine = False
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TPointSeries
      Marks.Arrow.Color = clBlack
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Font.Height = -13
      Marks.Font.Name = 'Times New Roman'
      Marks.Transparent = True
      Marks.Visible = False
      Title = 'Ude'
      ClickableLine = False
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TPointSeries
      Marks.Arrow.Color = clBlack
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Font.Height = -13
      Marks.Font.Name = 'Times New Roman'
      Marks.Transparent = True
      Marks.Visible = False
      Title = 'Ucd'
      ClickableLine = False
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TPointSeries
      Marks.Arrow.Color = clBlack
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Font.Height = -13
      Marks.Font.Name = 'Times New Roman'
      Marks.Transparent = True
      Marks.Visible = False
      Title = 'Ubc'
      ClickableLine = False
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series6: TPointSeries
      Marks.Arrow.Color = clBlack
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Font.Height = -13
      Marks.Font.Name = 'Times New Roman'
      Marks.Transparent = True
      Marks.Visible = False
      Title = 'Uab'
      ClickableLine = False
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object MainMenu1: TMainMenu
    Left = 256
    Top = 24
    object Impresso1: TMenuItem
      Caption = 'Impress'#227'o'
      object Grfico1: TMenuItem
        Caption = 'Gr'#225'fico'
        OnClick = Grfico1Click
      end
      object Dados1: TMenuItem
        Caption = 'Dados'
        OnClick = Dados1Click
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      OnClick = Sobre1Click
    end
  end
end
