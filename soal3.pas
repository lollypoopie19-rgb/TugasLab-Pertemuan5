program UrutNilaiUAS;
var
  a: array[1..10] of integer;  { menyimpan nilai UAS, maksimal 10 mahasiswa }
  n, i, j, t: integer;         { t = variabel bantu untuk menukar nilai }
begin
  { 1. Input jumlah mahasiswa }
  write('Jumlah mahasiswa: ');
  readln(n);

  { 2. Input nilai UAS, disimpan ke array a }
  for i := 1 to n do
  begin
    write('Nilai UAS ke-', i, ': ');
    readln(a[i]);
  end;

  { 3. Pengurutan (exchange sort), dari terendah ke tertinggi.
       Setiap nilai a[i] dibandingkan dengan nilai-nilai setelahnya (a[j]).
       Kalau a[i] lebih besar dari a[j], posisinya ditukar.
       Setelah satu putaran i, nilai terkecil sudah ada di posisi i. }
  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if a[i] > a[j] then
      begin
        t := a[i];     { simpan a[i] sementara }
        a[i] := a[j];  { isi a[i] dengan nilai yang lebih kecil }
        a[j] := t;     { isi a[j] dengan nilai lama a[i] }
      end;

  { 4. Tampilkan hasil yang sudah terurut }
  writeln('Nilai terurut:');
  for i := 1 to n do
    writeln(a[i]);
end.