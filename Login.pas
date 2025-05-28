unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    BtnLogin: TButton;
    InputUser: TEdit;
    LabelEmail: TLabel;
    InputPassword: TEdit;
    LabelPassoword: TLabel;
    CheckBoxPassword: TCheckBox;
    conLogin: TFDConnection;
    qryAuth: TFDQuery;
    dsAuth: TDataSource;
    Label1: TLabel;
    procedure InputPasswordChange(Sender: TObject);
    procedure CheckBoxPasswordClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnLoginClick(Sender: TObject);
begin
  qryAuth.SQL.Text := 'SELECT * FROM users WHERE email = :e AND password = :p';
  qryAuth.ParamByName('e').AsString := InputUser.Text;
  qryAuth.ParamByName('p').AsString := InputPassword.Text;
  qryAuth.Open;
  if not qryAuth.IsEmpty then
    begin

    end;

end;

procedure TForm1.CheckBoxPasswordClick(Sender: TObject);
begin
  if CheckBoxPassword.Checked  then
  begin
    InputPassword.PasswordChar := #0;
  end;
end;

procedure TForm1.InputPasswordChange(Sender: TObject);
begin
  InputPassword.PasswordChar := '*';
end;

end.
