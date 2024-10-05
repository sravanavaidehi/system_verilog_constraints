class ex;
  rand bit [4:0] a[10];
  
  constraint pattern{foreach(a[i]){
    if(i%2 == 0 )
      a[i]%2 == 1;
    else
      a[i]%2 == 0;
  }
                    }
      endclass
                     
module tb;
  initial begin
    ex e = new();
    e.randomize();
    $write("pattern : %p", e.a);
  end
endmodule
