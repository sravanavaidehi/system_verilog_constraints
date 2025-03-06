class ex;
  
  rand int a[6];
  int b[$];
  
  constraint k{foreach(a[i]){
    a[i] == i;}
              }
  function display();
    for(int i = 1; i == a[i]; i++) begin
      for(int j = 1; j <= i; j++) begin
        b.push_back(i);
      end
   end
  endfunction
endclass
               
               
module tb;
   initial begin
     ex e = new();
     e.randomize();
     e.display();
     $display("a = %0p",e.b);
   end
endmodule
               
