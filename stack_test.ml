(* corebuild stack_test.native *)

open OUnit
open Stack

let test_stack_head _ =
  let stack_b = ListStack.cons 3 ListStack.empty in
  let r = ListStack.head(stack_b) in
  assert_equal 3 r

let test_stack_tail _ =
  let stack_b = ListStack.cons 3 ListStack.empty in
  let r = ListStack.tail(stack_b) in
  assert_equal ListStack.empty r

let suite = "OUnit Example" >::: [
                                   "test_stack_head" >:: test_stack_head;
                                   "test_stack_tail" >:: test_stack_tail;
                                 ]

let _ =
  run_test_tt_main suite
