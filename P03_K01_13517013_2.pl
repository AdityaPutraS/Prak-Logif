/*Nama : Aditya Putra Santosa
  NIM  : 13517013 */

/*Asumsi Set terurut Membersar / Mengecil */

/*Bagian A*/

is_member([],_) :- !.
is_member(A,[A|_]) :- !.
is_member(A,[_|Tail]) :- is_member(A,Tail).

/*Bagian B*/

is_subset([],_) :- !.
is_subset([Head|Tail],B) :- is_member(Head,B), is_subset(Tail,B).

/*Bagian C*/

is_disjoint([],A) :- (A \== []), !.
is_disjoint([Head|Tail],B) :- \+is_member(Head,B),is_disjoint(Tail,B).

/*Bagian D*/

is_union([],B,B) :- !.
is_union(A,[],A) :- !.
is_union([Ha|Ta],B,[Ha|CBaru]) :- is_union(Ta,B,CBaru), \+is_member(Ha,B),!.
is_union([_|Ta],B,CBaru) :- is_union(Ta,B,CBaru).

/*Bagian E*/

is_intersection(_,[],[]).
is_intersection([],_,[]).
is_intersection([Ha|Ta],B,[Ha|CBaru]) :- is_member(Ha,B),is_intersection(Ta,B,CBaru), !.
is_intersection([_|Ta],B,CBaru) :- is_intersection(Ta,B,CBaru).

/*Bagian F*/

is_difference(A,B,C) :- is_union(B,C,Ubc), is_subset(A,Ubc), is_subset(Ubc,A).











