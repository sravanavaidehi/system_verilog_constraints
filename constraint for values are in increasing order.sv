class ex;
  rand bit [4:0] a[];
  
  constraint pattern{a.size()>5 ;a.size() <10;
                     foreach(a[i]){
                       if(i>0) a[i] > a[i-1];
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
