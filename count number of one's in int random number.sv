class ex;
  rand int x;
  int count;  //Variable to store the count of 1's in 'x'
  
  function void post_randomize();
    count = 0;
    for(int i = 0; i < $size(x); i++) begin  // Iterate through all bits of 'x' using a for loop
      if(x[i] == 1)  
        count = count + 1;  // If the ith bit of 'x' is 1, increment the count
      else
        count = count;
    end
  endfunction
endclass

module tb;
  initial begin
    repeat(10) begin
    ex e = new();
    e.randomize();
    $display("x = %b count = %d", e.x,e.count);
  end
  end
endmodule
        
