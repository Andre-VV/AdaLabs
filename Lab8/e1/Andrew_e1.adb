with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Show_Simple_Precondition is
   procedure DB_Entry (Name: String; Age : Natural)
      with Pre => Name'Length > 0 is
      NameLength : Integer := Name'Length;
      begin
         Put_Line("Inserting record: " & Name & ",Age:" & Integer'Image(Age) & "." & Integer'Image(NameLength));
      end DB_Entry;
begin
   DB_Entry("John", 30);
   --Precondition will fail for the following call
   DB_Entry("", 25);
end Show_Simple_Precondition;