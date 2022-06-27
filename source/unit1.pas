unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, lcltype;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    M: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure MChange(Sender: TObject);
    procedure MKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public

  end;

var
  Form1: TForm1;
  k : integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var i: integer;
    s: string;
begin
   //case Key of
   //VK_MULTIPLY  : M.Lines.Text := StringReplace(M.Lines.Text,'*', '∧', [rfReplaceAll]);
   //VK_ADD       : M.Lines.Text := StringReplace(M.Lines.Text,'+', '∨', [rfReplaceAll]);
   //end
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    M.Lines.Text := StringReplace(M.Lines.Text,'*', '∧', [rfReplaceAll]);
    M.Lines.Text := StringReplace(M.Lines.Text,'+', '∨', [rfReplaceAll]);
    M.Lines.Text := StringReplace(M.Lines.Text,'-', '¬', [rfReplaceAll]);
    M.Lines.Text := StringReplace(M.Lines.Text,'>', '→', [rfReplaceAll]);
    M.Lines.Text := StringReplace(M.Lines.Text,'<', '↔', [rfReplaceAll]);
    M.Lines.Text := StringReplace(M.Lines.Text,'_', '⊥', [rfReplaceAll]);
    M.Lines.Text := StringReplace(M.Lines.Text,'|', '⊦', [rfReplaceAll]);
    M.Lines.Text := StringReplace(M.Lines.Text,'=', '⊨', [rfReplaceAll]);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    M.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    M.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.MChange(Sender: TObject);
begin

end;

begin
  k := 1;
end.

