module halfadder(a,b,sum,carry);
    input a;
    input b;
    output sum;
    output carry;
    assign sum=a ^ b; // a xor b
    assign carry = a & b; // a and b
endmodule