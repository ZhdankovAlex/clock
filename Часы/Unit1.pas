unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,k:integer;
  s1,m1,h1:word;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    Timer1.Enabled:=False;
    Timer2.Enabled:=True;
    Timer3.Enabled:=False;
    Timer4.Enabled:=False;
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
    Timer1.Enabled:=False;
    Timer2.Enabled:=False;
    Timer3.Enabled:=True;
    Timer4.Enabled:=False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Timer1.Enabled:=False;
    Timer2.Enabled:=False;
    Timer3.Enabled:=False;
    Timer4.Enabled:=True;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    Timer1.Enabled:=True;
    Timer2.Enabled:=False;
    Timer3.Enabled:=False;
    Timer4.Enabled:=False;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
Var h,m,s,ms:word;
begin
    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Brush.Color:=clWhite;
    Image1.Canvas.FillRect(rect(0,0,500,500));
        {рисуем циферблат}
    Image1.Canvas.Pen.Color:=clBlack;
    Image1.Canvas.Pen.Width:=3;
    Image1.Canvas.Ellipse(70,70,430,430);
      Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.Ellipse(246,246,254,254);
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.Ellipse(247,247,253,253);
    Image1.Canvas.Pen.Color:=clRed;
    Image1.Canvas.Ellipse(248,248,252,252);
     Image1.Canvas.Pen.Color:=clBlack;
    for a := 1 to 12 do


        begin
    Image1.Canvas.MoveTo
    (Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 180*cos((90-a*30)*pi/180)),
    round(Image1.Height div 2 - 180*sin((90-a*30)*pi/180))
    );

    {рисуем цифры}
    Image1.Canvas.Font.Size:=20;
    Image1.Canvas.TextOut(round(Image1.Width div 2 + 223*cos((90-a*30)*pi/180)),
                          round(Image1.Height div 2 - 223*sin((90-a*30)*pi/180)),
                          inttostr(a));

    end;

    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Pen.Width:=4;
    for a := 1 to 13 do
    begin
    Image1.Canvas.MoveTo
    (Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 150*cos((90-a*30)*pi/180)),
    round(Image1.Height div 2 - 150*sin((90-a*30)*pi/180))
    );
    end;

    {Image1.Canvas.TextOut(round(Image1.Width div 2 + 190*cos((90-a*30)*pi/180)),
                          round(Image1.Height div 2 - 190*sin((90-a*30)*pi/180)),
                          inttostr(i));}



     {изменяем координаты}
    DecodeTime(now,h,m,s,ms);


    if s1<>s then
     begin

     {стираем}

    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Pen.Width:=1;     //секундная стрелка
    Image1.Canvas.MoveTo
    (Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 150*cos((90-s1*6)*pi/180)),
    round(Image1.Height div 2 - 150*sin((90-s1*6)*pi/180))
    );

    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Pen.Width:=3;     //минутная стрелка
    Image1.Canvas.MoveTo(
    Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 120*cos((90-m1*6)*pi/180)),
    round(Image1.Height div 2 - 120*sin((90-m1*6)*pi/180))
    );

    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Pen.Width:=6;      //часовая стрелка
    Image1.Canvas.MoveTo(
    Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 90*cos((90-h*30-m*0.5)*pi/180)),
    round(Image1.Height div 2 - 90*sin((90-h*30-m*0.5)*pi/180))
    );

    end;

    {рисуем}

    if s1<>s then
    begin
    Image1.Canvas.Pen.Color:=clRed;
    Image1.Canvas.Pen.Width:=1;       //секундная стрелка
    Image1.Canvas.MoveTo(
    Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 150*cos((90-s*6)*pi/180)),
    round(Image1.Height div 2 - 150*sin((90-s*6)*pi/180))
    );
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.Pen.Width:=3;      //минутная стрелка
    Image1.Canvas.MoveTo(
    Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 120*cos((90-m*6)*pi/180)),
    round(Image1.Height div 2 - 120*sin((90-m*6)*pi/180))
    );
    Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.Pen.Width:=6;      //часовая стрелка
    Image1.Canvas.MoveTo(
    Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 90*cos((90-h*30-m*0.5)*pi/180)),
    round(Image1.Height div 2 - 90*sin((90-h*30-m*0.5)*pi/180))
    );
    s1:=s;
    m1:=m;
    h1:=h;
    end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
Var h,m,s,ms:word;
begin
    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Brush.Color:=clWhite;
    Image1.Canvas.FillRect(rect(0,0,500,500));
           {рисуем циферблат}
    Image1.Canvas.Pen.Color:=clBlack;
    Image1.Canvas.Pen.Width:=4;
    Image1.Canvas.Ellipse(70,70,430,430);
      Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.Ellipse(246,246,254,254);
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.Ellipse(247,247,253,253);
    Image1.Canvas.Pen.Color:=clRed;
    Image1.Canvas.Ellipse(248,248,252,252);
    Image1.Canvas.Pen.Color:=clBlack;
    for a := 1 to 12 do
        begin
        {рисуем цифры}
    Image1.Canvas.Font.Size:=20;
    Image1.Canvas.TextOut(round(Image1.Width div 2 + 223*cos((90-a*30)*pi/180)),
                          round(Image1.Height div 2 - 223*sin((90-a*30)*pi/180)),
                          inttostr(a));
    Image1.Canvas.MoveTo
    (Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 180*cos((90-a*30)*pi/180)),
    round(Image1.Height div 2 - 180*sin((90-a*30)*pi/180))
    );
    end;

    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Pen.Width:=4;
    for a := 1 to 12 do
    begin
    Image1.Canvas.MoveTo
    (Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 150*cos((90-a*30)*pi/180)),
    round(Image1.Height div 2 - 150*sin((90-a*30)*pi/180))
    );
    end;

     {изменяем координаты}
    DecodeTime(now,h,m,s,ms);

    if s1<>s then
     begin

     {стираем}

    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Pen.Width:=1;     //секундная стрелка
    Image1.Canvas.MoveTo
    (Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 150*cos((90-s1*6)*pi/180)),
    round(Image1.Height div 2 - 150*sin((90-s1*6)*pi/180))
    );
    end;

    {рисуем}

    if s1<>s then
    begin
    Image1.Canvas.Pen.Color:=clRed;
    Image1.Canvas.Pen.Width:=1;       //секундная стрелка
    Image1.Canvas.MoveTo(
    Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 150*cos((90-s*6)*pi/180)),
    round(Image1.Height div 2 - 150*sin((90-s*6)*pi/180))
    );
    s1:=s;
    m1:=m;
    h1:=h;
    end;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
Var h,m,s,ms:word;
begin
    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Brush.Color:=clWhite;
    Image1.Canvas.FillRect(rect(0,0,500,500));
            {рисуем циферблат}
    Image1.Canvas.Pen.Color:=clBlack;
    Image1.Canvas.Pen.Width:=4;
    Image1.Canvas.Ellipse(70,70,430,430);
      Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.Ellipse(246,246,254,254);
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.Ellipse(247,247,253,253);
    Image1.Canvas.Pen.Color:=clRed;
    Image1.Canvas.Ellipse(248,248,252,252);
    Image1.Canvas.Pen.Color:=clBlack;
    for a := 1 to 12 do
        begin
        {рисуем цифры}
    Image1.Canvas.Font.Size:=20;
    Image1.Canvas.TextOut(round(Image1.Width div 2 + 223*cos((90-a*30)*pi/180)),
                          round(Image1.Height div 2 - 223*sin((90-a*30)*pi/180)),
                          inttostr(a));
    Image1.Canvas.MoveTo
    (Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 180*cos((90-a*30)*pi/180)),
    round(Image1.Height div 2 - 180*sin((90-a*30)*pi/180))
    );
    end;

    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Pen.Width:=4;
    for a := 1 to 12 do
    begin
    Image1.Canvas.MoveTo
    (Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 150*cos((90-a*30)*pi/180)),
    round(Image1.Height div 2 - 150*sin((90-a*30)*pi/180))
    );
    end;

     {изменяем координаты}
     DecodeTime(now,h,m,s,ms);

    if s1<>s then
     begin

     {стираем}

    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Pen.Width:=3;     //минутная стрелка
    Image1.Canvas.MoveTo(
    Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 120*cos((90-m1*6)*pi/180)),
    round(Image1.Height div 2 - 120*sin((90-m1*6)*pi/180))
    );
    end;

    {рисуем}

    if s1<>s then
    begin
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.Pen.Width:=3;     //минутная стрелка
    Image1.Canvas.MoveTo(
    Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 120*cos((90-m*6)*pi/180)),
    round(Image1.Height div 2 - 120*sin((90-m*6)*pi/180))
    );
    s1:=s;
    m1:=m;
    h1:=h;
    end;


end;

procedure TForm1.Timer4Timer(Sender: TObject);
Var h,m,s,ms:word;
begin
    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Brush.Color:=clWhite;
    Image1.Canvas.FillRect(rect(0,0,500,500));
        {рисуем циферблат}
    Image1.Canvas.Pen.Color:=clBlack;
    Image1.Canvas.Pen.Width:=4;
    Image1.Canvas.Ellipse(70,70,430,430);
    Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.Ellipse(246,246,254,254);
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.Ellipse(247,247,253,253);
    Image1.Canvas.Pen.Color:=clRed;
    Image1.Canvas.Ellipse(248,248,252,252);
    Image1.Canvas.Pen.Color:=clBlack;
    for a := 1 to 12 do
        begin
        Image1.Canvas.MoveTo(
    round(Image1.Width div 2 + 150*cos((90-a*30)*pi/180)),
    round(Image1.Height div 2 - 150*sin((90-a*30)*pi/180))
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 180*cos((90-a*30)*pi/180)),
    round(Image1.Height div 2 - 180*sin((90-a*30)*pi/180))
    );
    end;

    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Pen.Width:=4;
    for a := 1 to 12 do
    begin
    {рисуем цифры}
    Image1.Canvas.Font.Size:=20;
    Image1.Canvas.TextOut(round(Image1.Width div 2 + 223*cos((90-a*30)*pi/180)),
                          round(Image1.Height div 2 - 223*sin((90-a*30)*pi/180)),
                          inttostr(a));
    end;

     {изменяем координаты}

    DecodeTime(now,h,m,s,ms);

    if s1<>s then
     begin

     {стираем}

    Image1.Canvas.Pen.Color:=clWhite;
    Image1.Canvas.Pen.Width:=6;      //часовая стрелка
    Image1.Canvas.MoveTo(
    Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 90*cos((90-h1*30-m1*0.5)*pi/180)),
    round(Image1.Height div 2 - 90*sin((90-h1*30-m1*0.5)*pi/180))
    );

    end;

    {рисуем}

    if s1<>s then
    begin
    Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.Pen.Width:=6;     //часовая стрелка
    Image1.Canvas.MoveTo(
    Image1.Width div 2,
    Image1.Height div 2
    );
    Image1.Canvas.LineTo(
    round(Image1.Width div 2 + 90*cos((90-h*30-m*0.5)*pi/180)),
    round(Image1.Height div 2 - 90*sin((90-h*30-m*0.5)*pi/180))
    );
    s1:=s;
    m1:=m;
    h1:=h;
    end;


end;


end.
