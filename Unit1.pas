unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  UDiceGame;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    procedure FormClick(Sender: TObject);
  private
    /// <link>aggregation</link>
    DiceGame: TDiceGame;
  public
  published
    constructor create(AOwner: TComponent); override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

constructor TForm1.create(AOwner: TComponent);
begin
  inherited;
  DiceGame:= TDiceGame.Create;
end;

procedure TForm1.FormClick(Sender: TObject);
begin
  Label1.Caption := DiceGame.play;
end;

end.
