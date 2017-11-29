unit UDiceGame;

interface

uses
  System.SysUtils, UDice;

type
  TDiceGame = class
  private
    /// <link>aggregation</link>
    Dice1, Dice2: TDice;
  public
    function play: string;
    procedure initialize(numOfPlayer: integer);
  end;

implementation

{ TDiceGame }

procedure TDiceGame.initialize(numOfPlayer: integer);
begin
  { TODO : todo }
end;

function TDiceGame.play: string;
begin
  if not Assigned(Dice1) then
    Dice1 := TDice.Create;
  Dice1.roll;
  if not Assigned(Dice2) then
    Dice2 := TDice.Create;
  Dice2.roll;
  result := inttostr(Dice1.getFaceValue + Dice2.getFaceValue);
end;

end.
