program ffff;
type
  vid = (cena,kolv);
  proc = record
    nazv:string;
    vid_proc:vid of 
    cena:(cena1:integer);{Цена}
    kolv:(kolv1:byte);{Кол-во}
  end;
var
  p: array [1..1000] of proc; 
  i,n,t:byte;
begin
  {Ввод к-ва n}
  for i:=1 to n do
    with p[i] do 
      begin
        writeln('Введите название процессора № ',i);
        readln(p[i].proc);
        {Выбор ввода cena или kolv}
        writeln('Введи 1 для цены или 2 для кол-ва процессоров на складе');
        readln(t);
        case t of
          1:begin
              {ввод cena1}
              writeln('Введите цену на процессор');
              readln(p[i].cena1);
              vid_proc:=cena;
            end;
          2:begin
              {Ввод kolv1}
              writeln('Введите кол-во процессоров на складе');
              readln(p[i].kolv1);
              vid_proc:=kolv;
            end;
        end;
      end;
  {Обработка}
  {Вывод}
  for i:=1 to n do
    with p[i] do 
      begin
        case vid_proc of
          cena:begin
              {вывод cena1}
              writeln('Цена на процессор: ',p[i].cena1);
            end;
          kolv:begin
              {Вывод kolv1}
              writeln('Кол-во процессоров на складе: ',p[i].kolv1);
            end;
        end;
      end;
      {вывод таблицы}
      writeln('Информация о процессорах:':30);
      writeln('╔═════════════════════════╦══════════╦═══════════╗');
      writeln('║       Наименование      ║Цена      ║Количество ║');
      writeln('╠═════════════════════════╬══════════╬═══════════╣');
        for i:=1 to n do
        begin {вывод данных о кол-ве продукции в таблицу}
          write('║ ',p[i].cena1:10);
          write('║ ',p[i].kolv1:15);
          write('║');
          writeln;
        end;
      writeln('╚═════════════════════════╩══════════╩═══════════╝');
    {end for} 
end.