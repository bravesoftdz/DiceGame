program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1} ,
  UDiceGame in 'app\UDiceGame.pas',
  UPlayer in 'app\UPlayer.pas',
  UDice in 'app\UDice.pas',
  UWin in 'app\UWin.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
