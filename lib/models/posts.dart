class Posts {
  String _email;
  String _postBody;
  String _postPhoto;

  Posts({String email = '', String postBody = '', String postPhoto = ''})
      : _email = email,
        _postBody = postBody,
        _postPhoto = postPhoto;

  get email => _email;
  set email(value) => _email = value;

  get postBody => _postBody;
  set postBody(value) => _postBody = value;

  get postPhoto => _postPhoto;
  set postPhoto(value) => _postPhoto = value;

  Posts.fromJson(Map<String, dynamic> json)
      : this(
          email: json['email'],
          postBody: json['postBody'],
          postPhoto: json['postPhoto'],
        );

  Map<String, dynamic> toJson() =>
      {'email': email, 'postBody': postBody, 'postPhoto': postPhoto};
}
