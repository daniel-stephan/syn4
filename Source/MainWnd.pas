unit MainWnd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TB2Dock, SpTBXItem, SpTBXDkPanels, TB2Toolbar, TB2Item,
  SpTBXTabs, SpTBXSkins, Menus, SynEdit, ComCtrls, SpTBXControls, ActnList,
  NexusDM, VirtualTrees, VirtualExplorerTree, ToolWin, VirtualShellToolBar;

type
  TEditorFile = record
    Syn: TSynEdit;
    Tab: TSpTBXTabItem;
  end;
  PEditorFile = ^TEditorFile;
  TForm1 = class(TForm)
    SidebarDockLeft: TSpTBXMultiDock;
    SpTBXDock2: TSpTBXDock;
    SpTBXToolbar2: TSpTBXToolbar;
    SpTBXToolbar3: TSpTBXToolbar;
    FileTabs: TSpTBXTabSet;
    SpTBXItem1: TSpTBXItem;
    Commands: TActionList;
    acSearch: TAction;
    acCloseAllFiles: TAction;
    acSearchAgain: TAction;
    acToggleSidebarLeftRight: TAction;
    acNewEmptyFile: TAction;
    acLoadFromFile: TAction;
    acShowRightEdge: TAction;
    acReopenCurrentFile: TAction;
    acShowLineNumbers: TAction;
    acShowCodeFolding: TAction;
    acHighlightBrackets: TAction;
    acShowWhitespace: TAction;
    acFullscreenView: TAction;
    acUndo: TAction;
    acRedo: TAction;
    acCut: TAction;
    acCopy: TAction;
    acPaste: TAction;
    acCloseCurrentFile: TAction;
    acPrint: TAction;
    acPrintPreview: TAction;
    acBlockIncreaseIndent: TAction;
    acBlockDecreaseIndent: TAction;
    acMDICascade: TAction;
    acMDITileHorizontal: TAction;
    acMDITileVertical: TAction;
    acMDIMaximize: TAction;
    acShowSidebar: TAction;
    acFTPConnectToServer: TAction;
    acFTPReloadTree: TAction;
    acShowQuickSettingsMenu: TAction;
    acBlockSortLinesAscending: TAction;
    acBlockSortLinesDescending: TAction;
    acSetSyntaxHighlight: TAction;
    acBlockAlignmentDelimited: TAction;
    acBlockAlignmentLeft: TAction;
    acBlockAlignmentCenter: TAction;
    acBlockAlignmentRight: TAction;
    acBlockComment: TAction;
    acBlockUncomment: TAction;
    acShowOptionsWindow: TAction;
    acSaveToFile: TAction;
    acTidySourcecode: TAction;
    acSaveAs: TAction;
    acTools_EditWorkspaceSettingsIni: TAction;
    acSearchReplace: TAction;
    acSaveAsTemplate: TAction;
    acShowAboutWindow: TAction;
    acChangeCase_Upper: TAction;
    acChangeCase_Lower: TAction;
    acChangeCase_Toggle: TAction;
    acShowTabBarTop: TAction;
    acShowTabBarBottom: TAction;
    acLoadReadme: TAction;
    acFormatTabsToSpaces: TAction;
    acFormatSpacesToTabs: TAction;
    acFormatLeadingTabsToSpaces: TAction;
    acFormatLeadingSpacesToTabs: TAction;
    acFormatTrimTrailingSpaces: TAction;
    acChangeCharset: TAction;
    acSelectAll: TAction;
    acCloseApplication: TAction;
    acSearch_GoToLine: TAction;
    acCancel: TAction;
    acSeekInFiles: TAction;
    acSaveAllFiles: TAction;
    acWorkSpace_CreateNew: TAction;
    acToggleTextHex: TAction;
    acExportAssistent: TAction;
    SidebarDockRight: TSpTBXMultiDock;
    SidebarSizer: TSpTBXSplitter;
    Sidebar: TSpTBXDockablePanel;
    SpTBXPanel1: TSpTBXPanel;
    SidebarTabDockLeft: TSpTBXDock;
    SidebarTabDockRight: TSpTBXDock;
    SideToolbar: TSpTBXToolbar;
    btnSidebarLocalFiles: TSpTBXItem;
    btnSidebarProject: TSpTBXItem;
    btnSidebarFTPFiles: TSpTBXItem;
    btnSidebarTemplates: TSpTBXItem;
    SpTBXItem2: TSpTBXItem;
    SpTBXPanel2: TSpTBXPanel;
    SpTBXStatusBar1: TSpTBXStatusBar;
    SpTBXSkinGroupItem1: TSpTBXSkinGroupItem;
    tvMain: TVirtualExplorerTreeview;
    SpTBXSubmenuItem1: TSpTBXSubmenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SpTBXItem1Click(Sender: TObject);
    procedure TabSelect(Sender: TObject);
    procedure SidebarDockRequestDock(Sender: TObject;
      Bar: TTBCustomDockableWindow; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure SidebarItemClick(Sender: TObject);
    procedure tvMainPaintBackground(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; R: TRect; var Handled: Boolean);
    procedure tvMainTreeDblClick(Sender: TCustomVirtualExplorerTree;
      Node: PVirtualNode; Button: TMouseButton; Point: TPoint);
  private
    { Private-Deklarationen }
    FFiles: TList;
    procedure LoadFromFile(const AFilename: String);
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  MPCommonObjects, MPShellUtilities;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SkinManager.SetSkin('Office 2007 Blue');
  FFiles:= TList.Create;
  SidebarSizer.Visible:= TRUE;
  FileTabs.Images:= SmallSysImages;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  tvMain.Active:= TRUE;
end;

procedure TForm1.LoadFromFile(const AFilename: String);
var
  F: PEditorFile;
  I: Integer;
begin
  New(F);
  with F^ do begin
    Syn:= TSynEdit.Create(Form1);
    with Syn do begin
      Align:= alClient;
      BorderStyle:= bsNone;
      BevelInner:= bvNone;
      BevelOuter:= bvLowered;
      BevelKind:= bkFlat;
      Parent:= Form1;
      if FileExists(AFilename) then Lines.LoadFromFile(AFilename);
    end;
    I:= FFiles.Add(F);
    Tab:= FileTabs.Add(ExtractFileName(AFilename));
    with Tab do begin
      Tag:= I;
      OnClick:= TabSelect;
    end;
//    FileTabs.ActiveTabIndex:= FileTabs.cou
  end;
end;

procedure TForm1.SpTBXItem1Click(Sender: TObject);
begin
  //LoadFromFile('Test');
  tvMain.Active:= TRUE;
end;

procedure TForm1.TabSelect(Sender: TObject);
var
  F: PEditorFile;
begin
  F:= FFiles[TComponent(Sender).Tag];
  with F^ do begin
    Syn.BringToFront;
  end;
end;

procedure TForm1.SidebarDockRequestDock(Sender: TObject;
  Bar: TTBCustomDockableWindow; var Accept: Boolean);
begin
  if TSpTBXMultiDock(Sender) = SidebarDockLeft then begin
    SideToolbar.CurrentDock:= SidebarTabDockLeft;
    SidebarSizer.Align:= alLeft;
  end else begin
    SideToolbar.CurrentDock:= SidebarTabDockRight;
    SidebarSizer.Align:= alRight;
  end;
  Accept:= TRUE;
end;

procedure TForm1.SidebarItemClick(Sender: TObject);
begin
  if not TSpTBXItem(Sender).Checked then begin
    tvMain.Visible:= FALSE;
    SidebarSizer.Visible:= FALSE;
    Sidebar.Width:= SideToolbar.Width + 5;
  end else begin
    tvMain.Visible:= TRUE;
    SidebarSizer.Visible:= TRUE;
    Sidebar.Width:= 300;
  end;
end;

procedure TForm1.tvMainPaintBackground(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; R: TRect; var Handled: Boolean);
begin
  SpFillGlassRect(TargetCanvas, R);
end;

procedure TForm1.tvMainTreeDblClick(Sender: TCustomVirtualExplorerTree;
  Node: PVirtualNode; Button: TMouseButton; Point: TPoint);
var
  NS: TNamespace;
  T: TSpTBXTabItem;
begin
  if not Assigned(Node) then Exit;
  NS:= NIL;
  TVirtualExplorerTreeview(Sender).ValidateNamespace(Node, NS);
  if not Assigned(NS) then Exit;
  T:= TSpTBXTabItem.Create(FileTabs.Items);
  with T do begin
    Caption:= NS.FileName;
    ImageIndex:= NS.GetIconIndex(FALSE, icSmall);
  end;
  FileTabs.Items.Add(T);
  LoadFromFile(NS.NameForParsing);
end;

end.
