void main(){
    // list
  final days = ['monday', 'tuesday', "wednesday", "thursday", "friday"];

  // set ~ unique set of elements
  final id = {"001XS", "00XSZ", "00PXS", "00ZSZ", "00FRE"};

  // map(object)
  final person = {
    "Name":"Human",
    "Color":"Black",
    "Age":99,
    "Height":6.8
  };

  print(person);

  //records
  final stuff = auth();
  final code = stuff.passCode;


  // OOP
  // - polymorphism (multiple form) - Allow multiple diff classes to be treated as objects if the same super-class
  //      - poly - multiple
  
}


  ({ String id,  String passCode, bool? isAive}) auth (){
    return (isAive: false, passCode: "22312", id: "DXQ42KWG64");
  }