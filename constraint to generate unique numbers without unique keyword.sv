class ex;
  rand bit [4:0]a;
  int que[$:15];
  
  constraint pattern{!(a inside {que});}
                                    
 function void post_randomize();
   que.push_front(a);  
 endfunction
      endclass

module tb;
  initial begin
   repeat(10) begin
    ex e = new();
    e.randomize();
    $write("\n pattern : %p", e.que);
   end
    
  end
endmodule
