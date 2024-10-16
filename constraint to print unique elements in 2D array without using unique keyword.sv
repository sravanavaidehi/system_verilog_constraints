class ex;
  rand int a[5][5];
  
  constraint pattern{foreach(a[i]){
    foreach(a[i][j]){
      a[i][j] == ((i * 5) + j);
    }
  }
  }
  
  function void display();
    foreach(a[i]) begin
        a[i].shuffle();
    end
  endfunction 
  
endclass
         
module tb;
  initial begin
    ex e = new();
    e.randomize();
    e.display();
    $write("\n pattern : %p",e.a);
  end
endmodule 
