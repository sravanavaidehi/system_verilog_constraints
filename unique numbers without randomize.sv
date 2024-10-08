class ex;
  int a[20];
  
  function display();
    for(int i = 0; i < 20; i++) begin
      a[i] = i;
    end
   a.shuffle();
  endfunction 
  
endclass
         
module tb;
  initial begin
    ex e = new();
    e.display();
    $write("\n pattern : %p",e.a);
  end
endmodule 
