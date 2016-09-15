unit MainFrm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, StdCtrls;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    btnAudio: TButton;
    pcMain: TPageControl;
    panMain: TPanel;
    tsDiag: TTabSheet;
    tsVideo: TTabSheet;
    tsNav: TTabSheet;
    tsAudio: TTabSheet;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

end.

