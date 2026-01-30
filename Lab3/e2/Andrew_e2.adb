with Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure Example is
   Limit : constant integer := 1_100;
   function Bounded_increment(
      Value : in out integer;
      Bound : in integer)
      return Boolean
   is
      Changed : Boolean;
   begin
      if Value < Bound then
         Value := Value + 1;
         Changed := True;
      else
         Changed := False;
      end if;
      return Changed;
   end Bounded_increment;
   Value1 : integer;
   Modified : Boolean;
begin
   Put_Line("Enter a number");
   Get(Value1);
   Modified := Bounded_increment(Value1, Limit/2);
   if Modified then
      Ada.Text_IO.Put_Line("Your number was changed to:");
      Put(Value1,1);
   end if;
end Example;