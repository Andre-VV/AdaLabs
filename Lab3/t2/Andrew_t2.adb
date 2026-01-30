with Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure main is
   Value1 : integer;
   Value2 : integer;
   procedure Swap_Values(
      A : in out integer;
      B : in out integer)
   is
      Temp1 : integer;
      Temp2 : integer;
   begin
      Temp1 := A;
      Temp2 := B;
      A := Temp2;
      B := Temp1;
   end Swap_Values;
begin
   Put_Line("Enter two numbers:");
   Put("Value1 = ");
   Get(Value1);
   Put("Value2 = ");
   Get(Value2);
   Swap_Values(Value1, Value2);
   Put_Line("After swapping:");
   Put_Line("Value1 = " & Integer'Image(Value1));
   Put_Line("Value2 = " & Integer'Image(Value2));
end main;