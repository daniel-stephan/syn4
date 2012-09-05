program Syn4;

uses
  Forms,
  MainWnd in 'Source\MainWnd.pas' {Form1},
  NexusDM in 'Source\NexusDM.pas' {Nexus: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TNexus, Nexus);
  Application.Run;
end.
