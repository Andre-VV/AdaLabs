with queues; use queues;
with stacks; use stacks;
with queues_stacks; use queues_stacks;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Andrew_t2 is
   Q : Queue;
   S : Stack;
   Val : Integer;
begin
   -- Test queue
   Put_Line("Testing Queue:");
   Enqueue(Q, 10);
   Enqueue(Q, 20);
   Enqueue(Q, 30);
   Print_Queue(Q);
   Val := get_first_element(Q);
   Put_Line("First element: " & Val'Img);
   Val := get_last_element(Q);
   Put_Line("Last element: " & Val'Img);
   Dequeue(Q);
   Print_Queue(Q);
   Clear_Queue(Q);
   Print_Queue(Q);

   -- Test stack
   Put_Line("Testing Stack:");
   Push(S, 10);
   Push(S, 20);
   Push(S, 30);
   Print_Stack(S);
   Val := get_top_element(S);
   Put_Line("Top element: " & Val'Img);
   Pop(S);
   Print_Stack(S);
   Clear_Stack(S);
   Print_Stack(S);

   -- Test reverse queue
   Put_Line("Testing Reverse Queue:");
   Enqueue(Q, 1);
   Enqueue(Q, 2);
   Enqueue(Q, 3);
   Enqueue(Q, 4);
   Enqueue(Q, 5);
   Enqueue(Q, 6);
   Print_Queue(Q);
   reverse_queue(Q);
   Print_Queue(Q);

end Andrew_t2;



