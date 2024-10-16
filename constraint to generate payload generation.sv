class ex;
  rand bit [7:0] a[];
  
  constraint pat{a.size() inside{[11:22]};
                 foreach(a[i]){
                   if(i > 0)  a[i] == a[i-1] + 2;
                 }
                }
endclass

module tb;
  initial begin
    repeat(10) begin
    ex e = new();
    e.randomize();
    $display("pattern:%0p",e.a);
  end
  end
endmodule
