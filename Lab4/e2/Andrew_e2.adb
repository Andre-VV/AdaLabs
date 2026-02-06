with Ada.Text_IO; use Ada.Text_IO;

procedure Month_Example is
   type Month_Duration is range 1 .. 31;
   type Month is (Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec);
   type My_int_Array is array (Month) of Month_Duration;
   package Month_IO is new Ada.Text_IO.Enumeration_IO(Month);
   package Month_Duration_IO is new Ada.Text_IO.Integer_IO(Month_Duration);
   Tab : constant My_int_Array := (31,28,31,30,31,30,31,31,30,31,30,31);
   begin
      for M in Month loop
         Month_IO.Put(Month(M),Width => 4);
         Month_Duration_IO.Put(Tab(M),Width => 4);
         New_Line;
      end loop;
end Month_Example;
