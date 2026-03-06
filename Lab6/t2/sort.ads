package Sort is

   type Arr is array(Integer range <>) of Integer;
   function Selection_Sort (A : Arr) return Arr;
   function Insertion_Sort (A : Arr) return Arr;
   function Bubble_Sort (A : Arr) return Arr;
   

end Sort;