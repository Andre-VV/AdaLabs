with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Raise_Handel_Example is
   Invalid_Input : exception;
   function Check_Positive(N : Integer) return Integer is
   begin
      if N < 0 then
      raise Invalid_Input;
      end if;
      return N;
   end Check_Positive;
begin
   declare
      user_input : Integer;
   begin
      Put("Enter a positive integer: ");
      Get(user_input);
      Put_Line("Valid number:" & Integer'Image(Check_Positive(user_input)));
   exception
      when Invalid_Input =>
         Put_Line("Exception: You entered a negative number. Please enter a positive integer.");
      when others =>
         Put_Line("An unexpected error occurred.");
   end;
   Put_Line("Program execution continues..");
end Raise_Handel_Example;