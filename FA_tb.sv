module FA_tb;
    logic a, b, cin;       
    logic sum, cout;       
    
    FA uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("A B Cin | Sum Cout");
        for (int i = 0; i < 8; i++) begin
            {a, b, cin} = i;
            #10; 
            $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        end
        $finish;
    end
endmodule
