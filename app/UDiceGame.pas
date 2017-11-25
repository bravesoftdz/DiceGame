unit UDiceGame;

interface

uses
  UDice;

type
  TDiceGame = class
  private
    /// <link>aggregation</link>
    Dice1, Dice2: TDice;
  public
    procedure play();
  end;

implementation

{ TDiceGame }

procedure TDiceGame.play;
begin
//
end;

end.
