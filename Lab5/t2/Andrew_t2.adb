with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure main is
type date is record
   day : Integer;
   month : Integer;
   year : Integer;
end record;
type people is record
   name : Unbounded_String;
   bDay : date;
end record;


people_array : array (1..5) of people;


procedure Display_String_Info(S : Unbounded_String)
is
begin
   Put_Line ("String: " & To_String (S));
   Put_Line ("String Length: " & Integer'Image (Length (S)));
end Display_String_Info;

begin
   people_array(1).name := To_Unbounded_String ("Andrew");
   people_array(1).bDay.day := 5;
   people_array(1).bDay.month := 6;
   people_array(1).bDay.year := 2000;

   people_array(2).name := To_Unbounded_String ("Bob");
   people_array(2).bDay.day := 10;
   people_array(2).bDay.month := 12;
   people_array(2).bDay.year := 1995;

   people_array(3).name := To_Unbounded_String ("Charlie");
   people_array(3).bDay.day := 15;
   people_array(3).bDay.month := 3;
   people_array(3).bDay.year := 1990;

   people_array(4).name := To_Unbounded_String ("Diana");
   people_array(4).bDay.day := 20;
   people_array(4).bDay.month := 9;
   people_array(4).bDay.year := 1970;

   people_array(5).name := To_Unbounded_String ("Eve");
   people_array(5).bDay.day := 25;
   people_array(5).bDay.month := 1;
   people_array(5).bDay.year := 1981;

   

   OuterLoop : 
   for I in 1980..2026 loop
      for J in people_array'Range loop
         if people_array(J).bDay.year = I then
            for K in 1..12 loop
               if people_array(J).bDay.month = K then
                  for L in 1..31 loop
                     if people_array(J).bDay.day = L then
                        Display_String_Info (people_array(j).name);
                        Put(people_array(J).bDay.day);
                        Put("/");
                        Put(people_array(J).bDay.month);
                        Put("/");
                        Put(people_array(J).bDay.year);
                        New_Line;
                        exit OuterLoop;
                     end if;
                  end loop;
               end if;
            end loop;
         end if;
      end loop;
   end loop OuterLoop;
   


end main;
