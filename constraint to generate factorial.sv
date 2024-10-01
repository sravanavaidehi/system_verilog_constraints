class ex;
  rand int a[10];
  
  constraint pattern{foreach(a[i]){
    if(i==0) a[i] == 1;
    else if(a[i]%2 == 0)
      a[i] == i * a[i-1];
    else
      a[i] == i * a[i-1];
      
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
