with Ada.Text_IO; use Ada.Text_IO;
package body stacks is
   procedure Push (S : in out Stack; Val : Integer) is
   begin
      if S.Top = Stack_Index'Last + 1 then
         Put_Line("Error: Stack Overflow");
      else
         S.Content(S.Top) := Val;
         S.Top := S.Top + 1;
      end if;
   end Push;
   
   procedure Pop (S : in out Stack; Val : out Integer) is
   begin
      Put_Line("Pop Not implemented yet");
   end Pop;

   procedure Print_Stack (S : Stack) is
   begin
      Put_Line("Print_Stack Not implemented yet");
   end Print_Stack;


end stacks;