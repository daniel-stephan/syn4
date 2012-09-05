object Form1: TForm1
  Left = 345
  Top = 243
  Width = 1042
  Height = 668
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SidebarDockLeft: TSpTBXMultiDock
    Left = 0
    Top = 46
    Width = 9
    Height = 533
    OnRequestDock = SidebarDockRequestDock
  end
  object SpTBXDock2: TSpTBXDock
    Left = 0
    Top = 0
    Width = 1026
    Height = 46
    object SpTBXToolbar2: TSpTBXToolbar
      Left = 0
      Top = 0
      CloseButton = False
      DockMode = dmCannotFloatOrChangeDocks
      FullSize = True
      ProcessShortCuts = True
      ShrinkMode = tbsmWrap
      SmoothDrag = False
      TabOrder = 0
      Caption = 'SpTBXToolbar2'
      Customizable = False
      MenuBar = True
      object SpTBXSubmenuItem1: TSpTBXSubmenuItem
        Caption = 'Foo'
        object SpTBXSkinGroupItem1: TSpTBXSkinGroupItem
        end
      end
    end
    object SpTBXToolbar3: TSpTBXToolbar
      Left = 0
      Top = 23
      DockPos = 0
      DockRow = 1
      TabOrder = 1
      Caption = 'SpTBXToolbar3'
      object SpTBXItem1: TSpTBXItem
        Caption = 'Add'
        OnClick = SpTBXItem1Click
      end
    end
  end
  object FileTabs: TSpTBXTabSet
    Left = 0
    Top = 579
    Width = 1026
    Height = 28
    Align = alBottom
    ActiveTabIndex = -1
    TabAutofit = True
    TabAutofitMaxSize = -1
    TabBackgroundBorders = True
    TabCloseButton = tcbAll
    TabDragReorder = True
    TabPosition = ttpBottom
    HiddenItems = <>
  end
  object SidebarDockRight: TSpTBXMultiDock
    Left = 726
    Top = 46
    Width = 300
    Height = 533
    Position = dpxRight
    OnRequestDock = SidebarDockRequestDock
    object Sidebar: TSpTBXDockablePanel
      Left = 0
      Top = 0
      Width = 300
      Height = 533
      Caption = 'Sidebar'
      TabOrder = 0
      object SpTBXPanel1: TSpTBXPanel
        Left = 0
        Top = 19
        Width = 296
        Height = 510
        Caption = 'SpTBXPanel1'
        Align = alClient
        TabOrder = 1
        object SidebarTabDockLeft: TSpTBXDock
          Left = 2
          Top = 2
          Width = 9
          Height = 506
          Position = dpLeft
        end
        object SidebarTabDockRight: TSpTBXDock
          Left = 234
          Top = 2
          Width = 60
          Height = 506
          Position = dpRight
          object SideToolbar: TSpTBXToolbar
            Left = 0
            Top = 0
            DockMode = dmCannotFloatOrChangeDocks
            DragHandleStyle = dhNone
            FullSize = True
            Images = Nexus.pilSidebar
            TabOrder = 0
            Caption = 'SideToolbar'
            object btnSidebarLocalFiles: TSpTBXItem
              Caption = 'Lokal'
              AutoCheck = True
              Checked = True
              DisplayMode = nbdmImageAndText
              GroupIndex = 1
              ImageIndex = 0
              Options = [tboImageAboveCaption, tboNoRotation]
              OnClick = SidebarItemClick
            end
            object btnSidebarProject: TSpTBXItem
              Caption = 'Projekt'
              AutoCheck = True
              DisplayMode = nbdmImageAndText
              GroupIndex = 1
              ImageIndex = 1
              Options = [tboImageAboveCaption, tboNoRotation]
              OnClick = SidebarItemClick
            end
            object btnSidebarFTPFiles: TSpTBXItem
              Caption = 'FTP'
              AutoCheck = True
              DisplayMode = nbdmImageAndText
              GroupIndex = 1
              ImageIndex = 2
              Options = [tboImageAboveCaption, tboNoRotation]
              OnClick = SidebarItemClick
            end
            object btnSidebarTemplates: TSpTBXItem
              Caption = 'Snippets'
              AutoCheck = True
              DisplayMode = nbdmImageAndText
              GroupIndex = 1
              ImageIndex = 3
              Options = [tboImageAboveCaption, tboNoRotation]
              OnClick = SidebarItemClick
            end
            object SpTBXItem2: TSpTBXItem
              Caption = 'Recovery'
              AutoCheck = True
              DisplayMode = nbdmImageAndText
              GroupIndex = 1
              ImageIndex = 4
              Options = [tboImageAboveCaption, tboNoRotation]
              OnClick = SidebarItemClick
            end
          end
        end
        object tvMain: TVirtualExplorerTreeview
          Left = 11
          Top = 2
          Width = 223
          Height = 506
          Active = False
          Align = alClient
          BorderStyle = bsNone
          ColumnDetails = cdUser
          DefaultNodeHeight = 17
          DragHeight = 250
          DragWidth = 150
          FileObjects = [foFolders, foNonFolders, foHidden]
          FileSizeFormat = fsfExplorer
          FileSort = fsFileType
          Header.AutoSizeIndex = 0
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          HintMode = hmHint
          ParentColor = False
          RootFolder = rfDesktop
          TabOrder = 2
          TabStop = True
          TreeOptions.AutoOptions = [toAutoScroll]
          TreeOptions.MiscOptions = [toAcceptOLEDrop, toEditable, toToggleOnDblClick]
          TreeOptions.PaintOptions = [toShowBackground, toShowButtons, toShowTreeLines, toThemeAware, toUseBlendedImages, toGhostedIfUnfocused, toStaticBackground, toUseExplorerTheme]
          TreeOptions.SelectionOptions = [toLevelSelectConstraint]
          TreeOptions.VETShellOptions = [toContextMenus]
          TreeOptions.VETSyncOptions = [toCollapseTargetFirst, toExpandTarget, toSelectTarget]
          TreeOptions.VETMiscOptions = [toBrowseExecuteFolderShortcut, toBrowseExecuteZipFolder, toRemoveContextMenuShortCut]
          TreeOptions.VETImageOptions = [toImages, toMarkCutAndCopy]
          OnPaintBackground = tvMainPaintBackground
          OnTreeDblClick = tvMainTreeDblClick
          Columns = <
            item
              Position = 0
              Width = 200
              ColumnDetails = cdFileName
              WideText = 'Name'
            end>
        end
      end
    end
  end
  object SidebarSizer: TSpTBXSplitter
    Left = 721
    Top = 46
    Height = 533
    Cursor = crSizeWE
    Align = alRight
    Visible = False
    ResizeStyle = rsPattern
  end
  object SpTBXPanel2: TSpTBXPanel
    Left = 9
    Top = 46
    Width = 712
    Height = 533
    Caption = 'SpTBXPanel2'
    Align = alClient
    TabOrder = 5
    Borders = False
    TBXStyleBackground = True
  end
  object SpTBXStatusBar1: TSpTBXStatusBar
    Left = 0
    Top = 607
    Width = 1026
    Height = 26
  end
  object Commands: TActionList
    Left = 973
    Top = 8
    object acSearch: TAction
      Tag = 1
      Category = 'Search'
      Caption = 'Suchen'
      Enabled = False
      Hint = 'Suchen'
      ImageIndex = 17
      ShortCut = 16454
    end
    object acCloseAllFiles: TAction
      Category = 'File'
      Caption = 'Alle Dateien schlie'#223'en'
      Enabled = False
      Hint = 'Alle Dateien schlie'#223'en'
      ImageIndex = 8
      ShortCut = 24691
    end
    object acSearchAgain: TAction
      Category = 'Search'
      Caption = 'Weitersuchen'
      ShortCut = 114
    end
    object acToggleSidebarLeftRight: TAction
      Category = 'Global'
      Caption = 'Linke Seite'
      Hint = 'Linke Seite'
      ImageIndex = 3
      ShortCut = 24652
    end
    object acNewEmptyFile: TAction
      Category = 'File'
      Caption = 'Neu'
      Hint = 'Neu'
      ImageIndex = 0
      ShortCut = 16462
    end
    object acLoadFromFile: TAction
      Category = 'File'
      Caption = #214'ffnen'
      Hint = #214'ffnen'
      ImageIndex = 1
      ShortCut = 16463
    end
    object acShowRightEdge: TAction
      Category = 'View'
      AutoCheck = True
      Caption = 'Rechte Begrenzung anzeigen'
      Enabled = False
      Hint = 'Rechte Begrenzung anzeigen'
      ImageIndex = 26
    end
    object acReopenCurrentFile: TAction
      Category = 'File'
      Caption = 'Datei neu laden'
      Enabled = False
      Hint = 'Datei neu laden'
      ImageIndex = 9
    end
    object acShowLineNumbers: TAction
      Category = 'View'
      AutoCheck = True
      Caption = 'Zeilennummern anzeigen'
      Checked = True
      Enabled = False
      Hint = 'Zeilennummern anzeigen'
      ImageIndex = 25
    end
    object acShowCodeFolding: TAction
      Category = 'View'
      AutoCheck = True
      Caption = 'Code-Folding anzeigen'
      Enabled = False
      Hint = 'Code-Folding anzeigen'
      ImageIndex = 27
    end
    object acHighlightBrackets: TAction
      Category = 'View'
      AutoCheck = True
      Caption = 'Aktive Klammer hervorheben'
      Enabled = False
      Hint = 'Aktive Klammer hervorheben'
      ImageIndex = 28
    end
    object acShowWhitespace: TAction
      Category = 'View'
      AutoCheck = True
      Caption = 'Steuerzeichen anzeigen'
      Enabled = False
      Hint = 'Steuerzeichen anzeigen'
      ImageIndex = 30
    end
    object acFullscreenView: TAction
      Category = 'View'
      Caption = 'Vollbildmodus'
      Enabled = False
      Hint = 'Vollbildmodus'
      ImageIndex = 24
      ShortCut = 122
    end
    object acUndo: TAction
      Category = 'Edit'
      Caption = 'R'#252'ckg'#228'ngig'
      Enabled = False
      Hint = 'R'#252'ckg'#228'ngig'
      ImageIndex = 12
      ShortCut = 16474
    end
    object acRedo: TAction
      Category = 'Edit'
      Caption = 'Wiederherstellen'
      Enabled = False
      Hint = 'Wiederherstellen'
      ImageIndex = 13
      ShortCut = 16473
    end
    object acCut: TAction
      Category = 'Edit'
      Caption = 'Ausschneiden'
      Enabled = False
      Hint = 'Ausschneiden'
      ImageIndex = 14
      ShortCut = 16472
    end
    object acCopy: TAction
      Category = 'Edit'
      Caption = 'Kopieren'
      Enabled = False
      Hint = 'Kopieren'
      ImageIndex = 15
      ShortCut = 16451
    end
    object acPaste: TAction
      Category = 'Edit'
      Caption = 'Einf'#252'gen'
      Enabled = False
      Hint = 'Einf'#252'gen'
      ImageIndex = 16
      ShortCut = 16470
      SecondaryShortCuts.Strings = (
        'Umsch+Einfg')
    end
    object acCloseCurrentFile: TAction
      Category = 'File'
      Caption = 'Schlie'#223'en'
      Enabled = False
      Hint = 'Schlie'#223'en'
      ImageIndex = 7
      ShortCut = 16499
    end
    object acPrint: TAction
      Category = 'File'
      Caption = 'Drucken'
      Enabled = False
      Hint = 'Drucken'
      ImageIndex = 11
      ShortCut = 16464
    end
    object acPrintPreview: TAction
      Category = 'File'
      Caption = 'Druckvorschau'
      Enabled = False
      Hint = 'Druckvorschau'
      ImageIndex = 10
      ShortCut = 49232
    end
    object acBlockIncreaseIndent: TAction
      Tag = 1
      Category = 'Edit'
      Caption = 'Einzug vergr'#246#223'ern'
      Hint = 'Einzug vergr'#246#223'ern'
      ImageIndex = 37
      ShortCut = 24649
    end
    object acBlockDecreaseIndent: TAction
      Tag = 2
      Category = 'Edit'
      Caption = 'Einzug verkleinern'
      Hint = 'Einzug verkleinern'
      ImageIndex = 38
      ShortCut = 24661
    end
    object acMDICascade: TAction
      Tag = 1
      Category = 'View'
      Caption = 'Kaskadieren'
      Enabled = False
      Hint = 'Kaskadieren'
      ImageIndex = 20
    end
    object acMDITileHorizontal: TAction
      Tag = 2
      Category = 'View'
      Caption = #220'bereinander'
      Enabled = False
      Hint = #220'bereinander'
      ImageIndex = 21
    end
    object acMDITileVertical: TAction
      Tag = 3
      Category = 'View'
      Caption = 'Nebeneinander'
      Enabled = False
      Hint = 'Nebeneinander'
      ImageIndex = 22
    end
    object acMDIMaximize: TAction
      Tag = 4
      Category = 'View'
      Caption = 'Maximieren'
      Enabled = False
      Hint = 'Maximieren'
      ImageIndex = 23
    end
    object acShowSidebar: TAction
      Category = 'View'
      Caption = 'Sidebar anzeigen'
      Hint = 'Sidebar anzeigen'
      ShortCut = 115
    end
    object acFTPConnectToServer: TAction
      Category = 'FTP'
      Caption = 'Mit dem FTP-Server verbinden'
      Hint = 'Mit dem FTP-Server verbinden'
      ImageIndex = 55
    end
    object acFTPReloadTree: TAction
      Category = 'FTP'
      Caption = 'Aktualisieren'
      Enabled = False
      Hint = 'Aktualisieren'
      ImageIndex = 9
    end
    object acShowQuickSettingsMenu: TAction
      Category = 'Global'
      Caption = 'Schnelleinstellungen'
      Hint = 'Schnelleinstellungen'
      ShortCut = 123
    end
    object acBlockSortLinesAscending: TAction
      Category = 'Edit'
      Caption = 'Zeilen aufsteigend sortieren'
      Hint = 'Zeilen aufsteigend sortieren'
      ImageIndex = 41
      ShortCut = 49343
    end
    object acBlockSortLinesDescending: TAction
      Category = 'Edit'
      Caption = 'Zeilen absteigend sortieren'
      Hint = 'Zeilen absteigend sortieren'
      ImageIndex = 42
      ShortCut = 24691
    end
    object acSetSyntaxHighlight: TAction
      Category = 'View'
      Caption = 'Syntax'
      Hint = 'Syntax-Hervorhebung'
      ImageIndex = 59
    end
    object acBlockAlignmentDelimited: TAction
      Category = 'Edit'
      Caption = 'Geteilte Ausrichtung'
      Hint = 'Geteilte Ausrichtung'
      ImageIndex = 68
      ShortCut = 24660
    end
    object acBlockAlignmentLeft: TAction
      Tag = 1
      Category = 'Edit'
      Caption = 'Linksb'#252'ndig'
      Hint = 'Linksb'#252'ndig'
      ImageIndex = 34
      ShortCut = 24652
    end
    object acBlockAlignmentCenter: TAction
      Tag = 2
      Category = 'Edit'
      Caption = 'Zentriert'
      Hint = 'Zentriert'
      ImageIndex = 35
      ShortCut = 24643
    end
    object acBlockAlignmentRight: TAction
      Tag = 3
      Category = 'Edit'
      Caption = 'Rechtsb'#252'ndig'
      Hint = 'Rechtsb'#252'ndig'
      ImageIndex = 36
      ShortCut = 24658
    end
    object acBlockComment: TAction
      Category = 'Edit'
      Caption = 'Auskommentieren'
      Hint = 'Auskommentieren'
      ImageIndex = 39
      ShortCut = 49342
    end
    object acBlockUncomment: TAction
      Category = 'Edit'
      Caption = 'Auskommentierung entfernen'
      Hint = 'Auskommentierung entfernen'
      ImageIndex = 40
      ShortCut = 49340
    end
    object acShowOptionsWindow: TAction
      Category = 'View'
      Caption = 'Einstellungen'
      Hint = 'Einstellungen'
      ImageIndex = 47
      ShortCut = 24655
    end
    object acSaveToFile: TAction
      Category = 'File'
      Caption = 'Speichern'
      Enabled = False
      Hint = 'Speichern'
      ImageIndex = 3
      ShortCut = 16467
    end
    object acTidySourcecode: TAction
      Category = 'Sourcecode'
      Caption = 'Sourcecode formatieren'
      ImageIndex = 62
      Visible = False
    end
    object acSaveAs: TAction
      Category = 'File'
      Caption = 'Speichern unter ...'
      Enabled = False
      Hint = 'Speichern unter ...'
      ImageIndex = 4
      ShortCut = 24659
    end
    object acTools_EditWorkspaceSettingsIni: TAction
      Category = 'Tools'
      Caption = 'Workspace direkt bearbeiten'
      Hint = 'Workspace direkt bearbeiten'
    end
    object acSearchReplace: TAction
      Tag = 2
      Category = 'Search'
      Caption = 'Ersetzen'
      Enabled = False
      Hint = 'Suchen und Ersetzen'
      ImageIndex = 19
      ShortCut = 16466
    end
    object acSaveAsTemplate: TAction
      Category = 'File'
      Caption = 'Als Vorlage speichern'
      Enabled = False
      ImageIndex = 3
    end
    object acShowAboutWindow: TAction
      Category = 'Help'
      Caption = 'Info ...'
    end
    object acChangeCase_Upper: TAction
      Tag = 1
      Category = 'ChangeCase'
      Caption = 'Gro'#223' schreiben'
      ImageIndex = 45
    end
    object acChangeCase_Lower: TAction
      Tag = 2
      Category = 'ChangeCase'
      Caption = 'Klein schreiben'
      ImageIndex = 44
    end
    object acChangeCase_Toggle: TAction
      Tag = 3
      Category = 'ChangeCase'
      Caption = 'Gro'#223'/Klein vertauschen'
      ImageIndex = 43
    end
    object acShowTabBarTop: TAction
      Tag = 1
      Category = 'View'
      Caption = 'Oben'
      Checked = True
      Hint = 'Dateiregister oberhalb des Editors anzeigen'
    end
    object acShowTabBarBottom: TAction
      Tag = 2
      Category = 'View'
      Caption = 'Unten'
      Hint = 'Dateiregister unterhalb des Editors anzeigen'
    end
    object acLoadReadme: TAction
      Category = 'Help'
      Caption = 'Programmhinweise'
    end
    object acFormatTabsToSpaces: TAction
      Category = 'Format'
      Caption = 'Tabs in Leerzeichen'
      ImageIndex = 31
    end
    object acFormatSpacesToTabs: TAction
      Category = 'Format'
      Caption = 'Leerzeichen in Tabs'
      ImageIndex = 72
    end
    object acFormatLeadingTabsToSpaces: TAction
      Category = 'Format'
      Caption = 'F'#252'hrende Tabs in Leerzeichen'
      ImageIndex = 73
    end
    object acFormatLeadingSpacesToTabs: TAction
      Category = 'Format'
      Caption = 'F'#252'hrende Leerzeichen in Tabs'
      ImageIndex = 74
    end
    object acFormatTrimTrailingSpaces: TAction
      Category = 'Format'
      Caption = 'Abschlie'#223'ende Leerzeichen entfernen'
      ImageIndex = 75
    end
    object acChangeCharset: TAction
      Category = 'Format'
      Caption = 'Zeichensatzkodierung '#228'ndern'
    end
    object acSelectAll: TAction
      Category = 'Edit'
      Caption = 'Alles ausw'#228'hlen'
      Enabled = False
      Hint = 'Alles ausw'#228'hlen'
      ImageIndex = 77
      ShortCut = 16449
    end
    object acCloseApplication: TAction
      Category = 'File'
      Caption = 'Beenden'
      ImageIndex = 51
      ShortCut = 32883
    end
    object acSearch_GoToLine: TAction
      Category = 'Search'
      Caption = 'Gehe zu Zeile'
      Enabled = False
      Hint = 'Gehe zu Zeile'
      ImageIndex = 78
      ShortCut = 32839
    end
    object acCancel: TAction
      Category = 'Global'
      Caption = 'Cancel'
      ShortCut = 27
    end
    object acSeekInFiles: TAction
      Category = 'Tools'
      Caption = 'In Dateien suchen'
      Hint = 'In Dateien suchen'
      ImageIndex = 18
      ShortCut = 24646
    end
    object acSaveAllFiles: TAction
      Category = 'File'
      Caption = 'Alle Dateien speichern'
      Hint = 'Alle Dateien speichern'
      ImageIndex = 5
    end
    object acWorkSpace_CreateNew: TAction
      Category = 'WorkSpace'
      Caption = 'Neuer Arbeitsbereich'
      ImageIndex = 83
    end
    object acToggleTextHex: TAction
      Category = 'View'
      Caption = 'Text-/Hex-Ansicht umschalten'
      Hint = 'Text-/Hex-Ansicht umschalten'
      ImageIndex = 84
    end
    object acExportAssistent: TAction
      Category = 'File'
      Caption = 'Export-Assistent'
    end
  end
end
