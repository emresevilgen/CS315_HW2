// This example is appropriate for the homework because
// it tests everything about the four issues
void main(){

  // Optional positional parameters with [] 
  // Always last in the parameter list
  // Default value is null unless default value provided
  foo1(a, [b, c= "formal c"]) {
      if (a != null)
        print("a: " + a); 
      if (b != null)
        print("b: " + b);
      if (c != null)
        print("c: " + c);
  }
  // Error: Too many positional arguments: 3 allowed, but 4 found.
  // foo("actual a", "actual b","actual c", "actual d") 
  print("Foo1:");
  foo1("actual a", "actual b","actual c");
  print("----------");
  print("Foo1:");
  foo1("actual a", "actual b");
  print("----------");
  print("Foo1:");
  foo1("actual a", "actual c");
  print("----------");
  print("Foo1:");
  foo1("actual a");
  print("----------");
  // Error: Too few positional arguments: 1 required, 0 given.
  // foo(); 

  // Optional named parameters with {} 
  // Always last in the parameter list
  // Default value is null unless default value provided
  foo2(a, {b, c= "formal c"}) {
      if (a != null)
        print("a: " + a); 
      if (b != null)
        print("b: " + b);
      if (c != null)
        print("c: " + c);
  }
  print("Foo2:");
  foo2("actual a", b: "actual b", c: "actual c");
  print("----------");
  print("Foo2:");
  foo2("actual a", b: "actual b");
  print("----------");
  print("Foo2:");
  foo2("actual a", c: "actual c");
  print("----------");
  print("Foo2:");
  foo2("actual a");
  print("----------");
  // Error: Too few positional arguments: 1 required, 0 given.
  // foo2(); 


  // Variable Number of Actual Parameters cannot be used directly
  // It can be done by list or map
  foo3(List list) {      
    for(var i = 0; i < list.length ; i++) {
      print(i.toString() + ": " + list[i]);
    }
  }
  print("Foo3:");
  foo3(["actual a", "actual b", "actual c"]);
  print("----------");

  // Primitives are passed by value, Objects are passed by reference
  foo4(List a, int b){
    a.add("b of foo");
    b++;
  }
  
  List a = ["a of main"]; 
  int b = 1;

  print("Before foo4: a = " + a.toString() + ", b = " + b.toString());
  foo4(a, b);
  print("After foo4: a = " + a.toString() + ", b = " + b.toString());
}