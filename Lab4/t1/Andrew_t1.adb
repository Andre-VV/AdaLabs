with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Fib is
   type My_int is range 0 .. 10000;
   type index is range 1 .. 20;
   type My_int_Array is array(index) of My_int;
   Arr : My_int_Array := (0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
begin
   
   for i in index loop
      if i > 2 then
         Arr(i) := Arr(i-1) + Arr(i-2);
      end if;
   end loop;
   for i in index loop
      Put("f(");
      Put(index'Image(i));
      Put(") = ");
      Put(My_int'Image(Arr(i)));
      New_Line;
   end loop;
   New_Line;
end Fib;