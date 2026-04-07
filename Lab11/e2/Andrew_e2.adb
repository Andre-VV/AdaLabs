with Ada.Text_IO; use Ada.Text_IO;

procedure main is
   task T;
   task body T is
   begin
      for I in 1..10 loop
         Put_Line("Hello");
      end loop;
   end T;
begin
   null;
end main;