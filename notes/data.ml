(* review Map & Fold *)

(* Data Types *)

let t = [1;2;3;4]
;;
  (* int list *)
(*
  [1; 1.5; "hello"]
 *)


type gen = Int of int
         |Float of float
         |Str of string
;;
(*
  # Int 10;;
  - : gen = Int 10
# Float 1.5;;
- : gen = Float 1.5
 *)


let  t = [Int 10; Float 1.5; Str "hello"];;
(*
gen list = [Int 10; Float 1.5; Str "hello"] *)
  
let print_gen x =
  match x with
    Int i->print_int i
   |Float f ->print_float f
   |Str s ->print_string s
;;
  (* print gen list *)

  List.map print_gen t
;;


type shape =
  Circle of float
|Rect of float * float
;;

let lst = [Rect (1.0,2.0); Circle 1.0; Rect (10.0,20.0)];;
 (*
shape list = [Rect (1., 2.); Circle 1.; Rect (10., 20.)]
  *)

let area s =
  match s with
  |Rect (h,w)-> h *. w
  |Circle r-> 3.141526 *. r *. r
;;
(*
  # List.map area lst;;
- : float list = [2.; 3.141526; 200.]
 *)
  (* shape interface has an abstract method area *)
  

type coin = Head |Tail;;

let c = [Head;Head;Tail;Head];;

(* val c : coin list = [Head; Head; Tail; Head]
 *)
  
let rec sum x =
  match x with
    []->0
  |Head::t-> 1 + sum t
  |Tail::t-> sum t
;;
  

  (* linked list *)


type mylist =
  Nil
|Cons of int * mylist
;;
  let t = Cons(30,Cons(20,Cons(10,Nil)));;
(*  val t : mylist = Cons (20, Cons (10, Nil))*)

  let rec sum lst =
    match lst with
      Nil->0
     |Cons(a,b)-> a + sum b
  ;;
    
(* # sum t;;
- : int = 60
# 
 *)


    (* binary tree *)

  type tree =
    Empty
  |Node of tree * int * tree
  ;;
    (* 
Empty;;
- : tree = Empty
# Node(Empty, 10,Empty);;
- : tree = Node (Empty, 10, Empty)
# *)


  let t = Node(Empty, 10, Node(Empty, 20, Empty));;
    
  
  let rec sum t =
    match t  with
      Empty ->0
     |Node(l,v,r)-> v + sum l + sum r
  ;;


  type int_option =
    None
  |Some of int
  ;;


    (* head of list *)

  let hd lst =
    match lst with
      []->[]
     |h::_-> [h]
  ;;
    
    (* another version: head of list *)
  type  'a option =
    None
  |Some of 'a
  ;;


  let hd lst =
    match lst with
      []->None
     |h::_-> Some h
  ;;
    
   

