class ex;
  rand bit [4:0] a[2][4];
  
  constraint pattern{foreach(a[i]){
    foreach(a[i][j]){
      if(i < 1 && j < 5) a[i][j]%2 == 0; //// Even numbers in the first row
      else a[i][j]%2 != 0; // Odd numbers in the second row
                     }
                    }
  }
      endclass       
module tb;
  initial begin
    ex e = new();
    e.randomize();
      $write("\n pattern : %p", e.a);
    end
endmodule
