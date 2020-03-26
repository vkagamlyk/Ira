unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var x,y,sum,max,i,tmp:integer;
begin
x:=StrToInt(Edit1.Text);
y:=StrToInt(Edit2.Text);
if x>y then
begin
  tmp:=x;
  x:=y;
  y:=tmp;
end;
sum:=0;
max:=y;
for i:= 1 to max do
begin
  if x=y then
  begin
    sum:=sum+1;
    break;
  end
  else
  begin
    if x>y then
    begin
    tmp:=x;
    x:=y;
    y:=tmp;
    end;
    y:=y-x;
    sum:=sum+1;
  end;
end;
 Label1.Caption:='Кількість квадратів'+IntToStr(sum);
end;
end.

