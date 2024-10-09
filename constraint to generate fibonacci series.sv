class ex;
  rand  int a[20];
  constraint pattern{foreach(a[i]){
    if(i == 0) a[i] == 0;
    else if(i == 1) a[i] == 1;
    else a[i] == a[i-1] + a[i-2];
    
    }
                    }
endclass
            
module tb;
  initial begin
    ex e = new();
    e.randomize();
     $write("\n pattern a : %p",e.a);
  end
endmodule  
