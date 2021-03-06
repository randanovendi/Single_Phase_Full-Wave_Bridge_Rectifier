5;

##Fungsi Untuk Memanggil Judul Job
function Job(message1)            
  printf ("%s\n" ,message1);  
endfunction
##Fungsi Untuk Menghitung Tegangan Puncak 
function [Vsumber, Vp] = Vs (n)
  Vsumber = n;
  Vp      = n*sqrt(2);
  printf("Nilai Tegangan AC Masukan (Sumber) : %d V\n", Vsumber);
  printf("Nilai Tegangan Puncak Masukan (Sumber) : %d V\n", Vp);
  endfunction
##Fungsi Untuk Memanggil Nilai Resistansi Yang Diketahui
function L = R (q)
  R = q;
  printf("Nilai Resistansi : %d Ohm\n", R);
endfunction
##Fungsi Untuk Mencari Nilai Dengan Perhitungan Octave
function [Vpeak, Vrms, UdAC, Vavg, Irms, Iavg, Fu, Fi, Rp, Wu, Wi] = Fungsi (r, s)
  ##Fungsi baru Untuk Menghitung Tegangan Puncak
  Vpeak = r*sqrt(2);
  ##Untuk Menghitung Nilai Tegangan RMS Keluaraan 
  Vrms  = (sqrt(2)*r)/sqrt(2);  
  ##Untuk Menghitung Nilai Tegangan Average Dan RMS Keluaraan
  Vavg  = (2*sqrt(2)/pi)*r;  
  UdAC  = sqrt((Vrms^2)-(Vavg^2));
  ##Untuk Menghitung Nilai Arus RMS Pada Beban 
  Irms   = (Vrms/s);
  ##Untuk Menghitung Nilai Arus Average Pada Beban
  Iavg   = (Vavg/s);
  ##Untuk Menghitung Nilai Form Factor (Fu) Gelombang Penuh
  Fu    = (Vrms/Vavg);
  ##Untuk Menghitung Nilai Form Factor (Fi) Gelombang Penuh
  Fi    = (Irms/Iavg);
  ##Untuk Menghitung Nilai Ripple Factor Gelombang Penuh
  Rp    = (UdAC/Vavg);
  ##Untuk Menghitung Nilai Ripple Wu Gelombang Penuh
  Wu    = (sqrt((Fu^2)-1));
  ##Untuk Menghitung Nilai Ripple Wi Gelombang Penuh
  Wi    = (sqrt((Fi^2)-1));
  
  printf("Nilai Tegangan RMS Keluaraan : %d V\n", Vrms);
  printf("Nilai Tegangan Average Keluaraan : %d V\n", Vavg);
  printf("Nilai Tegangan UdAC : %d V\n", UdAC);
  printf("Nilai Arus RMS Pada Beban : %d A\n", Irms);
  printf("Nilai Arus Arus Average Pada Beban: %d A\n", Iavg); 
  printf("Nilai Form Factor (Fu) Gelombang Penuh : %d\n", Fu);
  printf("Nilai Form Factor (Fi) Gelombang Penuh : %d\n", Fi);
  printf("Nilai Ripple Factor Gelombang Penuh : %d\n", Rp);
  printf("Nilai Ripple Wu Gelombang Penuh : %d %%\n", Wu);
  printf("Nilai Ripple Wi Gelombang Penuh : %d %%\n", Wi); 
endfunction
Job ("Perhitungan Dengan GNU Octave Fullwave Wave Bridge 1 Phase");
##Isi Nilai Yang Diketahui 
Vs(90);
R(10000);

##Isi Angka Sesuai Urutan (Vs,R)
Fungsi(90, 10000);