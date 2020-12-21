unit PGLCamera;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TCamera = class
  public
    x, y, z: Real;
    pitch, yaw, roll: Real;
    procedure move(ax, ay, az: Real);
    procedure translate(ax, ay, az: Real);
    procedure rotate(apitch, ayaw, aroll: Real);
	end;

var
  Camera: TCamera;

implementation

procedure TCamera.move(ax, ay, az: Real);
begin
  Self.x := ax;
  Self.y := ay;
  Self.z := az;
end;

procedure TCamera.translate(ax, ay, az: Real);
begin
  Self.x += ax;
  Self.y += ay;
  Self.z += az;
end;

procedure TCamera.rotate(apitch, ayaw, aroll: Real);
begin
  Self.pitch += apitch;
  Self.yaw += ayaw;
  Self.roll += aroll;

  if pitch > 89.0 then
      pitch := 89.0;
  if pitch < -89.0 then
      pitch := -89.0;

  if yaw > 359.0 then
      yaw := yaw - 360.0;
  if yaw < 0.0 then
      yaw := 360.0 + yaw;
end;

initialization
begin
  Camera := TCamera.Create;
end;

end.

