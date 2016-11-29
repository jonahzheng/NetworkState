unit NetworkState.Macos;

interface
{$IFDEF MACOS}
uses
  NetworkState;

type
  TPlatformNetworkState = class(TCustomNetworkState)
  public
    function IsConnected: Boolean; override;
    function IsWifiConnected: Boolean; override;
    function IsMobileConnected: Boolean; override;
  end;
{$ENDIF}
implementation

//type
  //SCNetworkReachabilityFlags = UInt32;

  //TReachability = class;

  //end;
{$IFDEF MACOS}
{ TPlatformNetworkState }

function TPlatformNetworkState.IsConnected: Boolean;
begin
  Result := True;
end;

function TPlatformNetworkState.IsMobileConnected: Boolean;
begin
  Result := False;
end;

function TPlatformNetworkState.IsWifiConnected: Boolean;
begin
  Result := False;
end;
{$ENDIF}

end.
