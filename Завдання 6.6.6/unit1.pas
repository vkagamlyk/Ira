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
    Label4: TLabel;
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
var i,n,x,sum:integer;
begin
  x:=StrToInt(Edit1.Text);
  n:=StrToInt(Edit2.Text);
  sum:=0;
  for i:= 1 to n do
  begin
    sum:=sum+x;
    x:=x+5;
  end;
   Label4.Caption:=IntToStr(sum);
end;

end.

