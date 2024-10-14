class ex;
  rand bit [3:0] a[30]; // single variable representing the first number
  constraint sum_even {foreach(a[i]){
    if(i>=2){
      (a[i] + (a[i-1]) + (a[i-2])) % 2 == 0;
    }}
  }
endclass

module tb;
  initial begin
    ex e = new();
    e.randomize(); 
      $display("First number: a = %0p", e.a);
  end
endmodule
