unit unt_main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects,
  FMX.Platform;

type
  Tfrm_app = class(TForm)
    Image1: TImage;
    Rectangle1: TRectangle;
    Image2: TImage;
    Layout1: TLayout;
    Layout2: TLayout;
    Button1: TButton;
    Layout3: TLayout;
    Button2: TButton;
    ShadowEffect1: TShadowEffect;
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_app: Tfrm_app;

implementation

{$R *.fmx}

procedure Tfrm_app.FormResize(Sender: TObject);
var
  ScreenService: IFMXScreenService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXScreenService,
    IInterface(ScreenService)) then
  begin
    if ScreenService.GetScreenOrientation in [TScreenOrientation.soPortrait,
      TScreenOrientation.soInvertedPortrait] then
      //ShowMessage('Portrait Orientation')
      Image1.WrapMode := TImageWrapMode.Fit
    else
    Begin
      Image1.WrapMode := TImageWrapMode.Center;
      //ShowMessage('Landscape Orientation');
    End;
  end;
end;

end.
