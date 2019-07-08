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

familiar(X,Y):-progenitor(X,Y);(progenitor(X,Z),progenitor(Z,Y));(progenitor(X,A),progenitor(A,P),progenitor(P,Y)).
hermano(X,Y):-progenitor(P,X),progenitor(P,Y).
casado(X,Y):-progenitor(X,H),progenitor(Y,H).
esFeliz(X,Y):-casado(X,Y).

