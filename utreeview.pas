unit UTreeview;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    TreeView1: TTreeView;
    procedure FormCreate(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  Node: TTreeNode;
begin
  TreeView1.Items.Clear;
  TreeView1.Images := ImageList1;

  node:=TreeView1.Items.Add(nil, 'Main Menu');
  Node.ImageIndex := 3;
  Node.SelectedIndex := 1;

  {TreeView1.Items.AddChild(TreeView1.Items[0], 'Setting');

  TreeView1.Items.AddChild(TreeView1.Items[1], 'Node 1.1');

  TreeView1.Items.AddChild(TreeView1.Items[2], 'Node 1.1.1');

  TreeView1.Items.AddChild(TreeView1.Items[3], 'Node 1.1.1.1');

  TreeView1.Items.AddChild(TreeView1.Items[4], 'Node 1.1.1.1.1');

  TreeView1.Items.AddChild(TreeView1.Items[1], 'Node 1.2');

  TreeView1.Items.AddChild(TreeView1.Items[0], 'Node 2');

  TreeView1.Items.AddChild(TreeView1.Items[7], 'Node 2.1');

  TreeView1.Items.AddChild(TreeView1.Items[8], 'Node 2.1.1');

  TreeView1.Items.AddChild(TreeView1.Items[9], 'Node 2.1.1.1');

  TreeView1.Items.AddChild(TreeView1.Items[10], 'Node 2.1.1.1.1');

  TreeView1.Items.AddChild(TreeView1.Items[8], 'Node 2.1.2');

  TreeView1.Items.AddChild(TreeView1.Items[7], 'Node 2.2');

  TreeView1.Items.AddChild(TreeView1.Items[0], 'Node 3');

  TreeView1.Items.AddChild(TreeView1.Items[13], 'Node 3.1');

  TreeView1.Items.AddChild(TreeView1.Items[14], 'Node 3.1.1');

  TreeView1.Items.AddChild(TreeView1.Items[15], 'Node 3.1.1.1');

  TreeView1.Items.AddChild(TreeView1.Items[16], 'Node 3.1.1.1.1');

  TreeView1.Items.AddChild(TreeView1.Items[14], 'Node 3.1.2');

  TreeView1.Items.AddChild(TreeView1.Items[13], 'Node 3.2');
  }
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
   ShowMessage(TreeView1.Selected.Text);
end;

procedure TForm1.TreeView1Click(Sender: TObject);
begin
       ShowMessage(TreeView1.Selected.Text);
end;

end.

