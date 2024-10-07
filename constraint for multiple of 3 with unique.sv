class ex;
  rand bit [4:0] a[10];
  
  constraint pattern{unique {a};
                     foreach(a[i]){
    a[i]%3 == 0;
                     
                    }
  }
      endclass
                
module tb;
  initial begin
   repeat(10) begin
    ex e = new();
    e.randomize();
      $write("\n pattern : %p", e.a);
    end
  end
endmodule
           
