(* let expressions *)
(*

let x = e1 in e2;;


evaluate e1 to v1, then replace every x 
in e2 with v1, evaluate e2

 *)

let x = 1+2 in x * x;;

(* print_int x;;  exception *)
    
  (* x is only visible in e2. *)
(*

in C
  {
        int x = 10;
        printf("%d",x);
 }
    x is not visible here.

 *)

 let x = 3;;
   (* from this point on, x is visible *)



let _ = print_string "hello" in 10;;
   
let rec int_list_to_string l =
  match l with
    []->""
   |h::t->(string_of_int h)^ ";" ^ int_list_to_string t
;;

    
let rec last lst =
  match lst with
    []->[]
   |[x]->[x]
   |h::t->
     let _ = print_string ((int_list_to_string t)^ "\n") in
           last t
;;
  
  last [10;20;30;40];;
  


let x = 10 in let t = (let x = 20 in x*2) in t+x;;

let x = 10   in
    let t = (let y = 20 in x*y)
    in t+x;;

  
  (* in C

int x = 10
int t;
{
    int y = 20;
    t = x * y;
}

x + t
   *)
  


  (* tuples *)
(*
  (e1, e2,...);;
    e1 and e2 can have different types *)
(*
  (1,2)  int * int 
  (1,"hello")   int * string
  (1,2,3)   int * int * int 


  [(1,2);(3,4)]   int * int list
 
  [(1,2);(3,4); (1,2,3)]   (int * int) list  
   does not type check

 *)

let add (a,b) = a + b;;
  
let f x =
  match x with
    (a,b,c)->a+b+c
;;

  (* records *)

type point = {x:int; y:int};;
let p1 = {x=10;y=20};;
  p1.x;;
p1.y;;


  (* mutual recursion *)

let rec even n  =
  match n with
    0->true
   |x->odd (x-1)
     
and  odd n =
  match n with
    0->false
   |x->even (x-1)
;;


  (* anonymous functions *)

let next  x = x+1;;

  (fun x-> x+1)

  let next  = fun x-> x+1;;
  let f = next;;

    int x = 10;
    void f(int y){return y * 2;}
    f(x)


  

  
  

  


  
  


  




  
