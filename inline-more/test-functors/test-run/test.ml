let _ = print_string "begin Test"; print_newline ()

module M1 = Lib.Make(struct
  let _ = print_string "begin Test.Arg"; print_newline ()
  type t = int
  let create s = String.length s
  let to_string = string_of_int
  let _ = print_string "end Test.Arg"; print_newline ()
end)

module M2 = Lib.Make(struct
  let _ = print_string "begin Test.Arg"; print_newline ()
  type t = string
  let create s = s
  let to_string s = s ^ ".to_string"
  let _ = print_string "end Test.Arg"; print_newline ()
end)

let _ =
  print_string M1.B.s;
  print_string M2.B.s;
  print_newline ()

