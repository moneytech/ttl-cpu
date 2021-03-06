module ttl7483(Out, Kout, A, B, Kin);
    output [3:0] Out;
    output Kout;
    input [3:0] A;
    input [3:0] B;
    input Kin;

    // Motorola 74LS83
    // C0->C4 propagation #(0:15:22)
    assign #(0:16:24) {Kout,Out} = A + B + Kin;
endmodule
