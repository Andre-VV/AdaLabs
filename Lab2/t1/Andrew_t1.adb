with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Text_IO;
use Ada.Integer_Text_IO;
use Ada.Float_Text_IO;

procedure main is
   A : Float;
begin
   Put("Enter a grade: ");
   Get(A);
   New_Line;
   Put("Grade: ");
   --note: cant use case with floats
   --note: numbers used as boundries must be same type as variable
   if A < 50.0 then
      Put("F");
   elsif A >= 50.0 and A < 55.0 then
      Put("D");
   elsif A >= 55.0 and A < 60.0 then
      Put("C-");
   elsif A >= 60.0 and A < 65.0 then
      Put("C");
   elsif A >= 65.0 and A < 70.0 then
      Put("C+");
   elsif A >= 70.0 and A < 73.0 then
      Put("B-");
   elsif A >= 73.0 and A < 77.0 then
      Put("B");
   elsif A >= 77.0 and A < 80.0 then
      Put("B+");
   elsif A >= 80.0 and A < 85.0 then
      Put("A-");
   elsif A >= 85.0 and A < 90.0 then
      Put("A");
   elsif A >= 90.0 and A <= 100.0 then
      Put("A+");
   else
      Put("Invalid Grade");
   end if;
end main;