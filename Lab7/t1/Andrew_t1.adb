with queues; use queues;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   Q : Queue;
   val : Integer;
begin
   Enqueue(Q, 10);
   Enqueue(Q, 20);
   Enqueue(Q, 30);
   Print_Queue(Q);
   val := get_first_element(Q);
   Put_Line("First element: " & Integer'Image(val));
   val := get_last_element(Q);
   Put_Line("Last element: " & Integer'Image(val));
   val := length(Q);
   Put_Line("Length of queue: " & Integer'Image(val));
   new_line;

   Dequeue(Q);
   Print_Queue(Q);
   val := get_first_element(Q);
   Put_Line("First element: " & Integer'Image(val));
   val := get_last_element(Q);
   Put_Line("Last element: " & Integer'Image(val));
   val := length(Q);
   Put_Line("Length of queue: " & Integer'Image(val));
   new_line;

   if check_full(Q) then
      Put_Line("Queue is full");
   else
      Put_Line("Queue is not full");
   end if;

   Clear_Queue(Q);
   Print_Queue(Q);
   Dequeue(Q);

end Main;