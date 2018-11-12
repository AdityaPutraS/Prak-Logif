/*Nama : Aditya Putra Santosa
  NIM  : 13517013 */

/*Bagian A*/

pertama([X|_],X).

/*Bagian B*/
terakhir([X],X) :- !.
terakhir([_|X],A) :- terakhir(X,A).

/*Bagian C*/
panjang([], 0) :- !.
panjang([_|X], Len) :- panjang(X,A), !, Len is A+1.

/*Bagian D*/
jumlah([], 0) :- !.
jumlah([A|B],Jum) :- jumlah(B,JumLama), !, Jum is JumLama + A.

/*Bagian E*/
tanpaAkhir([_],[]) :- !.
tanpaAkhir([A|B],[A|C]) :- tanpaAkhir(B,C).

/*Bagian F*/
palindrom([]) :- !.
palindrom([_]) :- !.
palindrom([A|B]) :- terakhir([A|B],Last), A =:= Last, tanpaAkhir(B,CekBaru), palindrom(CekBaru).
