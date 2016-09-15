program CarPiDia;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, MainFrm, audioplayer, videoplayer, diag
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='CarPiDia';
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

