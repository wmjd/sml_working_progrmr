(* append takes a pair of lists and makes a list by recursively consing the head to the recursive call on tail*)
(* concat takes a list of lists and makes a list by recursively appending the head to the recursive call on the tail*)
fun app(l1,l2) = 
	if (null l1) then l2 else (hd l1)::app(tl l1, l2);

fun a(nil, l) = l
	| a(x::xs, l) = x::a(xs, l)

fun cat [] = []
	| cat(l::ls) = l @ cat ls;
fun kat nil = nil
	| kat(ls) = (hd ls) @ cat (tl ls);