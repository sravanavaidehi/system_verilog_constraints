class ex;
  rand bit  a[10];   
  
  constraint pattern{foreach(a[i]){
    if(i%4 == 0 || i%4 == 1) a[i] == 0;
    else a[i] == 1;
  }
                    }
endclass

module tb;
  initial begin
    ex e = new();
    e.randomize();
      $display("pattern: a = %0p",e.a);
  end
endmodule
