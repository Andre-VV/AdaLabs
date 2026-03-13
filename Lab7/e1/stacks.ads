package stacks is

   type Stack is private;
   procedure Push (S : in out Stack; Val : Integer);
   procedure Pop (S : in out Stack; Val : out Integer);
   procedure Print_Stack (S : Stack);

   private
      subtype Stack_Index is Natural range 1 .. 10;
      type Content_Type is array (Stack_Index) of Natural;
      type Stack is record
         Top : Stack_Index := 1;
         Content : Content_Type;
      end record;

end stacks;