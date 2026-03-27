package stacks is

   type Stack is private;
   procedure Push (S : in out Stack; Val : Integer);
   procedure Pop (S : in out Stack);
   procedure Print_Stack (S : Stack);
   function get_top_element (S : Stack) return Integer;
   procedure Clear_Stack (S : in out Stack);
   function check_full (S : Stack) return Boolean;
   function length (S : Stack) return Natural;
   function S_is_empty (S : Stack) return Boolean;

   private
      subtype Stack_Index is Natural range 1 .. 1000;
      type Content_Type is array (Stack_Index) of Natural;
      type Stack is record
         Top : Stack_Index := 1;
         Content : Content_Type;
      end record;

end stacks;