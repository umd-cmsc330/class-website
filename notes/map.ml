(* map *)

let rec double lst =
  match lst with
    []->[]
   |h::t-> h * 2 :: double t;;
  
let rec neg lst =
  match lst with
    []->[]
   |h::t-> h * (-1) :: neg t;;
  
(* we generalize *)
  
let rec map f lst =
  match lst with
    []->[]
   |h::t-> f h:: map f t
;;
  
  
  (* map examples *)
  map (fun x->x*2) [1;2;3;4];;
  map (fun x->x*(-1)) [1;2;3;4];;
    map (fun x->x+1) [1;2;3;4];;
    let sub1  x = x-1;;
      map sub1 [1;2;3;4];;
        
        (* map definition *)
        (*
      map       f [e1; e2; e3; ...] ===> [f e1; f e2; f e3;...]
         *)

        
        map (fun x->x/2) [10;20;30;40]
        ;;
        (* int list = [5; 10; 15; 20] *)
          

        let double x = x * 2 ;;
          map double [1;2;3;4;5];;
            (*  int list = [2; 4; 6; 8; 10] *)
            
            (* a function with two arguments *)
            map ((fun x y-> x-y) 1) [10;20;30];;
              (* int list = [-9; -19; -29]*)
              
              
              (* type of map *)
              (* ('a->'b)->'a list->'b list    *)
              
              map string_of_int [1;2;3;4];;
              (* string list = ["1"; "2"; "3"; "4"]  *)
                
              (* list of functions *)
              let double x = x * 2;;
              let neg x = x * (-1);;
              let add1 x = x + 1;;
                
              let fs = [double;neg;add1];;
                
                map  (fun x-> map x [10;20;30;40])   fs;;
                  (*
  int list list = [[    20; 40; 60; 80]; [-10; -20; -30; -40];
  [11; 21; 31; 41]]     
                   *)
                  
