unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, maskedit;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

uses unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.RadioButton1Change(Sender: TObject);
begin
       Label1.Caption:='Фраза';
       Edit1.Text:='';
       MaskEdit1.Visible:=false;
       Label2.Visible:=false;
end;

procedure TForm2.RadioButton2Change(Sender: TObject);
begin
       Label1.Caption:='ФИО';
       Label2.Caption:='Дата рождения';
       Edit1.Text:='';
       MaskEdit1.Text:='';
       MaskEdit1.EditMask:='####-##-##';
       MaskEdit1.Visible:=true;
       Label2.Visible:=true;
end;

procedure TForm2.RadioButton3Change(Sender: TObject);
begin
       Label1.Caption:='Тема';
       Edit1.Text:='';
       MaskEdit1.Visible:=false;
       Label2.Visible:=false;
end;

procedure TForm2.RadioButton4Change(Sender: TObject);
begin
       Label1.Caption:='Наименование';
       Label2.Caption:='Год издания';
       Edit1.Text:='';
       MaskEdit1.Text:='';
       MaskEdit1.EditMask:='####';
       MaskEdit1.Visible:=true;
       Label2.Visible:=true;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Form2.BorderIcons:=[biSystemMenu,biMinimize];
  Form2.BorderStyle:=bsSingle;
  RadioButton1.Checked:=true;
end;

procedure TForm2.Button1Click(Sender: TObject);
var str:string;
begin
  if RadioButton1.Checked=true then
     begin
     if (Edit1.Text='') then MessageDlg('Ошибка','Ошибка: поле пустое',mtError,[mbOK],0)
     else
     begin
     Form1.SQLQuery1.Close;
     Form1.SQLQuery1.SQL.Clear;
     str:=format('INSERT INTO `frazi`(`fraza`) values("%s")',[Edit1.Text]);
     Form1.SQLQuery1.SQL.Add(str);
     Form1.SQLQuery1.ExecSQL;
     Form1.SQLTransaction1.Commit;
     Form1.SQLQuery1.Close;
     Form1.SQLQuery1.SQL.Clear;
     Form1.SQLQuery1.SQL.Add('Select * from `frazi`');
     Form1.SQLQuery1.Open;
      end;
     end;
    if RadioButton2.Checked=true then
     begin
     if (Edit1.Text='') then MessageDlg('Ошибка','Ошибка: поле пустое',mtError,[mbOK],0)
     else
     begin
     Form1.SQLQuery1.Close;
     Form1.SQLQuery1.SQL.Clear;
     str:=format('INSERT INTO `avtor`(`FIO`,`Data_rojdeniya`) values("%s","%s")',[Edit1.Text,MaskEdit1.Text]);
     Form1.SQLQuery1.SQL.Add(str);
     Form1.SQLQuery1.ExecSQL;
     Form1.SQLTransaction1.Commit;
     Form1.SQLQuery1.Close;
     Form1.SQLQuery1.SQL.Clear;
     Form1.SQLQuery1.SQL.Add('Select * from `avtor`');
     Form1.SQLQuery1.Open;
     end;
     end;
        if RadioButton3.Checked=true then
     begin
        if (Edit1.Text='') then MessageDlg('Ошибка','Ошибка: поле пустое',mtError,[mbOK],0)
     else
     begin
     Form1.SQLQuery1.Close;
     Form1.SQLQuery1.SQL.Clear;
     str:=format('INSERT INTO `temi`(`tema`) values("%s")',[Edit1.Text]);
     Form1.SQLQuery1.SQL.Add(str);
     Form1.SQLQuery1.ExecSQL;
     Form1.SQLTransaction1.Commit;
     Form1.SQLQuery1.Close;
     Form1.SQLQuery1.SQL.Clear;
     Form1.SQLQuery1.SQL.Add('Select * from `temi`');
     Form1.SQLQuery1.Open;
     end;
     end;
     if RadioButton4.Checked=true then
     begin
          if (Edit1.Text='') or (MaskEdit1.Text = '    ') or (MaskEdit1.Text = '   ') or
          (MaskEdit1.Text = '  ') or (MaskEdit1.Text = '') then MessageDlg('Ошибка','Ошибка: поле пустое',mtError,[mbOK],0)
     else
     begin
     Form1.SQLQuery1.Close;
     Form1.SQLQuery1.SQL.Clear;
     str:=format('INSERT INTO `istochnik`(`naimenovanie`,`God_izdaniya`) values("%s","%d")',[Edit1.Text,StrToInt(MaskEdit1.Text)]);
     Form1.SQLQuery1.SQL.Add(str);
     Form1.SQLQuery1.ExecSQL;
     Form1.SQLTransaction1.Commit;
     Form1.SQLQuery1.Close;
     Form1.SQLQuery1.SQL.Clear;
     Form1.SQLQuery1.SQL.Add('Select * from `istochnik`');
     Form1.SQLQuery1.Open;
     end;
     end;
end;

{ TForm2 }

end.

