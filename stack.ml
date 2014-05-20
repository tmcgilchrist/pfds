module type Stack =
  sig
    type 'a t

    val empty   : 'a t
    val isEmpty : 'a t -> bool
    val cons    : 'a -> 'a t -> 'a t
    val head    : 'a t -> 'a
    val tail    : 'a t -> 'a t
  end

module ListStack : Stack = struct
  type 'a t = 'a list

  exception Empty

  let empty = []
  let isEmpty l =
    match l with
    | [] -> true
    | _  -> false

  let cons x l = x :: l

  let head l =
    match l with
    | h :: _ -> h
    | [] -> raise Empty

  let tail l =
    match l with
    | _ :: r -> r
    | [] -> raise Empty
end
