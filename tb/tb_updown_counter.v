module sync_counttb(

    );
    reg clk,rst_n,L,ud;
    wire [2:0]count;
    wire full_flag;
    
    sync_count dut(.clk(clk),.rst_n(rst_n),.L(L),.ud(ud),.count(count),.full_flag(full_flag));
    
    initial begin
        clk = 1'b1;
        forever #10 clk=~clk;
    end
    
    initial begin
        rst_n=0;
        repeat(2)@(posedge clk);
        rst_n=1;
    end
    
    
    initial begin
       
        ud=0;L=0;
        /*ud=1;#20;L=0;#20;ud=0;#40;    
        ud=1;#40;
        L=1;#30;
        #140;
        ud=0;#160;
        */
        @(posedge rst_n);
        @(posedge clk);
        ud=0;L=0;
        @(posedge clk);
        ud=1;L=0;
        repeat(8)@(posedge clk);
        ud=0;L=0;
        @(posedge clk);
//        ud=1;L=1;
//        @(posedge clk);
//        ud=0;L=0;
//        @(posedge clk);
//        ud=0;L=1;
//        @(posedge clk);
//        ud=1;L=0;
//        @(posedge clk);
//        ud=1;L=1;
        
        
        repeat(100)@(posedge clk);
        
        $finish;
    end
    
endmodule
