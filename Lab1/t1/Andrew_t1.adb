with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure addition is use Ada.Text_IO;
use Ada.Integer_Text_IO;
X : Integer;
Y : Integer;
Z : Integer;
begin
    Put("Hello World");
    New_Line;
    X := 5;
    Y := 5;
    Put_Line("Value of X is " & Integer'Image(X));
    Put("Value of Y is");
    Put(Y);
    Z := X + Y;
    New_Line;
    Put("Addition result is");
    Put(Z);
end addition;