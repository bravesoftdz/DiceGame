unit UDice;

interface

type
  TDice = class
  private
    faceValue: Integer;
  public
    function getFaceValue: Integer;
    procedure roll();
  end;

implementation

{ TDice }

function TDice.getFaceValue: Integer;
begin
  result := faceValue;
end;

procedure TDice.roll;
begin
  faceValue := 1 + Random(5);
end;

end.
