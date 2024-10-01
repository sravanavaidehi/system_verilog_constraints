class ex;
  rand int a[6];

  constraint pattern{foreach(a[i]){
    if(i%2 == 0) 
      a[i] == 20 + (i*5);
    else 
      a[i] == a[i-1] + (7-(i/2)); 
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
