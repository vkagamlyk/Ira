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
var x,dx,sum,n:integer;
begin
 x:=100;
 dx:=StrToInt(Edit1.Text);
 sum:=0;
 n:=0;
 if dx<0 then
    Label3.Caption:='Введіть додатнє число';
 else
 begin
 while x>0 do
  begin
  sum:=sum+x;
  n:=n+1;
  x:=x-dx;
  end;

 Label3.Caption:=FloatToStr(sum/n);
 end;

end;

end.

