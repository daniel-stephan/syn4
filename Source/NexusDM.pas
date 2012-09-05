unit NexusDM;

interface

uses
  SysUtils, Classes, ImgList, Controls, PngImageList;

type
  TNexus = class(TDataModule)
    pilSidebar: TPngImageList;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Nexus: TNexus;

implementation

{$R *.dfm}

end.
