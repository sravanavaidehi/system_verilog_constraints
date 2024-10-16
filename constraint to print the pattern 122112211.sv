class ex;
  rand int a[13];
  
  constraint pat{foreach(a[i]){
    
    if(i % 4 == 0 || i % 4 == 3)  a[i] == 1;
    else a[i] == 2;
      }}

endclass

module tb;
  initial begin
    ex e = new();
    e.randomize();
    $display("pattern:%0p",e.a);
  end
endmodule
