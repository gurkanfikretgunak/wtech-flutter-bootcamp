void main()
{
    int a = 2;
    int b = 3;
  

    //Arithmetic operators
    
    // Adding a and b
    var c = a + b;
    print("Sum of a and b is $c");
 
    // Subtracting a and b
    var d = a - b;
    print("The difference between a and b is $d");
 
    // Using unary minus
    var e = -d; 
    print("The negation of difference between a and b is $e");
 
    // Multiplication of a and b
    var f = a * b;
    print("The product of a and b is $f");
 
    // Division of a and b
    var g = b / a;
    print("The quotient of a and b is $g");

 
    // Remainder of a and b
    var i = b % a;
    print("The remainder of a and b is $i");



    //Equality and relational operators

     // Greater between a and b
    var h = a > b;
    print("a is greater than b is $h");
 
    // Less than or equal to between a and b
    var l = a <= b;
    print("a is smaller than b is $l");
 
    // Equality between a and b
    var m = b == a;
    print("a and b are equal is $m");
 
    // Unequality between a and b
    var n = b != a;
    print("a and b are not equal is $n");


    //Bitwise operators

    // Performing Bitwise AND on a and b
    var p = a & b;
    print(p);
 
    // Performing Bitwise OR on a and b
    var r = a | b;
    print(r);
 
    // Performing Bitwise XOR on a and b
    var t = a ^ b;
    print(t);
 
    // Performing Bitwise NOT on a
    var v = ~a;
    print(v);
 
    // Performing left shift on a
    var y = a << b;
    print(y);
 
    // Performing right shift on a
    var z = a >> b;
    print(z);

}