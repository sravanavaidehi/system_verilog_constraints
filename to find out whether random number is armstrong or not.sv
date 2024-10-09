class ex;
  rand bit [9:0]a;
  int sum = 0;
  int temp = 0;
  function void display();
    int num = a;
    $display("num=%d",num);
    sum = 0;
    for(int i = 0 ; i < 3; i++) begin
    temp = num % 10; //taking reminder to seperate digits
    sum += temp**3;// cubing each digits and adding 
    num = num/10; // taking Quotient for further taking the digits 
    
    end
    if(a == sum)
      $display("number is armstrong");
  endfunction
                            
endclass
    
               
module tb;
  initial begin
     
    repeat(10) begin
    ex e = new();
    e.randomize();
   e.display();
 end
   
  end
endmodule          
