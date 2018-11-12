/*Nama : Aditya Putra Santosa
  NIM  : 13517013 */

/*Rule bantuan*/
panjang([],0) :- !.
panjang([_|L],Len) :- panjang(L,Len2), Len is Len2+1.

ambilXPertama(_,0,[]) :- !.
ambilXPertama([Hl|Tl],X,[Hl|LPotong]) :- XBaru is (X-1), ambilXPertama(Tl,XBaru,LPotong).

buangXPertama(L,0,L) :- !.
buangXPertama([_|Tl],X,LPotong) :- XBaru is (X-1), buangXPertama(Tl,XBaru,LPotong).

/*Bagian A*/
divide2(L,L1,L2) :- panjang(L,N), X is ceiling(N/2),ambilXPertama(L,X,L1),buangXPertama(L,X,L2).

/*Bagian B*/
merge2([],L,L) :- !.
merge2(L,[],L) :- !.
merge2([HL1|TL1],[HL2|TL2],[HL1|TMerge]) :- HL1 =< HL2, merge2(TL1,[HL2|TL2],TMerge).
merge2([HL1|TL1],[HL2|TL2],[HL2|TMerge]) :- HL2 =< HL1, merge2([HL1|TL1],TL2,TMerge).

/*Bagian C*/
mergesort([],[]) :- !.
mergesort([X],[X]) :- !.
mergesort(L,S) :- divide2(L,L1,L2), mergesort(L1,S1),mergesort(L2,S2),merge2(S1,S2,S).
