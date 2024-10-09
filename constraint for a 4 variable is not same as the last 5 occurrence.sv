class ex;
  rand bit [4:0] a;
  int que[$:15];
  constraint pattern{!(a inside{que});}
  function void post_randomize();
    que.push_front(a);
    $display("\n pattern a : %h",a);
    if(que.size == 6)
        que.pop_back();
     $display("\n previous 5 occurance  : %p",que);
 
  endfunction
                            
endclass
    
               
module tb;
  initial begin
     ex e = new();
  repeat(11) begin
    e.randomize();
 end
   
  end
endmodule     
