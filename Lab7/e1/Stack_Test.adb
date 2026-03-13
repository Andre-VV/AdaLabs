with stacks; use stacks;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Stack_Test is
   S : Stack;
   Val : Integer;
begin
   Push(S,95);
   Push(S => S, Val => 27);
   Push(S, 17);
   Pop(S, Val);
   Pop(S, Val);
   Print_Stack(S);
end Stack_Test;