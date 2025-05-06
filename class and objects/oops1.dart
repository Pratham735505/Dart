class A {
  int? a=1;
  A(this.a);
  A.hello( int b){
    a=b;
  }
  
  int rec(int n){
    if(n==1) return 1;
    return n*rec(n-1);
  }
}


class B extends A{
  B(){

  }
  void b(int n){
    print(rec(n));
    print(a);
  }
}



  void main(){
    var v =B();
    v.b(5);
    assert(v.a==0);
    print("assert did not work");
  }



