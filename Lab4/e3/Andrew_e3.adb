With Ada.Text_IO; use Ada.Text_IO;

procedure Greet is
   type My_int is range 0 .. 1000;
   type index is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
   type My_int_Array is array(index) of My_int;
   Arr : My_int_Array := (2,3,5,7,11,25,90);
   V : My_int;
begin
   for i in index loop
      V := Arr(i);
      Put(My_int'Image(V));
   end loop;
   New_Line;
   
end Greet;