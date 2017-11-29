unit UDiceGame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Generics.Collections,
  UDice, UPlayer, UWin;

type
  TDiceGame = class
  private
    /// <link>aggregation</link>
    Dice1, Dice2: TDice;
    Player: TList<TPlayer>;
    /// <link>aggregation</link>
    Win: TWin;
  public
    function play: string;
    procedure initialize(numOfPlayer: integer);
    function WhoseTurn: string;
  end;

implementation

{ TDiceGame }

procedure TDiceGame.initialize(numOfPlayer: integer);
var
  i: integer;
begin
  Player := TList<TPlayer>.Create;
  for i := 0 to numOfPlayer - 1 do
    if i > 0 then
      Player.Add(TPlayer.Create(false))
    else
      Player.Add(TPlayer.Create(true));
end;

function TDiceGame.play: string;
begin
  if not assigned(Win) then
  begin
    if not assigned(Dice1) then
      Dice1 := TDice.Create;
    Dice1.roll;
    if not assigned(Dice2) then
      Dice2 := TDice.Create;
    Dice2.roll;

  if ((Dice1.getFaceValue + Dice2.getFaceValue) = 7) then
  begin
    result := 'You Win !';
    Win := TWin.Create;
  end
  else
    result := inttostr(Dice1.getFaceValue + Dice2.getFaceValue);
  end else result := 'You Win !';
end;

function TDiceGame.WhoseTurn: string;
var
  i, g: integer;
begin
  if not assigned(Win) then
  begin
  for i := 0 to Player.Count - 1 do
    with Player do
    begin
      if Items[i].WhoGO then
      begin
        g := i + 1;
        Items[i].WhoGO := false;
      end;
    end;
  if (g = Player.Count) then
    g := 0;
  Player.Items[g].WhoGO := true;
  result := 'Player ' + inttostr(g + 1);
  end else result := 'You Win !';
end;

end.
