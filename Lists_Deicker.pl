/* René Deicker 
Definieren von Head und Tail */

head([Head | _], Head).
tail([_ | Tail], Tail).

/*
Fügt am Anfang ein
BSP: prepend([b,c,d,e],a,X) --> X = [a,b,c,d,e]
*/

prepend([],E,[E]).
prepend([Head|Tail], E, [E |[Head|Tail]]).

/*
Fügt am Ende ein.
BSP: addElement([a,b], e, X). Ergebnis: X = [a,b,e]
*/

addElement([],E,[E]).
addElement([Head|Tail],E,[Head|AddedTail]):-addElement(Tail, E, AddedTail).

/*
BSP: hasLength([1,2,3,4],X) liefert X = 4
*/

hasLength([], 0).
hasLength([Head|Tail],Length) :- hasLength(Tail,X),Length is 1 + X.

/*
BSP: remove([5,4,3,6],4,X) liefert X = [5,3,6]
*/

remove([E|Tail],E,Tail).
remove([Head|Tail],E,[Head|RemTail]):-remove(Tail,E,RemTail).

