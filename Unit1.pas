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
    Edit1: TEdit;
    Label2: TLabel;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Label1Click(Sender: TObject);
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
  DiceGame := TDiceGame.create;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Edit1.Hide;
    DiceGame.initialize(strtoint(Edit1.Text));
    Label2.Caption := Label2.Caption + ' ' + Edit1.Text;
  end;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  Label1.Caption := DiceGame.play;
  Refresh;
  sleep(1000);
  Label1.Caption := DiceGame.WhoseTurn;
end;

end.
