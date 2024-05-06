% Ejercicio 3
% 1)
primero([X|_],X).
% 2)
resto([_|L1],L2):- L2=L1.
% 3)
construye(X,L1,L2):- L2=[X|L1].
% 4)
pertenece(X,[X|_]).
pertenece(X,[_|R]) :- pertenece(X,R).
% 5)
concantena([],L,L).
concantena([X|L1],L2,[X|L3]):- concantena(L1,L2,L3).
% 6)
palindromo(L):- reverse(L,R),R=L.
reverse([],[]).
%reverse([X|L],R) :- reverse(L,K), R is [K|X].
reverse([X|L],R) :- reverse(L,S),append(S,[X],R).
% 7)
%VERSION CON APPEND
ultimo(X,[X|[]]).
ultimo(X,[_|R]) :- ultimo(X,R).
%VERSION CON REVERSE
ultimo(X,L):-reverse(L,[X|_]).
%VERSION RECURSIVA
ultimo(X,[X]).
ultimo(X,[_|R]):- ultimo(X,R).
% 8)
inserta(X,L1,L2):- select(X,L2,L1).
% 9) Terminar
sublista([],L2).
%sublista(L1, L2) :- append(_, L1, S), append(S, _, L2).
sublista(L1,L2).
% 10)
subconjunto(L,[C|Q]):- pertenece(C,L),subconjunto(L,Q).
% 11)
maximo(X,Y,Z):- Z>X , Z>Y.
% 12)
longitud([],0).
longitud([_|R],N) :- longitud(R,K), N is K+1.
% 13)
longitud([],0).
longitud([_|L],N) :- longitud(K,L), N is K+1.
% 14)
lista_acotada(L) :- length(L,N),acotado_AUX(L,N).
acotado_AUX([],_).
acotado_AUX([X|R],N):- X<N,acotado_AUX(R,N).
% 15)
max_lista([X],X).
max_lista([C|L],X) :- max_lista(L,N) , X is max(C,N).
% 16)
suma_lista([], 0).
suma_lista([X|R],S):-suma_lista(R, SR) , S is X + SR.
% 17)
ordenada([]).
ordenada([_]).
ordenada([X,Y|R]):- X =< Y , ordenada([Y|R]).
% 18) REVISAR
lista(0,[]).
lista(N,L) :- lista_AUX(N,N,L).
lista_AUX(_,0,[]).
lista_AUX(N,M,[X|R]) :- N==X , lista_AUX(N,K,R) , M is K+1.
% 19) REVISAR
lista_de_numeros(S,S,[S]).
lista_de_numeros(I,J,[X|R]) :- I == X+1 , lista_de_numeros(I+1,J,R).
% 20)
entre(N1,N2,X) :- N1 =< X , X => N1.
