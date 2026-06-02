unit SerialNGRFileDemoMain;
{
  SerialNG ReceiveFile Demo
  This Source demonstrate the handling of larger amount of Data.
  This Program let You open/create a File and store received data from a selected
  Com Port.
  How ever there is no protocol implemented and no specific error management.
  To see how to send larger amount of Data use the SerialNGSFileDemo Project.
  Version 0.2 13.11.2002 some error checking, fixed a file open error
}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, SerialNG, ComCtrls;

type
  TForm1 = class(TForm)
    BasicSettingsBtn: TButton;
    RecBtn: TButton;
    SerialPortNG1: TSerialPortNG;
    OpenDialog1: TOpenDialog;
    FNameEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    StopBtn: TButton;
    Button1: TButton;
    procedure BasicSettingsBtnClick(Sender: TObject);
    procedure SerialPortNG1RxClusterEvent(Sender: TObject);
    procedure RecBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StopBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FName : String;
    FHandle: File;
    FileIsOpen : Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses SerialNGBasic;
{$R *.DFM}
procedure TForm1.BasicSettingsBtnClick(Sender: TObject);
begin
  SerialNGBasicDLG.SetDLGData(SerialPortNG1);
  if SerialNGBasicDLG.ShowModal = mrOK then
    SerialNGBasicDLG.GetDLGData(SerialPortNG1);
end;

procedure TForm1.SerialPortNG1RxClusterEvent(Sender: TObject);
var Data : PByte;
    RecData : Integer;
    Err : DWord;
begin
  if SerialPortNG1.NextClusterSize >= 0 then
    begin
      Data := SerialPortNG1.ReadNextCluster(RecData, Err);
      if (Err <> 0) and (RecData > 0) and (Data <> Nil) and FileIsOpen then
        BlockWrite(FHandle,Data^,RecData);
      if Data <> Nil then
        FreeMem(Data);
    end;
end;

procedure TForm1.RecBtnClick(Sender: TObject);
begin
  FName := FNameEdit.Text; // Save the Name of the Send File
  if FName = '' then //Is Empty? Done!
    begin
      Application.MessageBox('You must enter a Filename!','Error',mb_iconstop or mb_Ok);
      Exit;
    end;
  {$I-}
  AssignFile(FHandle, FName); // Try to open the File
  FileMode := 0;
  Reset(FHandle,1);
  {$I+}
  if (IOResult = 0) then // File Exist
    begin
      {$I-}
      System.Close(FHandle);
      {$I+}
      Application.MessageBox('File Exist, delete first!','Error',mb_iconstop or mb_Ok);
      Exit;
    end;
  {$I-}
  Rewrite(FHandle,1);
  {$I+}
  if (IOResult = 0) then // File is opened
    begin
      FileIsOpen := True; // Ok, the File ist Open
      StopBtn.Enabled := True; // Enable the Stop Button
    end
  else
    begin
      Application.MessageBox('File could not be opened!','Error',mb_iconstop or mb_Ok);
      Exit;
    end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if FileIsOpen then
    {$I-}
    System.CloseFile(FHandle); // Close the file
    {$I+}
  SerialPortNG1.Active := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FileIsOpen := False;
  SerialPortNG1.Active := True;
end;

procedure TForm1.StopBtnClick(Sender: TObject);
begin
  if FileIsOpen then
    begin
      {$I-}
      System.CloseFile(FHandle); // Close the File
      {$I+}
      if (IOResult <> 0) then // Error
        Application.MessageBox('File could not be closed','Error',mb_iconstop or mb_Ok);
      FileIsOpen := False; // Remember this
      StopBtn.Enabled := False; //Allow no to stop again
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
serialportng1.SendString(chr(80));
end;

end.
