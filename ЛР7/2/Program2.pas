// � ������ ������� n ����������� ����������, ������� ���������� ������� ����������� �������. 
// ������� ����� ����, ������� ������������ ������� ���������������� ������������: ������������, 
// ����������� ������ ����, ����������, ������-������, ��������, ������-�������. 
// �������� �� ��������� �������:
//  1) � ����� ������ ������� ������������� ������ �� ����������?
//  2) � ����� ������ ������� ������������� ���� �� ����� �� ����������?
//  3) � ����� ������ �� ���� �� ���������� �� �������� ����������?
Type
  firm_type = set of string;
  hop = set of integer;
Var
  firms:array[1..6] of firm_type;
  ychr:array of firm_type;
  i,j,n:integer;
  f:text;
  s:string;
  b:boolean;
Begin
  firms[1]:=['����������']; 
  firms[2]:=['���������� ������ ����'];
  firms[3]:=['���������'];
  firms[4]:=['�����-������'];
  firms[5]:=['�������'];
  firms[6]:=['�����-������'];
  assign(f,'file2.txt'); reset(f);
  readln(f,n);
  readln(f,j);
  setlength(ychr,n);
  for i:=1 to n do
  begin
    readln(f,s);
    while not (s in '1..9') do
    begin
      ychr[i-1]:=ychr[i-1]+[s];
      readln(f,s);
    end;
  end;
  writeln('������:');
  for i:=1 to 6 do
  begin
    b:=True;
    for j:=0 to n-1 do
      if length(firms[i]+ychr[j])>0 then
        break;
    writeln('   ',firms[i]);
  end;
  close(f);
End.