with Ada.Text_IO; use Ada.Text_IO;

procedure Hello is

type Index_type1 is range 1..5;
type Index_Type2 is range 1..5;

type Inventory_Array is array (Index_type1, Index_Type2) of Integer;

package Inventory_Array_IO is new Ada.Text_IO.Integer_IO (Integer);
Invent : Inventory_Array;
begin
   Put("Enter a value for Invent(1,1):");
   Inventory_Array_IO.Get(Invent(2,1));
   Put("You entered: ");
   Inventory_Array_IO.Put(Invent(2,1));
   Invent(1,1) := 10;
   Inventory_Array_IO.Put(Invent(1,1));
end Hello;
