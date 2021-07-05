class User {
  dynamic _id;
  String _name;
  String _photoUrl;
  String _email;
  String _password;
  String _role;

  // ignore: unnecessary_getters_setters
  get id => _id;
  // ignore: unnecessary_getters_setters
  set id(value) => _id = value;

  get name => _name;
  set name(value) => _name = value;

  get photoUrl => _photoUrl;
  set photoUrl(value) => _photoUrl = value;

  get email => _email;
  set email(value) => _email = value;

  get password => _password;
  set password(value) => _password = value;

  get role => _role;
  set role(value) => _role = value;

  User(
      {dynamic id,
      String name = '',
      String photoUrl = '',
      String email = '',
      String password = '',
      String role = ''})
      : _id = id,
        _name = name,
        _photoUrl = photoUrl,
        _email = email,
        _password = password,
        _role = role;

  User.copy(User from)
      : this(
            id: from.id,
            name: from.name,
            photoUrl: from.photoUrl,
            email: from.email,
            password: from.password,
            role: from.role);

  User.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            name: json['name'],
            photoUrl: json['photoUrl'],
            email: json['email'],
            role: json['role']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'photoUrl': photoUrl,
        'email': email,
        'role': role,
      };
}
