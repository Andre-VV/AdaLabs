with Ada.Text_IO; use Ada.Text_IO;
package body queues is
   procedure Enqueue (Q : in out Queue; Val : Integer) is
   begin
      if Q.Rear = Queue_Index'Last + 1 then
         Put_Line("Error: Queue Overflow");
      else
         Q.Content(Q.Rear) := Val;
         Q.Rear := Q.Rear + 1;
      end if;
   end Enqueue;

   procedure Dequeue (Q : in out Queue) is
   begin
      if Q.Front = Q.Rear then
         Put_Line("Error: Queue empty");
      else
         Q.Front := Q.Front + 1;
      end if;
   end Dequeue;


   procedure Print_Queue (Q : Queue) is
   begin
      for I in Q.Front .. Q.Rear - 1 loop
         Put(Q.Content(I)'Img);
         if I < Q.Rear - 1 then
            Put(", ");
         end if;
      end loop;
      New_Line;

   end Print_Queue;




   function get_first_element (Q : Queue) return Integer is
   begin
      if Q.Front = Q.Rear then
         Put_Line("Error: Queue empty");
         return 0; -- Return a default value or handle as needed
      else
         return Q.Content(Q.Front);
      end if;
   end get_first_element;



   function get_last_element (Q : Queue) return Integer is
   begin
      if Q.Front = Q.Rear then
         Put_Line("Error: Queue empty");
         return 0; -- Return a default value or handle as needed
      else
         return Q.Content(Q.Rear - 1);
      end if;
   end get_last_element;


   procedure Clear_Queue (Q : in out Queue) is
   begin
      Q.Front := 1;
      Q.Rear := 1;
   end Clear_Queue;


   function check_full (Q : Queue) return Boolean is
   begin
      if Q.Rear = Queue_Index'Last + 1 then
         return True;
      else
         return False;
      end if;
   end check_full;

   function length (Q : Queue) return Natural is
   begin
      return Q.Rear - Q.Front;
   end length;
end queues;