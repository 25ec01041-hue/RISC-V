module tb_riscv();

    reg clk;
    reg reset;
    wire [15:0] led;

    // DUT
    top_riscv #(.TICK_COUNT(10)) dut (
        .clk(clk),
        .reset(reset),
        .sw(3'b001),
        .led(led)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz
    end

    // Reset
    initial begin
        reset = 1'b1;
        #100;
        reset = 1'b0;
    end

    // Monitor
    initial begin
        $display("Starting Simulation");
    end

    always @(posedge clk) begin
        if (dut.tick) begin
            $display(
                "PC=%h INST=%h ALU=%h WB=%h",
                dut.pc_current,
                dut.instruction,
                dut.alu_result,
                dut.write_back_data
            );
        end
    end

endmodule