```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  int get myVariable => _myVariable ?? 0;

  void set myVariable(int? value) {
    _myVariable = value; //Setter to update the internal variable safely
  }
}

void main() {
  MyClass obj = MyClass(null);
  print(obj.myVariable); //Prints 0
  obj.myVariable = 10;
  print(obj.myVariable); //Prints 10
  obj.myVariable = null; //Use the setter to set the variable to null
  print(obj.myVariable); //Prints 0, as expected now because we use the setter
}
```