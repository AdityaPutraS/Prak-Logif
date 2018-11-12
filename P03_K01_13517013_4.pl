/*Nama : Aditya Putra Santosa
  NIM  : 13517013 */

/*Bagian A*/

/*Rule Tambahan*/
cekPositif([],'positif') :- !.
cekPositif([Hl|Tl],'positif') :- Hl > 0,cekPositif(Tl,'positif').

cekNegatif([],'negatif') :- !.
cekNegatif([Hl|Tl],'negatif') :- Hl < 0,cekNegatif(Tl,'negatif').

tipeList([],'kosong') :- !.
tipeList(L,'positif') :- cekPositif(L,'positif').
tipeList(L,'negatif') :- cekNegatif(L,'negatif').
tipeList(_,'netral') :- !.

/*Bagian B*/

pasanganganjil([],0) :- !.
pasanganganjil([_],0) :- !.
pasanganganjil([H1,H2|Tail],X) :- (H1 mod 2) =:= 1, (H2 mod 2) =:= 1, pasanganganjil([H2|Tail],XBaru), X is XBaru+1.
pasanganganjil([_,H2|Tail],X) :- pasanganganjil([H2|Tail],X).

/*Bagian C*/

/*Rule Tambahan*/

jumlahapit([],0) :- !.
jumlahapit([_],0) :- !.
jumlahapit([_,_],0) :- !.









