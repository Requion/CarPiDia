unit MainFrm;

{$mode objfpc}{$H+}

interface

uses
  Classes, sysutils, Forms, Controls, ComCtrls,
  ExtCtrls, StdCtrls, ActnList, Buttons, audioplayer;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    actAudio: TAction;
    actVideo: TAction;
    actMetrics: TAction;
    actNav: TAction;
    alMain: TActionList;
    btnAudio: TButton;
    btnVideo: TButton;
    btnNav: TButton;
    btnMetrics: TButton;
    ilMain: TImageList;
    Label1: TLabel;
    ListView1: TListView;
    pcMain: TPageControl;
    panMain: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    tsMetrics: TTabSheet;
    tsVideo: TTabSheet;
    tsNav: TTabSheet;
    tsAudio: TTabSheet;
    procedure actAudioExecute(Sender: TObject);
    procedure actMetricsExecute(Sender: TObject);
    procedure actNavUpdate(Sender: TObject);
    procedure actVideoUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMain: TfrmMain;
  AudioPlr: TAudioPlayer;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.actAudioExecute(Sender: TObject);
begin
  pcMain.ActivePage := tsAudio;
end;

procedure TfrmMain.actMetricsExecute(Sender: TObject);
begin
  pcmain.ActivePage := tsMetrics;
end;

procedure TfrmMain.actNavUpdate(Sender: TObject);
begin
  actNav.Visible := False;
end;

procedure TfrmMain.actVideoUpdate(Sender: TObject);
begin
  actVideo.Visible := False;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  //if not Assigned(AudioPlr) then
  //AudioPlr := TAudioPlayer.Create(self);
end;

procedure TfrmMain.SpeedButton3Click(Sender: TObject);
begin
  Label1.Caption := IntToStr(StrToInt(Label1.Caption) + 1);
end;

end.

