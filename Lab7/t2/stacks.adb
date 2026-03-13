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

   procedure Pop (S : in out Stack) is
   begin
      if S.Top = 1 then
         Put_Line("Error: Stack empty");
      else
         S.Top := S.Top - 1;
      end if;
   end Pop;

   procedure Print_Stack (S : Stack) is
   begin
      for I in reverse 1 .. S.Top - 1 loop
         Put(S.Content(I)'Img);
         if I > 1 then
            Put(", ");
         end if;
      end loop;
      New_Line;
   end Print_Stack;

   function get_top_element (S : Stack) return Integer is
   begin
      if S.Top = 1 then
         Put_Line("Error: Stack empty");
         return 0; -- Return a default value or handle as needed
      else
         return S.Content(S.Top - 1);
      end if;
   end get_top_element;

   procedure Clear_Stack (S : in out Stack) is
   begin
      S.Top := 1;
   end Clear_Stack;

   function check_full (S : Stack) return Boolean is
   begin
      if S.Top = Stack_Index'Last + 1 then
         return True;
      else
         return False;
      end if;
   end check_full;

   function length (S : Stack) return Natural is
   begin
      return S.Top;
   end length;

   function S_is_empty (S : Stack) return Boolean is
   begin
      if S.Top = 1 then
         return True;
      else
         return False;
      end if;
   end S_is_empty;
end stacks;