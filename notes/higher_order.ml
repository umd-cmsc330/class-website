(* anonymous functions *)

(fun x y -> x+y) 10 ;;
  

  (fun x y -> x + y) 10 20;;

let f = (fun x y-> x * y);;

(fun x -> ( fun y -> x + y)) 1;;

let t =  (fun x -> ( fun y -> x + y)) 1;;


(* higher order function *)
(* a function takes another function as an argument *)


  let apply f = string_of_int (f 10 20);;
  (* (int ->int ->int)->string *)

   let g =  (fun x -> (fun y-> x+y))  10;;
     g 20
     ;;


     let f x = x*2
     ;;
     let twice g = g (g 10)
     ;;

     (* g takes an integer as an argument *)
  (*  g: (int ->int)    *)


     let m f = f 10;;

     let w x = string_of_int x;;
