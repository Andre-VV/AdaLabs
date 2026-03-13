with Ada.Text_IO; use Ada.Text_IO;
with week.child; use week.child;

procedure Main is
   begin
      Put_Line("The first day of the week is: " & Get_First_Of_Week);
end Main;