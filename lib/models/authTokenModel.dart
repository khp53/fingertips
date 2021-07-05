class AuthTokenModel {
  String _kind;
  String _localId;
  String _email;
  String _idToken;
  String _refreshToken;

  AuthTokenModel(
      {String kind = '',
      String localId = '',
      String email = '',
      String idToken = '',
      String refreshToken = ''})
      : _kind = kind,
        _localId = localId,
        _email = email,
        _idToken = idToken,
        _refreshToken = refreshToken;

  get kind => _kind;
  set kind(value) => _kind = value;

  get localId => _localId;
  set localId(value) => _localId = value;

  get email => _email;
  set email(value) => _email = value;

  get idToken => _idToken;
  set idToken(value) => _idToken = value;

  get refreshToken => _refreshToken;
  set refreshToken(value) => _refreshToken = value;

  AuthTokenModel.fromJson(Map<String, dynamic> json)
      : this(
            kind: json['kind'],
            localId: json['localId'],
            email: json['email'],
            idToken: json['idToken'],
            refreshToken: json['refreshToken']);
}
