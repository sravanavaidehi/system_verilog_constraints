class ex;
  rand bit [4:0] a[$];
  rand bit [4:0] b[$];
  constraint pattern{a.size() == 10;
                     b.size() == 10;}
                     
  constraint values{foreach(a[i]){
    foreach(b[j]){
      a[i] != b[j];
    }
  }
  }
endclass
    
               
module tb;
  initial begin
    ex e = new();
    e.randomize();
    $write("\n pattern a : %p \n b = %p",e.a,e.b);
  end
endmodule              
