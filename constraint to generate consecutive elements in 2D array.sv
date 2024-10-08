class ex;
  rand int a[5][5];
  
  constraint pattern{foreach(a[i]){
    foreach(a[i][j]){
      a[i][j] == (i * 5) + j;  // since it is 5x5 matrix  
      
    }
  }
  }
  
endclass
               
module tb;
  initial begin
    ex e = new();
    e.randomize();
    $write("\n pattern : %p",e.a);
  end
endmodule              
