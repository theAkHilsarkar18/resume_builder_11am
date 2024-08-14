class User {
  late int id;
  late String name, email, photo;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.photo,
  });

  factory User.fromMap(Map m1) {
    return User(
      id: m1['id'],
      name: m1['name'],
      email: m1['email'],
      photo: m1['photo'],
    );
  }
}

// CONTAINER - TO CREATE CUSTOM SHAPES
// PADDING - TO GIVE PADDING(SPACE) TO ANY WIDGET
// SIZEDBOX - TO CREATE INVISIBLE BOX - SIZE - SPACE
// SPACER -
// RESUME APP --> TEXT FIELD WIDGET : TO HANDLE USER INPUT IN TEXT

// RESUME BUILDER APP
// PERSONAL DETAILS - NAME,EMAIL,PHONE,PHOTO,ADDRESS,DESIGNATION
// EDUCATION DETAILS - DEGREE,SCHOOL,CERTIFICATE
// SKILLS & HOBBY - C,C++,FLUTTER,SINGING,DANCING,,,
// LANGUAGES -
// EXPERIENCE -
// PROJECT -
// ABOUT ME
// OBJECTIVE

// PDF -> SAVE & SHARE
// INVOICE-BILL GENERATOR APP
// PRODUCTS -> BILL