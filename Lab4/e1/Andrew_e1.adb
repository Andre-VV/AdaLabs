with Ada.Text_IO; 
use Ada.Text_IO;

procedure Hello is
type My_int is range 0 .. 1000;
type index is range 1 .. 5;
package My_int_IO is new Ada.Text_IO.Integer_IO(My_int);
type My_int_Array is array(index) of My_int;
Arr : my_int_Array := (2,3,5,7,11);
V : My_int;
begin
   for i in index loop
      My_int_IO.Put(Arr(i));
   end loop;
   New_Line;
end Hello;

