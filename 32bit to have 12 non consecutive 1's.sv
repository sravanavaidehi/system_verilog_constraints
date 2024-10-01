//write a constraint for 32bit to have 12 non consecutive 1's

class ex;
  rand bit [31:0] a;

  constraint pattern{$countones(a) == 12;}
 endclass
                                  
module tb;
  initial begin
    repeat(10) begin
    ex e = new();
    e.randomize();
      $write("\n\pattern : %b", e.a);
    end
  end
endmodule
