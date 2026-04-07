with Ada.Text_IO;   use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

with Delay_Aux_Pkg;

procedure Show_Time_Task is
   package Aux renames Delay_Aux_Pkg;

   task T;

   task body T is
      Cycle : constant Time_Span :=
         Milliseconds (1000);
      Next : Time := Aux.Get_Start_Time + Cycle;
      Cnt   : Integer := 1;
   begin
      for I in 1 .. 5 loop
         delay until Next;

         Aux.Show_Elapsed_Time;
         Aux.Computational_Intensive_App;

         Next := Next + Cycle;

         Put_Line ("Cycle # "
                   & Integer'Image (Cnt));
         Cnt  := Cnt + 1;
      end loop;
      Put_Line ("Finished cycling");
   end T;

begin
   null;
end Show_Time_Task;