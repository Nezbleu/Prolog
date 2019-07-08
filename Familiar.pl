progenitor(ruben,efigenia).
progenitor(maria,efigenia).
progenitor(efigenia,yaquelin).
progenitor(efigenia,sonia).
progenitor(efigenia,diana).
progenitor(merejo,yaquelin).
progenitor(merejo,diana).
progenitor(diego,sonia).
progenitor(sergio,ricardo).
progenitor(cristina,ricardo).
progenitor(alvaro,guilo).
progenitor(johana,guilo).
progenitor(ricardo,duvan).
progenitor(yaquelin,duvan).
progenitor(guilo,angie).
progenitor(sonia,angie).
progenitor(guilo,kevin).
progenitor(sonia,kevin).
progenitor(yaquelin,gabriela).

familiarde(X,Y):-padrede(X,Y);abuelode(X,Y);bisabuelode(X,Y);hermanode(X,Y);primode(X,Y);sobrinode(X,Y).
padrede(X,Y):-progenitor(X,Y).
abuelode(X,Y):-(progenitor(X,Z),progenitor(Z,Y)).
bisabuelode(X,Y):-progenitor(X,A),progenitor(A,P),progenitor(P,Y).
hermanode(X,Y):-progenitor(P,X),progenitor(P,Y).
primode(X,Y):-progenitor(P,X),progenitor(T,Y),hermanode(P,T).
sobrinode(X,Y):-progenitor(P,X),hermanode(P,Y).
estacasadocon(X,Y):-progenitor(X,H),progenitor(Y,H).
esFeliz(X,Y):-estacasadocon(X,Y).


