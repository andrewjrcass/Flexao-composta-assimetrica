unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, TeeProcs, Chart, ExtCtrls, StdCtrls, Menus, Printers, UAbout;
const
LF = #13#13;
type

  TForm1 = class(TForm)
    Panel1: TPanel;
    Chart: TChart;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cmbAco: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    edtxd: TEdit;
    edtfck: TEdit;
    edtdl: TEdit;
    edth: TEdit;
    edtbw: TEdit;
    edtM: TEdit;
    edtN: TEdit;
    GroupBox1: TGroupBox;
    lblRelat: TLabel;
    Button1: TButton;
    edtKyd: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblMi: TLabel;
    lblNi: TLabel;
    Series2: TPointSeries;
    Series3: TPointSeries;
    Series4: TPointSeries;
    Series5: TPointSeries;
    Series6: TPointSeries;
    Series1: TPointSeries;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    MainMenu1: TMainMenu;
    Impresso1: TMenuItem;
    Grfico1: TMenuItem;
    Dados1: TMenuItem;
    Sobre1: TMenuItem;
    procedure edtNKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbAcoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Grfico1Click(Sender: TObject);
    procedure Dados1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearSeries;
  end;

var
  Form1: TForm1;
  Mi, Ni, Nd, Md, dl, h, hl, bw, fcd, fyd, Kh, Kyd, Ky, Alfa, Alfa_l, Es, Esl, Ex, ro, ro_l,
  Ass, Ass_l, xd, Sigmal :Extended;
  fRegiao: Char;
  InfoText: String;

implementation

function fSigma_L: Extended;
var
a,b,c,r1,r2: Extended;
begin
 a:= ES/Sqr(Fyd);
 b:= (45*Fyd-1.4*Es)/Fyd;
 c:= 0.49*Es-45*Es*Esl;
 r1:= (-b-Sqrt(Sqr(b)-4*a*c))/(2*a);
 r2:= (-b+Sqrt(Sqr(b)-4*a*c))/(2*a);
 if r1>r2 then Result:= r1 else
               Result:= r2;
end;

function Mio(Niv: Extended): Extended;
begin
  Result:= 0.59*Niv*(0.85*Kh-Niv);
end;

function Mide(Niv:extended): extended;
begin
 Result:= -0.5*Niv*(2-Kh);
end;

function Micd(Niv: extended): extended;
begin
 result:= -Niv*(1-0.5*Kh)+0.85*Kyd*(1-0.5*Kyd);
end;

function Mibc(Niv: extended): extended;
begin
 result:= Niv*(1-0.5*Kh)-0.85*Kyd*(0.5*Kyd+1-Kh);
end;

function Miab(Niv: extended): extended;
begin
 result:= (1-0.5*Kh)*(Niv-0.85*Kh);
end;

procedure goA;
begin
 Ro:= 1/(2*alfa_l)*(Ni-Mi/(1-0.5*Kh)-0.85*Kh);
 Ro_l:= 1/(2*alfa_l)*(Ni+Mi/(1-0.5*Kh)-0.85*Kh);
 Ass:=Ro*bw*100*hl*100;
 Ass_l:=Ro_l*bw*100*hl*100;
 InfoText:= InfoText + 'Compressão em As e As'#39;
end;

procedure goB;
begin
 Ky:= (Kh-1)+Sqrt(Sqr(1-Kh)-1/0.425*(Mi-Ni*(1-0.5*Kh)));
 Ro_l:= (Ni-0.85*Ky)/Alfa_l;
 Ass:=0;
 Ass_l:= Ro_l*bw*100*hl*100;
 InfoText:= InfoText + 'As pode não existir, '+LF+'Por definição As=0.'+LF+
                       'Concreto e As'#39' de compressão. '
end;

procedure goC;
begin
Ro:=1/(2*Alfa)*(Mi/(1-0.5*Kh)-Ni+0.85*Kyd*(1-Kh+0.5*Kyd)/(1-0.5*Kh));
Ro_l:=1/(2*Alfa_l)*(Mi/(1-0.5*Kh)+Ni-0.85*Kyd*(1-0.5*Kyd)/(1-0.5*Kh));
Ass:= Ro*bw*100*hl*100;
Ass_l:= Ro_l*bw*100*hl*100;
InfoText:= InfoText +  'As de Tração e AS'#39' de compressão';
end;

procedure goD;
var
c: Extended;
begin
 c:= Mi+Ni*(1-0.5*Kh);
 Ky:= (0.85-Sqrt(sqr(0.85)-4*0.425*c))/2/0.425;
 Ass:= bw*100*hl*100*(0.85*Ky-Ni)/alfa;
 Ass_l:=0;
 InfoText:= InfoText + 'O esforço resistente de compressão'+LF+
                       'fornecido apenas pelo concreto.';
end;

procedure goE;
begin
 ro:=  1/(2*alfa)*(2*Mi/(2-Kh)-Ni);
 ro_l:= 1/(2*alfa)*(-2*Mi/(2-Kh)-Ni);
 Ass:= ro*bw*100*hl*100;
 Ass_l:= ro_l*bw*100*hl*100;
 InfoText:= InfoText + 'Ambas as armaduras (AS e AS'#39') são de tração.';
end;

procedure goO;
begin
Ass:=0;
Ass_l:=0;
InfoText:= InfoText + 'Seção super dimensionada.'+LF+
                      'nenhuma armadura é necessária'+LF+
                      'As = AS'#30' =0';
end;

{$R *.dfm}

procedure TForm1.edtNKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 try
  StrToFloat(TEdit(Sender).Text);
  TEdit(Sender).Font.Color:= clBlack;
 except
  TEdit(Sender).Font.Color:= clRed;
 end;
end;

procedure TForm1.cmbAcoChange(Sender: TObject);
begin
 case cmbAco.ItemIndex of
  0: begin //CA25
      edtxd.Text:= FloatToStr(0.7717);
      edtKyd.Text:= FloatToStr(0.61736);
      fyd:= 2500/1.15;
     end;
  1: begin //CA32
      edtxd.Text:= FloatToStr(0.7254);
      edtKyd.Text:= FloatToStr(0.58032);
      fyd:= 3200/1.15;
     end;
  2: begin //CA40A
      edtxd.Text:= FloatToStr(0.6788);
      edtKyd.Text:= FloatToStr(0.54304);
      fyd:= 4000/1.15;
     end;
  3: begin //CA40B
      edtxd.Text:= FloatToStr(0.4891);
      edtKyd.Text:= FloatToStr(0.39128);
      fyd:= 4000/1.15;
     end;
  4: begin //CA50A
      edtxd.Text:= FloatToStr(0.6283);
      edtKyd.Text:= FloatToStr(0.50264);
      fyd:= 5000/1.15;
     end;
  5: begin //CA50B
      edtxd.Text:= FloatToStr(0.4623);
      edtKyd.Text:= FloatToStr(0.36984);
      fyd:= 5000/1.15;
     end;
  6: begin //CA60A
      edtxd.Text:= FloatToStr(0.5900);
      edtKyd.Text:= FloatToStr(0.472);
      fyd:= 6000/1.15;
     end;
  7: begin //CA60B
      edtxd.Text:= FloatToStr(0.4384);
      edtKyd.Text:= FloatToStr(0.35072);
      fyd:= 6000/1.15;
     end;
 end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  cmbAco.OnChange(Self);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
i, Step: Extended;
begin
  InfoText:= '';
  ClearSeries; //Clear all data series from graph
  fRegiao:= '0'; //Nenhuma regiao definida
  Nd:= StrToFloat(edtN.Text)*1.4;
  Md:= StrToFloat(edtM.Text)*1.4;
  bw:= StrToFloat(edtbw.Text)/100;
  h:= StrToFloat(edth.Text)/100;
  dl:= StrToFloat(edtdl.Text)/100;
  hl:= h-dl;
  fcd:= StrToFloat(edtfck.Text)*100/1.4;
  xd:= StrToFloat(edtxd.Text);
  Kyd:= StrToFloat(edtkyd.Text);

  // calc Mi and Ni
  Mi:= Md/(bw*Sqr(hl)*fcd);
  Ni:= Nd/(bw*hl*fcd);
  // put Mi Ni on screen
  lblMi.Caption:= Copy(FloatToStr(Mi),0,8);
  lblNi.Caption:= Copy(FloatToStr(Ni),0,8);
  // Put Mi Ni on Chart
  Chart.Series[0].AddXY(Ni,Mi);
  Chart.AxisVisible:=True; //Will Make Axis Visible
  Chart.LeftAxis.Increment:=0.1; //Increament by 10


  Kh:= h/hl;
  Es:= 2100000;
  Alfa:= fyd/fcd*10;
  Ex:= xd/hl;
  Esl:= 3.5/1000*(Ex-dl)/Ex;
  Sigmal:= fSigma_l;
  alfa_l:= Sigmal/fcd*10;

  //Plot the others series
  i:= -1;   // inicial value for Ni
  Step:= 3/200;
  While i <= 2 do begin
  if Mio(i) >= 0 then
     Chart.Series[1].AddXY(i,Mio(i));
  if i <= 0 then
     Chart.Series[2].AddXY(i,Mide(i));
  if Micd(i) > Mio(i) then
     Chart.Series[3].AddXY(i,Micd(i));
  if Mibc(i) >= Mio(i) then
     Chart.Series[4].AddXY(i,Mibc(i));
  if Miab(i) >= 0 then
     Chart.Series[5].AddXY(i,Miab(i));
  i:= i+Step;
  end;
  if Ni <= 0 then begin
     if Mi <= Mide(Ni) then fRegiao:= 'E' else
     if Mi <= Micd(Ni) then fRegiao:= 'D' else
        fRegiao:= 'C';
  end else begin
     if Mi <= Mio(Ni) then fRegiao:= 'O' else
     if Mi <= Micd(Ni) then fRegiao:= 'D' else
     if Mi <= Miab(Ni) then fRegiao:= 'A' else
     if Mi <= Mibc(Ni) then fRegiao:= 'B' else
        fRegiao:= 'C';
  end;
  InfoText:= 'Região: ' + fRegiao + LF;
  case fRegiao of
   'A':goA;
   'B':goB;
   'C':goC;
   'D':goD;
   'E':goE;
   'O':goO;
  end;
  InfoText:= InfoText + LF +  Format('AS'#39'='+' %10.2f cm2',[Ass_l]) + LF + Format('AS= %10.2f cm2',[Ass]);
  lblRelat.Caption:= InfoText;
end;

procedure TForm1.ClearSeries;
var
i: integer;
begin
  for i:= 0 to Chart.SeriesList.Count-1 do
      Chart.Series[i].Clear; //Clears all series
end;

procedure TForm1.Grfico1Click(Sender: TObject);
begin
    Chart.PrintLandscape;
end;

procedure TForm1.Dados1Click(Sender: TObject);
var
 fData: TStringList;
 MyPrinter: TPrinter;
 i,x,y: Integer;

begin
 fData:= TStringList.Create;
   fData.Add('N: ' + edtN.Text + '    M: ' + edtM.Text);
   fData.Add('bw: ' + edtBw.Text + '    H: ' + edtH.Text);
   fData.Add('d'#39': ' + edtdl.Text + '    fck: ' + edtfck.Text);
   fData.Add('Aço: ' + cmbaco.Text + '    x/d: ' + edtxd.Text);
   fData.Add('Kyd: ' + edtkyd.Text + '    Mi: ' + lblMi.Caption);
   fData.Add('Ni: ' + lblNi.Caption);
   fData.Add(lblRelat.Caption);
   MyPrinter:= TPrinter.Create;
   MyPrinter.BeginDoc;
   x:= MyPrinter.Canvas.TextWidth('MMMMMMMMM');
   y:= MyPrinter.Canvas.TextHeight('M');
   for i:= 0 to fData.Count-1 do begin
     y:= y+MyPrinter.Canvas.TextHeight('M');
     Myprinter.Canvas.TextOut(X,Y,fData[i]);
   end;
   MyPrinter.EndDoc;
   MyPrinter.Destroy;
 fData.Destroy;
end;

procedure TForm1.Sobre1Click(Sender: TObject);
begin
  frmAbout.ShowModal;
end;

end.
