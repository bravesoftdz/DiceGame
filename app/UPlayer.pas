unit UPlayer;

interface

type
  TPlayer = class
  private
    go: boolean;
    function GetGo: boolean;
    procedure SetGo(boolean: boolean);
  public
    property WhoGO: boolean read GetGo write SetGo;
  published
    constructor create(boolean: boolean);
  end;

implementation

{ TPlayer }

constructor TPlayer.create(boolean: boolean);
begin
  SetGo(boolean);
end;

function TPlayer.GetGo: boolean;
begin
  result := go;
end;

procedure TPlayer.SetGo(boolean: boolean);
begin
  go := boolean;
end;

end.
