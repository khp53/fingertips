class Organization {
  dynamic
      _id; // Use dynamic type because json-server id is int and firestore id is string
  String _name;
  String _photoUrl;
  String _email;
  String _password;
  String _coverPhotoUrl;
  String _tagLine;
  String _address;
  String _phoneNumber;
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

  get coverPhotoUrl => _coverPhotoUrl;
  set coverPhotoUrl(value) => _coverPhotoUrl = value;

  get tagLine => _tagLine;
  set tagLine(value) => _tagLine = value;

  get address => _address;
  set address(value) => _address = value;

  get phoneNumber => _phoneNumber;
  set phoneNumber(value) => _phoneNumber = value;

  get role => _role;
  set role(value) => _role = value;

  Organization(
      {dynamic id,
      String name = '',
      String photoUrl = '',
      String email = '',
      String password = '',
      String coverPhotoUrl = '',
      String tagLine = '',
      String address = '',
      String phoneNumber = '',
      String role = ''})
      : _id = id,
        _name = name,
        _photoUrl = photoUrl,
        _email = email,
        _password = password,
        _coverPhotoUrl = coverPhotoUrl,
        _tagLine = tagLine,
        _address = address,
        _phoneNumber = phoneNumber,
        _role = role;

  Organization.copy(Organization from)
      : this(
            id: from.id,
            name: from.name,
            photoUrl: from.photoUrl,
            email: from.email,
            password: from.password,
            coverPhotoUrl: from.coverPhotoUrl,
            tagLine: from.tagLine,
            address: from.address,
            phoneNumber: from.phoneNumber,
            role: from.role);

  Organization.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            name: json['name'],
            photoUrl: json['photoUrl'],
            email: json['email'],
            password: json['password'],
            coverPhotoUrl: json['coverPhotoUrl'],
            tagLine: json['tagLine'],
            address: json['address'],
            phoneNumber: json['phoneNumber'],
            role: json['role']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'photoUrl': photoUrl,
        'email': email,
        'password': password,
        'coverPhotoUrl': coverPhotoUrl,
        'tagLine': tagLine,
        'address': address,
        'phoneNumber': phoneNumber,
        'role': role
      };
}
