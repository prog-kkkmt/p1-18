unit MainWinUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, OpenGLContext, gl,
  glu, Math, LCLType, LCLIntf, StdCtrls, ExtCtrls, Buttons,
  PGLCamera;

type

	{ TForm1 }

  TForm1 = class(TForm)
		ButtonWalkUpward: TSpeedButton;
		ButtonWalkDownward: TSpeedButton;
		ButtonWalkForward: TSpeedButton;
		ButtonWalkLeft: TSpeedButton;
		ButtonLookLeft: TSpeedButton;
		ButtonWalkRight: TSpeedButton;
		ButtonWalkBackward: TSpeedButton;
		ButtonLookUp: TSpeedButton;
		ButtonLookRight: TSpeedButton;
		ButtonLookDown: TSpeedButton;
		GLBox: TOpenGLControl;
		Label1: TLabel;
		Label2: TLabel;
		LabelRotateInfo: TLabel;
		LabelPosInfo: TLabel;
		Memo1: TMemo;
		Panel1: TPanel;
		procedure ButtonLookDownClick(Sender: TObject);
  procedure ButtonLookLeftClick(Sender: TObject);
		procedure ButtonLookRightClick(Sender: TObject);
		procedure ButtonLookUpClick(Sender: TObject);
  procedure ButtonWalkBackwardClick(Sender: TObject);
	procedure ButtonWalkDownwardClick(Sender: TObject);
  procedure ButtonWalkLeftClick(Sender: TObject);
  procedure ButtonWalkForwardClick(Sender: TObject);
	procedure ButtonWalkRightClick(Sender: TObject);
	procedure ButtonWalkUpwardClick(Sender: TObject);
  procedure FormCreate(Sender: TObject);
	procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
	procedure FormResize(Sender: TObject);
  procedure GLBoxPaint(Sender: TObject);
	procedure GLBoxResize(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

const
  SPEED = 0.5;

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  GLbox := TOpenGLControl.Create(Self);
  GLbox.AutoResizeViewport := true;
  GLBox.Parent             := Self;
  GLBox.MultiSampling      := 1;
  GLBox.Align              := alClient;
  GLBox.OnPaint            := @GLboxPaint; // для "mode delphi" должно быть "GLBox.OnPaint := GLboxPaint"
  GLBox.invalidate;
  Form1.KeyPreview:= true;
  Form1.ActiveControl := Nil;
end;

procedure TForm1.GLBoxPaint(Sender: TObject);
var
  rotX, rotY, rotZ: Real;
  moveX, moveY, moveZ: Real;
begin

  //sf::Vector2i localPosition = sf::Mouse::getPosition(*this->window);
  ////printf("%d %d\n", (this->window->getSize().x / 2), (this->window->getSize().y / 2));
  //float deltaX = localPosition.x - 300;
  //float deltaY = localPosition.y - 300;
  //float sensitivity = 0.05f;
  //if (this->mouseLock == true)
  //{
  //    this->camera.rotate(deltaY, deltaX);
  //    sf::Mouse::setPosition(sf::Vector2i(300, 300), *this->window);
  //}

  // clear the buffers
  glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);

  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  gluPerspective(45.0, GLBox.Width / GLBox.Height, 0.1, 100.0);
  //gluPerspective(45.0f, (float)600 / (float)600, 0.1f, 100.0f);

  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity();

  rotX := cos(DegToRad(Camera.pitch)) * cos(DegToRad(Camera.yaw));
  rotY := sin(DegToRad(Camera.pitch));
  rotZ := cos(DegToRad(Camera.pitch)) * sin(DegToRad(Camera.yaw));

  gluLookAt(Camera.x,
	          Camera.y,
	          Camera.z,
	          Camera.x+rotX,
	          Camera.y+rotY,
	          Camera.z-rotZ,
	          0,1,0);

  glPushMatrix();
  glTranslatef(1.0, 0.0, 1.0);
  glPointSize(10);
  glBegin(GL_POINTS);
    glColor3f(1.0, 0.0, 0.0);
    glVertex3f(9.0, 0.0, 0.0);
    glColor3f(0.0, 1.0, 0.0);
    glVertex3f(0.0, 1.0, 0.0);
    glColor3f(0.0, 0.0, 1.0);
    glVertex3f(0.0, 0.0, 9.0);
  glEnd();
  glPopMatrix();

  glPushMatrix();
  glBegin(GL_LINES);
      glColor3f(0.7, 0.5, 0.7);
      glVertex3f(-10.0, 0.0, -10.0);
      glVertex3f(10.0, 0.0, -10.0);

      glVertex3f(10.0, 0.0, -10.0);
      glVertex3f(10.0, 0.0, 10.0);

      glVertex3f(10.0, 0.0, 10.0);
      glVertex3f(-10.0, 0.0, 10.0);

      glVertex3f(-10.0, 0.0, 10.0);
      glVertex3f(-10.0, 0.0, -10.0);
  glEnd();
  glTranslatef(1.0, 0.0, 1.0);
  glBegin(GL_LINES);
      glColor3f(1.0, 0.0, 0.0);
      glVertex3f(-9.0, 0.0, 0.0);
      glVertex3f(9.0, 0.0, 0.0);

      glColor3f(0.0, 1.0, 0.0);
      glVertex3f(0.0, -1.0, 0.0);
      glVertex3f(0.0, 1.0, 0.0);

      glColor3f(0.0, 0.0, 1.0);
      glVertex3f(0.0, 0.0, -9.0);
      glVertex3f(0.0, 0.0, 9.0);
  glEnd();
  glBegin(GL_LINES);
      glColor3f(0.7, 0.5, 0.7);
      glVertex3f(-9.0, 0.0, -9.0);
      glVertex3f(9.0, 0.0, -9.0);

      glVertex3f(9.0, 0.0, -9.0);
      glVertex3f(9.0, 0.0, 9.0);

      glVertex3f(9.0, 0.0, 9.0);
      glVertex3f(-9.0, 0.0, 9.0);

      glVertex3f(-9.0, 0.0, 9.0);
      glVertex3f(-9.0, 0.0, -9.0);
  glEnd();
  glPopMatrix();

  GLbox.SwapBuffers;
end;

procedure TForm1.GLBoxResize(Sender: TObject);
begin
  if Height = 0 then
    Height := 1;

  glViewport(0, 0, GLBox.Width, GLBox.Height);
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity;
  gluPerspective(45, GLBox.Width / GLBox.Height, 0.1, 1000);

  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
	);
var
  moveX, moveY, moveZ: Real;
begin
  moveX := cos(DegToRad(Camera.yaw));
  moveZ := sin(DegToRad(Camera.yaw));

  //Memo1.Lines.Add(IntToStr(key));

  if Key = VK_W then
    Camera.translate(moveX*SPEED, 0, -moveZ*SPEED);
  if Key = VK_S then
    Camera.translate(-moveX*SPEED, 0, moveZ*SPEED);
  if Key = VK_A then
    Camera.translate(-moveZ*SPEED, 0, -moveX*SPEED);
  if Key = VK_D then
    Camera.translate(moveZ*SPEED, 0, moveX*SPEED);
  if Key = VK_SPACE then
    Camera.translate(0, 0.075, 0);
  if Key = VK_SHIFT then
    Camera.translate(0, -0.075, 0);
  if Key = VK_UP then
    Camera.rotate(+2, 0, 0);
  if Key = VK_DOWN then
    Camera.rotate(-2, 0, 0);
  if Key = VK_LEFT then
    Camera.rotate(0, +2, 0);
  if Key = VK_RIGHT then
    Camera.rotate(0, -2, 0);
  GLBox.Invalidate;

  LabelPosInfo.Caption := Format('%f %f %f', [Camera.x, Camera.y, Camera.z]);
  LabelRotateInfo.Caption := Format('%f %f %f', [Camera.pitch, Camera.yaw, Camera.roll]);
end;

procedure TForm1.ButtonWalkForwardClick(Sender: TObject);
begin
  Camera.translate(+1, 0, 0);
  GLbox.Invalidate;
end;

procedure TForm1.ButtonWalkRightClick(Sender: TObject);
begin
  Camera.translate(0, 0, +1);
  GLbox.Invalidate;
end;

procedure TForm1.ButtonWalkUpwardClick(Sender: TObject);
begin
  Camera.translate(0, +1, 0);
  GLbox.Invalidate;
end;

procedure TForm1.ButtonWalkLeftClick(Sender: TObject);
begin
  Camera.translate(0, 0, -1);
  GLbox.Invalidate;
end;

procedure TForm1.ButtonWalkBackwardClick(Sender: TObject);
begin
  Camera.translate(-1, 0, 0);
  GLbox.Invalidate;
end;

procedure TForm1.ButtonWalkDownwardClick(Sender: TObject);
begin
  Camera.translate(0, -1, 0);
  GLbox.Invalidate;
end;

procedure TForm1.ButtonLookLeftClick(Sender: TObject);
begin
  Camera.rotate(0, +1, 0);
  GLbox.Invalidate;
end;

procedure TForm1.ButtonLookDownClick(Sender: TObject);
begin
  Camera.rotate(-1, 0, 0);
  GLbox.Invalidate;
end;

procedure TForm1.ButtonLookRightClick(Sender: TObject);
begin
  Camera.rotate(0, -1, 0);
  GLbox.Invalidate;
end;

procedure TForm1.ButtonLookUpClick(Sender: TObject);
begin
  Camera.rotate(+1, 0, 0);
  GLbox.Invalidate;
end;

procedure TForm1.FormResize(Sender: TObject);
begin

end;

end.

