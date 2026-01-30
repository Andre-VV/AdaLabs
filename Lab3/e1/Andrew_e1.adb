with Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure Example is
   Limit : constant integer := 1_100;
   procedure Bounded_increment
       (Value : in out integer;
       Bound : in integer;
       Changed : out Boolean)
       is
       begin
         if Value < Bound then
            Value := Value + 1;
            Changed := True;
         else
            Changed := False;
         end if;
   end Bounded_increment;
   Value1 : integer;
   Modified : Boolean;
   begin
      Put("Enter a number");
      Get(Value1);
      Bounded_increment(Value1, Limit/2, Modified);
      if Modified then
         Put("Your number was changed to:");
         Put(Value1,1);
      end if;
   end Example;
