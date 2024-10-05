class ex;
  rand bit [31:0] a;
  
  constraint pattern{ foreach(a[i]){
    if(i == 12)
    a[12] inside{0,1};
  else
    a[i] == 0;
  }
                    }   
      endclass
                     
module tb;
  initial begin
    repeat(10) begin
    ex e = new();
    e.randomize();
      $write("\npattern : %b", e.a);
    end
  end
endmodule
           
