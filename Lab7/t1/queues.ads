package queues is

   type Queue is private;
   procedure Enqueue (Q : in out Queue; Val : Integer);
   procedure Dequeue (Q : in out Queue);
   procedure Print_Queue (Q : Queue);
   function get_first_element (Q : Queue) return Integer;
   function get_last_element (Q : Queue) return Integer;
   procedure Clear_Queue (Q : in out Queue);
   function check_full (Q : Queue) return Boolean;
   function length (Q : Queue) return Natural;

   private
      subtype Queue_Index is Natural range 1 .. 1000;
      type Content_Type is array (Queue_Index) of Natural;
      type Queue is record
         Front : Queue_Index := 1;
         Rear : Queue_Index := 1;
         Content : Content_Type;
      end record;


end queues;