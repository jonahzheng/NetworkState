unit NetworkState.Windows;

interface

uses
  NetworkState, WinInet, AnonThread, System.SysUtils;

type
  TPlatformNetworkState = class(TCustomNetworkState)
  public
    function CurrentSSID: string; override;
    function IsConnected: Boolean; override;
    function IsWifiConnected: Boolean; override;
    function IsMobileConnected: Boolean; override;
  end;

implementation

uses
  SCNetworkReachability, CaptiveNetwork;

//type
  //SCNetworkReachabilityFlags = UInt32;

  //TReachability = class;

  //end;

{ TPlatformNetworkState }

function TPlatformNetworkState.CurrentSSID: string;
begin

end;

function TPlatformNetworkState.IsConnected: Boolean;
begin
  if not InternetCheckConnection('http://www.bidu.com/', 1, 0) then
  begin
    if not InternetCheckConnection('http://www.360.com/', 1, 0) then
    begin
      Result := False;
    end
    else
      Result := True;
  end
  else Result := True;

//  TAnonymousThread<string>.Create(
//    function: string
//    var
//      strReturn: string;
//    begin
//      strReturn := '1';
//      if not InternetCheckConnection('http://www.bidu.com/', 1, 0) then
//      begin
//        if not InternetCheckConnection('http://www.360.com/', 1, 0) then
//        begin
//          strReturn := '0';
//        end;
//      end;
//      Result := strReturn;
//    end,
//    procedure(AResult: string)
//    begin
//      if AResult = '0' then
//      begin
//        Result := False;
//      end
//      else begin
//        Result := True;
//      end;
//    end,
//    procedure(AException: Exception)
//    begin
//      Result := False;
//    end,
//    False);

end;

function TPlatformNetworkState.IsMobileConnected: Boolean;
begin
  Result := False;
end;

function TPlatformNetworkState.IsWifiConnected: Boolean;
begin
  Result := False;
end;

initialization
{$IFDEF CPUARM}
  if False then
    FakeLoader;
{$ENDIF}

end.
