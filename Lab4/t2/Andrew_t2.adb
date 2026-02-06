with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure main is
   --type My_int is range 0 .. 10000;
   type index is range 1 .. 10;
   type My_int_Array is array(index) of Integer;
   Arr : My_int_Array := (0,0,0,0,0,0,0,0,0,0);
   search_int : Integer;
   num_found : Integer := 0;
   temp : Integer;
begin
   for i in index loop
      Put("Enter a number: ");
      Get(temp);
      Arr(i) := temp;
   end loop;

   New_Line;
   Put("Enter a nuber to search for: ");
   Get(search_int);

   for i in index loop
      if Arr(i) = search_int then
         num_found := num_found + 1;
      end if;
   end loop;

   Put("The number ");   
   Put(Integer'Image(search_int));
   Put(" was found ");   
   Put(Integer'Image(num_found));
   Put(" times.");
   
end main;
