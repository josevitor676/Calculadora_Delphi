unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
  private
    { Private declarations }
    FirstNum, SecondNum, Answer: String;
    Operators: Char;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
  begin
    Edit1.Text := '8';
  end
  else
  Edit1.Text := Edit1.Text + '8';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
  begin
    Edit1.Text := '9';
  end
  else
  Edit1.Text := Edit1.Text + '9';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Edit1.Text := copy(Edit1.Text, 1, length(Edit1.Text) -1);
  if Edit1.Text = '' then
  begin
    Edit1.Text := '0';
  end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Edit1.Text := '0';
end;

procedure TForm1.Button14Click(Sender: TObject);
var
  fn, sn : String;
begin
  Edit1.Text := '0';
  fn := FirstNum;
  sn := SecondNum;

  fn:= '';
  sn:= '';

end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  FirstNum := Edit1.Text;
  Operators := '-';
  Edit1.Text := '';
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  FirstNum := Edit1.Text;
  Operators := '*';
  Edit1.Text := '';
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  FirstNum := Edit1.Text;
  Operators := '/';
  Edit1.Text := '';
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  if (POS('.', Edit1.Text) <> 0) then
  begin
    exit;
  end
  else
  begin
    Edit1.Text := Edit1.Text + Button18.Caption;
  end;

end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  SecondNum := Edit1.Text;

  case (Operators) of
  '+':
    Answer := FloatToStr(StrToFloat(FirstNum) + StrToFloat(SecondNum));

  '-':
    Answer := FloatToStr(StrToFloat(FirstNum) - StrToFloat(SecondNum));

  '*':
    Answer := FloatToStr(StrToFloat(FirstNum) * StrToFloat(SecondNum));

  '/':
    Answer := FloatToStr(StrToFloat(FirstNum) / StrToFloat(SecondNum));
  end;
    Edit1.Text :=  Answer;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
  begin
    Edit1.Text := '1';
  end
  else
  Edit1.Text := Edit1.Text + '1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
  begin
    Edit1.Text := '2';
  end
  else
  Edit1.Text := Edit1.Text + '2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
  begin
    Edit1.Text := '3';
  end
  else
  Edit1.Text := Edit1.Text + '3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FirstNum := Edit1.Text;
  Operators := '+';
  Edit1.Text := '';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
  begin
    Edit1.Text := '0';
  end
  else
  Edit1.Text := Edit1.Text + '0';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
  begin
    Edit1.Text := '4';
  end
  else
  Edit1.Text := Edit1.Text + '4';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
  begin
    Edit1.Text := '5';
  end
  else
  Edit1.Text := Edit1.Text + '5';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
  begin
    Edit1.Text := '6';
  end
  else
  Edit1.Text := Edit1.Text + '6';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
  begin
    Edit1.Text := '7';
  end
  else
  Edit1.Text := Edit1.Text + '7';
end;

end.
