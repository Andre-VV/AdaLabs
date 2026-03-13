with queues; use queues;
with stacks; use stacks;
with Ada.Text_IO; use Ada.Text_IO;

package body queues_stacks is

   procedure reverse_queue (Q : in out Queue) is
      S : Stack;
   begin
      -- Dequeue all elements from the queue and push them onto the stack
      while not Q_is_empty(Q) loop
         Push(S, get_first_element(Q));
         Dequeue(Q);
      end loop;

      -- Pop all elements from the stack and enqueue them back to the queue
      while not S_is_empty(S) loop
         Enqueue(Q, get_top_element(S));
         Pop(S);
      end loop;
   end reverse_queue;

end queues_stacks;