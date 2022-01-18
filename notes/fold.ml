(* fold /reduce *)

let rec fold f a l =
  match l with
    []->a
   |h::t-> fold f (f a h) t
;;

(* type of fold *)
(*   ('a ->'b  ->'a)  ->'a->   'b lst->'a  *)

let add x y = x + y
;;

  fold add 0 [1;2;3];;    (* int = 6 *)
(*
      1::[2;3]===> fold add (add 0 1) [2;3]
      fold add     1     [2;3]
      2::[3]==> fold add (add 1 2) [3]
      fold add     3     [3]
      3::[]     fold add (add 3 3) []
      fold add    6      []
      6
*)
    
  fold (fun x y -> x *y) 1 [1;2;3;4;5]
  ;;  (* 120 *)
      
  (* find the max in the list *)
  let maxlist lst =
    match lst with
      []-> failwith "empty list"
     |h::t->fold max h t
  ;;


  (* fold_right *)
  let rec fold_right f l a =
    match l with
      []->a
     |h::t-> f h (fold_right f t a)
  ;;
    
    
    fold_right (+) [1;2;3;4;5] 0;;
    (*
      fold_left: (((1+2)+3)+4+5)= 15
      
      fold_right: (1+(2+(3+(4+(5+0)))))=15
     *)
    
    fold (fun x y->x-y) 0 [1;2;3]
    ;;  (*-6*)
      (* ((0-1)-2)-3)  = -6*)
      
      fold_right (fun x y -> x-y) [1;2;3] 0
    ;;(*2*)
      
        (*   (1-(2-(3-0))) = 2*)

      fold (fun x y -> x * y) 1 [1;2;3;4;5];;
          
    (* write filter function using fold *)
    let filter f lst = fold (fun x y -> if f y then y::x else x) [] lst ;;
      
    (*# filter (fun x -> x>10) [1;4;14;2;24;20];;
      - : in   t list = [20; 24; 14]
     *)

    (* find the index of an item in the list *)
    let index x lst =
      let rec aux n l =
        match l with
          []->(-1)
         |h::t->if x=h then n
                else aux (n+1) t in
      aux 0 lst
    ;;
      
      
