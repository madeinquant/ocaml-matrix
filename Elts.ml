module type ORDERED_AND_OPERATIONAL
sig
  type t

  val zero : t

  val one: t

  val compare : t -> t -> Order.order


  (* Converts a t to a string *)
  val to_string : t -> string


  val add: t -> t -> t

  val subtract: t -> t -> t

  val multiply: t -> t -> t

  val divide: t -> t -> t


  (* For testing *)
  (* Prints a t *)
  val print: t -> unit

  (* Generates the same t each time when called *)
  val generate: unit -> t

  (* Generates a t greater than the argument passed in *)
  val generate_gt: t -> unit -> t
  
  (* Generates a t less than the argument passed in *)
  val generate_lt: t -> unit -> t

  (* Generates a t in between the two arguments. Returns none if none exist *)
  val generate_between: t -> t -> unit -> t option

end

module Floats : ORDERED_AND_OPERATIONAL 
struct
  type t = float

  let zero = 0.

  let one = 1.

  let compare = 
end
