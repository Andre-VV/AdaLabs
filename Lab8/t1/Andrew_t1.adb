with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure main is
   function Euclidian_GCD (X, Y : in Integer) return Integer 
   with Pre => X > 0 and Y > 0 and X <= 2147483647 and Y <= 2147483647,
   Post => Euclidian_GCD'Result <= X and Euclidian_GCD'Result <= Y   is
      A : Integer := X;
      B : Integer := Y;
      Temp : Integer;
      GCD : Integer;
   begin
      while B /= 0 loop
         Temp := A mod B;
         A := B;
         B := Temp;
      end loop;
      GCD := A;
      return GCD;
   end Euclidian_GCD;
   result : Integer;
   begin
      
      --testing preconditions
      result := Euclidian_GCD (-3768, 1701);
      Put_Line("The GCD of -3768 and 1701 is: " & Integer'Image(result));
      result := Euclidian_GCD (3768, -1701);
      Put_Line("The GCD of 3768 and -1701 is: " & Integer'Image(result));
      --The following call fail at compilation time because of the integer size built into ada
      --result := Euclidian_GCD (2147483650, 1701);
      --Put_Line("The GCD of 2147483650 and 1701 is: " & Integer'Image(result));
      --result := Euclidian_GCD (3768, 2147483650);
      --Put_Line("The GCD of 3768 and 2147483650 is: " & Integer'Image(result));
      result := Euclidian_GCD (3768, 1701);
      Put_Line("The GCD of 3768 and 1701 is: " & Integer'Image(result));

end main;