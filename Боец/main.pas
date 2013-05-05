unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ComCtrls,
  Vcl.ExtCtrls, BCPort, CPort;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Timer1: TTimer;
    Button3: TButton;
    Button4: TButton;
    Labelms: TLabel;
    Label3: TLabel;
    Labels: TLabel;
    Label7: TLabel;
    Labelm: TLabel;
    Label9: TLabel;
    Button5: TButton;
    Memo1: TMemo;
    ComPort1: TComPort;
    Edit1: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    PanelSet: TPanel;
    Label22: TLabel;
    PanelKik: TPanel;
    Label23: TLabel;
    Button6: TButton;
    Panel1: TPanel;
    PanelTablo: TPanel;
    PanelProt: TPanel;
    Panel2: TPanel;
    Label12: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Panel7: TPanel;
    Label37: TLabel;
    CheckBox1: TCheckBox;
    StringGrid1: TStringGrid;
    Panel8: TPanel;
    Button7: TButton;
    Panel3: TPanel;
    Panel5: TPanel;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Panel4: TPanel;
    Label13: TLabel;
    Label24: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Panel6: TPanel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Edit3: TEdit;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BComPort1RxChar(Sender: TObject; Count: Integer);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function only_numbers(str:string):string;

var buf:string;
    i:integer;
begin
buf:='';
for i:=1 to length(str) do
  if str[i] in ['0'..'9'] then buf:=buf+str[i];
Result:=buf;
end;

procedure TForm1.BComPort1RxChar(Sender: TObject; Count: Integer);
var
  Str: String;
  l,i:integer;
begin
 //BComPort1.ReadStr(Str, Count);
 //str:=only_numbers(str);
 //Str:=OemToAnsi(Str,Str);
 l:=Length(str);
 for i := 0 to l do
  begin
  memo1.Lines.Add(str);
  memo1.Lines.Add(inttostr(ord(str[i])));
  end;
// memo1.Lines.Add(str+':'+intToStr(l));
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
if panel8.Caption='����� 1' then
begin
label39.Caption:=IntToStr(StrToInt(label39.Caption)+1);
label91.Caption:=label91.Caption+' W ';
end;

if panel8.Caption='����� 2' then
begin
label56.Caption:=IntToStr(StrToInt(label56.Caption)+1);
label93.Caption:=label93.Caption+' W ';
end;

if panel8.Caption='����� 3' then
begin
label75.Caption:=IntToStr(StrToInt(label75.Caption)+1);
label95.Caption:=label95.Caption+' W ';
end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
if panel8.Caption='����� 1' then
Begin
label40.Caption:=IntToStr(StrToInt(label40.Caption)+1*StrToInt(edit3.Text));
label85.Caption:=label85.Caption+' -1 ';
end;
if panel8.Caption='����� 2' then
Begin
label57.Caption:=IntToStr(StrToInt(label57.Caption)+1*StrToInt(edit3.Text));
label87.Caption:=label87.Caption+' -1 ';
end;
if panel8.Caption='����� 3' then
Begin
label76.Caption:=IntToStr(StrToInt(label76.Caption)+1*StrToInt(edit3.Text));
label89.Caption:=label89.Caption+' -1 ';
end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
// ����������� ����������

if Panel8.Caption='����������� ����������' then
  begin
    Panel8.Caption:='';
  end
  Else
//if Panel8.Caption='' then
  begin
    Panel8.Caption:='����������� ����������';
    Label14.Caption:='0';
    Label16.Caption:='0';
    Label18.Caption:='0';
    Label15.Caption:='0';
    Label19.Caption:='0';
    label17.Caption:='0';
  end;



end;

procedure TForm1.Button13Click(Sender: TObject);
begin
Label20.Caption:='0';
Label21.Caption:='0';
Label80.Caption:='0';
Label81.Caption:='0';
Label14.Caption:='0';
Label15.Caption:='0';
Label16.Caption:='0';
Label17.Caption:='0';
Label18.Caption:='0';
Label19.Caption:='0';
Label28.Caption:='0';
Label30.Caption:='0';
Label32.Caption:='0';
Label36.Caption:='0';
Label38.Caption:='0';
Label42.Caption:='0';
Label29.Caption:='0';
Label31.Caption:='0';
Label33.Caption:='0';
Label39.Caption:='0';
Label40.Caption:='0';
Label43.Caption:='0';
//--
Label46.Caption:='0';
Label47.Caption:='0';
Label48.Caption:='0';
Label49.Caption:='0';
Label50.Caption:='0';
Label51.Caption:='0';
Label54.Caption:='0';
Label56.Caption:='0';
Label55.Caption:='0';
Label57.Caption:='0';
Label59.Caption:='0';
Label60.Caption:='0';
//--
Label65.Caption:='0';
Label66.Caption:='0';
Label67.Caption:='0';
Label68.Caption:='0';
Label69.Caption:='0';
Label70.Caption:='0';
Label73.Caption:='0';
Label75.Caption:='0';
Label74.Caption:='0';
Label76.Caption:='0';
Label78.Caption:='0';
Label79.Caption:='0';

label84.Caption:='';
label90.Caption:='';
label85.Caption:='';
label91.Caption:='';

label86.Caption:='';
label92.Caption:='';
label87.Caption:='';
label93.Caption:='';

label88.Caption:='';
label89.Caption:='';
label85.Caption:='';
label91.Caption:='';

label94.Caption:='';
label95.Caption:='';


button3.Enabled:=true;

end;

procedure TForm1.Button14Click(Sender: TObject);
begin
if StrToInt(label20.Caption)>StrToInt(Label21.Caption) then
  Begin
  
  End;
if StrToInt(label20.Caption)>StrToInt(Label21.Caption) then
  Begin

  End
  Else 
  Begin

  End;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Button1.Enabled:=false;
  Button2.Enabled:=true;
  Label5.Caption:='������������ ����������';
  label5.Font.Color:=clLime;
  Edit1.Enabled:=false;
  ComPort1.Port:='';
  ComPort1.Port:='Com'+Edit1.Text;
  ComPort1.Open;

  //BComPort1.BaudRate:=br115200;
  //BcomPort1.Port:=ComboBox1.Text;
  //BcomPort1.InBufSize:=4096;
  //BComPort1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Button2.Enabled:=false;
  Button1.Enabled:=true;
  Label5.Caption:='������������ ���������';
  label5.Font.Color:=clRed;
  Edit1.Enabled:=true;
  ComPort1.Close;
  //BComPort1.Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  button3.Enabled:=false;
  button4.Enabled:=true;
  timer1.Enabled:=true;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
// �������� ������ �� ����� �� ����� ���
//or (stringgrid1.Cells[3,3]='����...') or (stringgrid1.Cells[3,5]='����...') then

if (stringgrid1.Cells[3,1]='����...') then
  begin
    panel8.Caption:='����� 1';
  end;

if (stringgrid1.Cells[3,3]='����...') then
  begin
    panel8.Caption:='����� 2';
  end;

if (stringgrid1.Cells[3,5]='����...') then
  begin
    panel8.Caption:='����� 3';
  end;


end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  button3.Enabled:=true;
  button4.Enabled:=false;
  timer1.Enabled:=false;
  RadioButton1.Enabled:=true;
  RadioButton2.Enabled:=true;
  RadioButton3.Enabled:=true;
  Panel8.Caption:='';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
//����� �������
labelm.Caption:='0';
labelms.Caption:='0';
labels.Caption:='0';

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
stringgrid1.Cells[3,1]:='';
stringgrid1.Cells[3,2]:='';
stringgrid1.Cells[3,3]:='';
stringgrid1.Cells[3,4]:='';
stringgrid1.Cells[3,5]:='';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
if panel8.Caption='����� 1' then
Begin
label36.Caption:=IntToStr(StrToInt(label36.Caption)+1);
label90.Caption:=label90.Caption+' W ';
end;

if panel8.Caption='����� 2' then
begin
label54.Caption:=IntToStr(StrToInt(label54.Caption)+1);
label90.Caption:=label92.Caption+' W ';
end;

if panel8.Caption='����� 3' then
begin
label73.Caption:=IntToStr(StrToInt(label73.Caption)+1);
label90.Caption:=label94.Caption+' W ';
end;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
if panel8.Caption='����� 1' then
Begin
  label38.Caption:=IntToStr(StrToInt(label38.Caption)+1*StrToInt(edit3.Text));
  Label84.Caption:=Label84.Caption+' -1 ';
End;

if panel8.Caption='����� 2' then
Begin
  label55.Caption:=IntToStr(StrToInt(label55.Caption)+1*StrToInt(edit3.Text));
  Label86.Caption:=Label86.Caption+' -1 ';
End;

if panel8.Caption='����� 3' then
Begin
  label74.Caption:=IntToStr(StrToInt(label74.Caption)+1*StrToInt(edit3.Text));
  Label88.Caption:=Label88.Caption+' -1 ';
End;

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if checkbox1.State=cbUnchecked then
  Begin
    stringgrid1.Enabled:=false;
    button7.Enabled:=false;
  End;

if checkbox1.State=cbChecked then
  Begin
    stringgrid1.Enabled:=true;
    button7.Enabled:=true;
  End;

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  Button1.Enabled:=true;
end;

procedure TForm1.ComPort1RxChar(Sender: TObject; Count: Integer);
var
  Str: String;

begin
// ������� ������ ���� ���� ������ ������ ��� ������ �����


 // begin
  ComPort1.ReadStr(Str, Count);
  memo1.Lines.Add(Str);   // ����� � ���
  str:=only_numbers(str);
  Edit2.Text:=Str;
if Panel8.Caption<>'' then
begin
 // ����� 1
  if only_numbers(Edit2.Text)='2' then
    begin
    label14.Caption:=IntToStr(StrToInt(label14.Caption)+1);
    end;
   if only_numbers(Edit2.Text)='3' then
    begin
    label15.Caption:=IntToStr(StrToInt(label15.Caption)+1);
    end;
 // ����� 2
  if only_numbers(Edit2.Text)='4' then
    begin
    label16.Caption:=IntToStr(StrToInt(label16.Caption)+1);
    end;
   if only_numbers(Edit2.Text)='5' then
    begin
    label17.Caption:=IntToStr(StrToInt(label17.Caption)+1);
    end;
 // ����� 3
  if only_numbers(Edit2.Text)='6' then
    begin
    label18.Caption:=IntToStr(StrToInt(label18.Caption)+1);
    end;
   if only_numbers(Edit2.Text)='7' then
    begin
    label19.Caption:=IntToStr(StrToInt(label19.Caption)+1);
    end;

    //Label20.Caption:=IntToStr(StrToInt(Label14.Caption)+StrToInt(Label16.Caption)+StrToInt(Label18.Caption));

    //Label21.Caption:=IntToStr(StrToInt(Label15.Caption)+StrToInt(Label17.Caption)+StrToInt(Label19.Caption));
    Edit2.Text:='';
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin

label84.Caption:='';
label90.Caption:='';
label85.Caption:='';
label91.Caption:='';

label86.Caption:='';
label92.Caption:='';
label87.Caption:='';
label93.Caption:='';

label88.Caption:='';
label89.Caption:='';
label85.Caption:='';
label91.Caption:='';

label94.Caption:='';
label95.Caption:='';

  // ��������� �����

  Edit2.Text:='';
  Button2.Enabled:=false;
  Button3.Enabled:=false;
  Label5.Caption:='������������ ���������';
  label5.Font.Color:=clRed;
  button4.Enabled:=false;
  labels.Caption:='0';
  labelms.Caption:='0';
  labelm.Caption:='0';
 // button3.Enabled:=true;
  label14.Caption:='0';
  label15.Caption:='0';
  label16.Caption:='0';
  label17.Caption:='0';
  label18.Caption:='0';
  label19.Caption:='0';
  label20.Caption:='0';
  label21.Caption:='0';
  StringGrid1.Enabled:=False;
  stringgrid1.Cells[0,0]:='--';
  stringgrid1.Cells[1,0]:='���';
  stringgrid1.Cells[2,0]:='���';
  stringgrid1.Cells[3,0]:='������';

  stringgrid1.Cells[0,1]:='����� 1';
  stringgrid1.Cells[0,2]:='������� 1';
  stringgrid1.Cells[0,3]:='����� 2';
  stringgrid1.Cells[0,4]:='������� 2';
  stringgrid1.Cells[0,5]:='����� 3';

  stringgrid1.Cells[1,2]:='1';
  stringgrid1.Cells[1,4]:='1';
  stringgrid1.Cells[2,2]:='0';
  stringgrid1.Cells[2,4]:='0';

  panel8.Color:=clGradientInactiveCaption;
  panel8.Caption:='';
  button7.Enabled:=false;
  label80.Caption:='0';
  label81.Caption:='0';

  //EnumComPorts(ComboBox1.Items);
  // ����� ����� � ������ ComboBox1 � ���������� ������ ��������
  //BComPort1.Port := ComboBox1.Text;
  //sg.ScrollBars.ssHorizontal:=false;


end;



procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  button3.Enabled:=true;
  //label33.Caption:='2';
  //label34.Caption:='0';
  //������������� ����� ������� � ��������
  stringgrid1.Cells[1,1]:='2';
  stringgrid1.Cells[2,1]:='0';
  stringgrid1.Cells[1,3]:='2';
  stringgrid1.Cells[2,3]:='0';
  stringgrid1.Cells[1,5]:='2';
  stringgrid1.Cells[2,5]:='0';

end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  button3.Enabled:=true;
  //label33.Caption:='1';
  //label34.Caption:='30';
  stringgrid1.Cells[1,1]:='1';
  stringgrid1.Cells[2,1]:='30';
  stringgrid1.Cells[1,3]:='1';
  stringgrid1.Cells[2,3]:='30';
  stringgrid1.Cells[1,5]:='1';
  stringgrid1.Cells[2,5]:='30';
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  button3.Enabled:=true;
  //label33.Caption:='1';
  //label34.Caption:='0';
  stringgrid1.Cells[1,1]:='1';
  stringgrid1.Cells[2,1]:='0';
  stringgrid1.Cells[1,3]:='1';
  stringgrid1.Cells[2,3]:='0';
  stringgrid1.Cells[1,5]:='1';
  stringgrid1.Cells[2,5]:='0';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  ms,s,m:integer;
  //s:string;
begin
  ms:=StrToInt(labelms.Caption);
  ms:=ms+1;
  labelms.Caption:=IntToStr(ms);
// ��������� �� ������ �� �������
  if ms=9 then
    begin
    s:=StrToInt(labels.Caption);
    s:=s+1;
    labels.Caption:=IntToStr(s);
    Labelms.Caption:='0';
    end;

  if s=59 then
    begin
    m:=StrToInt(labelm.Caption);
    m:=m+1;
    labelm.Caption:=IntToStr(m);
    Labels.Caption:='0';
    end;

// ����� �� ��������

// ������ �������� ����� ������� ������

  if (StringGrid1.Cells[3,1]='') and (StringGrid1.Cells[3,2]='') and (StringGrid1.Cells[3,3]='') and (StringGrid1.Cells[3,4]='') and (StringGrid1.Cells[3,5]='') then
    begin
      StringGrid1.Cells[3,1]:='����...' ;
      panel8.Color:=clRed;
      panel8.Caption:='����� 1';
    end;

// ���������� ����� ������� ������ � �������� ������ �������

  if (Labelm.Caption=StringGrid1.Cells[1,1]) and (Labels.Caption=stringgrid1.Cells[2,1]) and (StringGrid1.Cells[3,1]='����...') then
    begin
      StringGrid1.Cells[3,1]:='�������' ;     // ������� ��������� ������� ������
      StringGrid1.Cells[3,2]:='����...' ;     // ������� ������ ������� ��������
      labelm.Caption:='0';       // ����� ��������
      labels.Caption:='0';
      labelms.Caption:='0';
      panel8.Color:=clLime;
      panel8.Caption:='';

      //��������� ��������� ������� ������ � ������ ���������� ������� ������
      label28.Caption:=label14.Caption;
      label30.Caption:=label16.Caption;
      label32.Caption:=label18.Caption;
      label29.Caption:=label15.Caption;
      label31.Caption:=label17.Caption;
      label33.Caption:=label19.Caption;

      //������ 1 �����
      //��������� ����
      label42.Caption:=IntToStr(StrToInt(Label28.Caption)+StrToInt(label30.Caption)+StrToInt(label32.Caption)-StrToInt(label38.Caption));
      label43.Caption:=IntToStr(StrToInt(Label29.Caption)+StrToInt(label31.Caption)+StrToInt(label33.Caption)-StrToInt(label40.Caption));

      //������ ���� ������ � ����� ����
      label20.Caption:=label42.Caption;
      label21.Caption:=label43.Caption;
      label80.Caption:=label36.Caption;
      label81.Caption:=label39.Caption;

      //���������� ����
      label14.Caption:='0';
      label16.Caption:='0';
      label18.Caption:='0';
      label15.Caption:='0';
      label17.Caption:='0';
      label19.Caption:='0';
    end;

// ���������� ����� ������� �������� � �������� ������ �����

  if (Labelm.Caption=StringGrid1.Cells[1,2]) and (Labels.Caption=stringgrid1.Cells[2,2]) and (StringGrid1.Cells[3,2]='����...') then
    begin
      StringGrid1.Cells[3,2]:='�������' ;
      StringGrid1.Cells[3,3]:='����...' ;
      labelm.Caption:='0';       // ����� ��������
      labels.Caption:='0';
      labelms.Caption:='0';
      panel8.Color:=clRed;
      panel8.Caption:='����� 2';

    end;

// ���������� ����� ������� ������ � �������� ������ �������

  if (Labelm.Caption=StringGrid1.Cells[1,3]) and (Labels.Caption=stringgrid1.Cells[2,3]) and (StringGrid1.Cells[3,3]='����...') then
    begin
      StringGrid1.Cells[3,3]:='�������' ;
      StringGrid1.Cells[3,4]:='����...' ;
      labelm.Caption:='0';       // ����� ��������
      labels.Caption:='0';
      labelms.Caption:='0';
      panel8.Color:=clLime;
      panel8.Caption:='';


      //��������� ��������� ������� ������ � ������ ���������� ������� ������
      label46.Caption:=label14.Caption;
      label48.Caption:=label16.Caption;
      label50.Caption:=label18.Caption;
      label47.Caption:=label15.Caption;
      label49.Caption:=label17.Caption;
      label51.Caption:=label19.Caption;

      //������ 2 �����
      //��������� ����
      label59.Caption:=IntToStr(StrToInt(Label46.Caption)+StrToInt(label48.Caption)+StrToInt(label50.Caption)-StrToInt(label55.Caption));
      label60.Caption:=IntToStr(StrToInt(Label47.Caption)+StrToInt(label49.Caption)+StrToInt(label51.Caption)-StrToInt(label57.Caption));

      //������ ���� ������ � ����� ����
      label20.Caption:=IntToStr(StrToInt(label20.Caption)+StrToInt(label59.Caption));
      label21.Caption:=IntToStr(StrToInt(label21.Caption)+StrToInt(label60.Caption));
      label80.Caption:=IntToStr(StrToInt(label80.Caption)+StrToInt(label54.Caption));
      label81.Caption:=IntToStr(StrToInt(label81.Caption)+StrToInt(label56.Caption));



      //���������� ����
      label14.Caption:='0';
      label16.Caption:='0';
      label18.Caption:='0';
      label15.Caption:='0';
      label17.Caption:='0';
      label19.Caption:='0';
    end;

// ���������� ����� ������� �������� � �������� ������ �����

  if (Labelm.Caption=StringGrid1.Cells[1,4]) and (Labels.Caption=stringgrid1.Cells[2,4]) and (StringGrid1.Cells[3,4]='����...') then
    begin
      StringGrid1.Cells[3,4]:='�������' ;
      StringGrid1.Cells[3,5]:='����...' ;
      labelm.Caption:='0';       // ����� ��������
      labels.Caption:='0';
      labelms.Caption:='0';
      panel8.Color:=clRed;
      panel8.Caption:='����� 3';

    end;

// ���������� ����� �������� ������ � ����������� ���

  if (Labelm.Caption=StringGrid1.Cells[1,5]) and (Labels.Caption=stringgrid1.Cells[2,5]) and (StringGrid1.Cells[3,5]='����...') then
    begin
      StringGrid1.Cells[3,5]:='�������' ;
 //     StringGrid1.Cells[3,5]:='����...' ;
      labelm.Caption:='0';       // ����� ��������
      labels.Caption:='0';
      labelms.Caption:='0';
      //������������� �����
      button3.Enabled:=true;
      button4.Enabled:=false;
      timer1.Enabled:=false;
      RadioButton1.Enabled:=true;
      RadioButton2.Enabled:=true;
      RadioButton3.Enabled:=true;

      panel8.Color:=clGradientInactiveCaption;
      panel8.Caption:='';

      stringgrid1.Cells[3,1]:='';
      stringgrid1.Cells[3,2]:='';
      stringgrid1.Cells[3,3]:='';
      stringgrid1.Cells[3,4]:='';
      stringgrid1.Cells[3,5]:='';

      //��������� ��������� ������� ������ � ������ ���������� ������� ������
      label65.Caption:=label14.Caption;
      label67.Caption:=label16.Caption;
      label69.Caption:=label18.Caption;
      label66.Caption:=label15.Caption;
      label68.Caption:=label17.Caption;
      label70.Caption:=label19.Caption;

      //������ 3 �����
      //��������� ����
      label78.Caption:=IntToStr(StrToInt(Label65.Caption)+StrToInt(label67.Caption)+StrToInt(label69.Caption)-StrToInt(label74.Caption));
      label79.Caption:=IntToStr(StrToInt(Label66.Caption)+StrToInt(label68.Caption)+StrToInt(label70.Caption)-StrToInt(label76.Caption));

      //������ ���� ������ � ����� ����
      label20.Caption:=IntToStr(StrToInt(label20.Caption)+StrToInt(label78.Caption));
      label21.Caption:=IntToStr(StrToInt(label21.Caption)+StrToInt(label79.Caption));
      label80.Caption:=IntToStr(StrToInt(label80.Caption)+StrToInt(label73.Caption));
      label81.Caption:=IntToStr(StrToInt(label81.Caption)+StrToInt(label75.Caption));



      //���������� ����
      label14.Caption:='0';
      label16.Caption:='0';
      label18.Caption:='0';
      label15.Caption:='0';
      label17.Caption:='0';
      label19.Caption:='0';

      button3.Enabled:=false;

    end;

end;

end.
