program soal4;
var
  { setiap komponen nilai punya array sendiri, maksimal 5 mahasiswa }
  tugas, kuis, uts, uas: array[1..5] of integer;
  rata: array[1..5] of real;   { rata-rata bisa berkoma, jadi pakai real }
  n, i: integer;
begin
  { 1. Input jumlah mahasiswa }
  write('Jumlah mahasiswa: ');
  readln(n);

  { 2. Input 4 nilai tiap mahasiswa, lalu langsung hitung rata-ratanya.
       Rata-rata = (tugas + kuis + uts + uas) / 4 }
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    write('Tugas: '); readln(tugas[i]);
    write('Kuis : '); readln(kuis[i]);
    write('UTS  : '); readln(uts[i]);
    write('UAS  : '); readln(uas[i]);
    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
  end;

  { 3. Tampilkan nilai, rata-rata, dan keterangan tiap mahasiswa }
  writeln;
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    writeln('Tugas=', tugas[i], ' Kuis=', kuis[i], ' UTS=', uts[i], ' UAS=', uas[i]);
    writeln('Rata-rata: ', rata[i]:0:2);  { :0:2 = tampil 2 angka di belakang koma }

    { 4. Penentuan kelulusan: lulus jika rata-rata >= 70 }
    if rata[i] >= 70 then
      writeln('Keterangan: Lulus')
    else
      writeln('Keterangan: Tidak Lulus');
    writeln;
  end;
end.