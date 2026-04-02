package body Exchange is

procedure Exchange(X,Y: in out item) is
   T: item;
   begin
      T := X;
      X := Y;
      Y := T;
   end Exchange;

end Exchange;