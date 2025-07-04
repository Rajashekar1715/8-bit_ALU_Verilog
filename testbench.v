module testbench;

    reg [2:0] sel;
    reg [7:0] a, b;
    wire [7:0] result;

    alu uut (.sel(sel), .a(a), .b(b), .result(result));

    initial begin
        a = 8'b00001111;  // 15
        b = 8'b00000011;  // 3

        $display("A = %b (%0d), B = %b (%0d)", a, a, b, b);

        sel = 3'b000; #10; $display("ADD      : %b (%0d)", result, result);
        sel = 3'b001; #10; $display("SUB      : %b (%0d)", result, result);
        sel = 3'b010; #10; $display("AND      : %b (%0d)", result, result);
        sel = 3'b011; #10; $display("OR       : %b (%0d)", result, result);
        sel = 3'b100; #10; $display("XOR      : %b (%0d)", result, result);
        sel = 3'b101; #10; $display("SHIFT L  : %b (%0d)", result, result);
        sel = 3'b110; #10; $display("SHIFT R  : %b (%0d)", result, result);
        sel = 3'b111; #10; $display("PASS A   : %b (%0d)", result, result);

        $finish;
    end

endmodule
