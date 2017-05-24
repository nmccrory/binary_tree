type binary_tree = 
	| Leaf of int
	| Tree of int * binary_tree * binary_tree;;

let test_tree = Tree(7, Tree(3, Leaf(1), Leaf(2)), Tree(6, Leaf(4), Leaf(5)));;

let print_val v =
	Printf.printf "[%d]\n" v

let rec sum tree = 
	match tree with
	| Leaf v-> v
	| Tree (v, left, right)-> v + sum left + sum right

let rec pretty tree =
	match tree with
	| Leaf v -> print_val v
	| Tree (v, left, right)->
		print_val v;
		pretty left;
		pretty right

let () = pretty test_tree;;