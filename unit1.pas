unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, mysql55conn, sqldb, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, StdCtrls, ExtCtrls, ActnList, Menus, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MySQL55Connection1: TMySQL55Connection;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioGroup1: TRadioGroup;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text='' then MessageDlg('Ошибка','Ошибка: поле пустое',mtError,[mbOK],0) else
  begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from temi WHERE tema LIKE "'+ Edit1.Text + '%";');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
  begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select idFrazi, fraza from frazi;');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
  end;
    if RadioButton2.Checked = true then
  begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from avtor;');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
  end;
    if RadioButton3.Checked = true then
  begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from istochnik;');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
  end;
    if RadioButton4.Checked = true then
  begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from temi;');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
  end;

  if RadioButton5.Checked = true then
  begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from frazi INNER JOIN avtor ON frazi.idAvtor = avtor.idAvtor;');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
  end;
  if RadioButton6.Checked = true then
  begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from frazi INNER JOIN temi ON frazi.idTemi = Temi.idTemi;');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
  end;
  if RadioButton7.Checked = true then
  begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from frazi INNER JOIN istochnik ON frazi.idIstoch = istochnik.idIstoch;');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if Edit2.Text='' then MessageDlg('Ошибка','Ошибка: поле пустое',mtError,[mbOK],0) else
  begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from avtor WHERE FIO LIKE "'+ Edit2.Text + '%";');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if Edit3.Text='' then MessageDlg('Ошибка','Ошибка: поле пустое',mtError,[mbOK],0) else
  begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from frazi WHERE fraza LIKE "'+ Edit3.Text + '%";');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     Form1.BorderIcons:=[biSystemMenu,biMinimize];
     Form1.BorderStyle:=bsSingle;
end;
end.

