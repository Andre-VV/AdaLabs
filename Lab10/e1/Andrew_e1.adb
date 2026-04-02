with Ada.Text_IO; use Ada.Text_IO;
with Exchange; use Exchange;

procedure main is
   procedure Swap is new Exchange.Exchange(Integer);
   A : Integer := 190;
   B : Integer := 578;
begin
   Ada.Text_IO.Put_Line("Before swapping: A = " & Integer'Image(A) & ", B = " & Integer'Image(B));
   Swap(A, B);
   Ada.Text_IO.Put_Line("After swapping: A = " & Integer'Image(A) & ", B = " & Integer'Image(B));
end main;