with Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure main is
   Value1 : Integer;
   Value2 : Integer;
   function divisible_by_3(
      A : in Integer)
      return Boolean 
      is
   begin
      if A mod 3 = 0 then
         return True;
      else
         return False;
      end if;
   end divisible_by_3;
   procedure list_divisible_by_3(
      A : in Integer;
      B : in Integer)
   is
      divisible : Boolean;
      counter : Integer := 0;
   begin
      for I in A .. B loop
         divisible := divisible_by_3(I);
         if divisible then
            Put(I);
            New_Line;
            counter := counter + 1;
         end if;
      end loop;
      Put_Line("Total numbers divisible by 3: " & Integer'Image(counter));
   end list_divisible_by_3;
      
   
begin
   Put_Line("Enter the range to list numbers divisible by 3: ");
   Put("Start value: ");
   Get(Value1);
   Put("End value: ");
   Get(Value2);
   list_divisible_by_3(Value1, Value2);
end main;