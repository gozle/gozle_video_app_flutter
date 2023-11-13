class User {
  final int? id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phoneNumber;
  final String? avatar;
  final String? source;
  final String? createdAt;
  final String? updatedAt;

  User({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.avatar,
    this.source,
    this.createdAt,
    this.updatedAt,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        username = json['username'] as String?,
        firstName = json['first_name'] as String?,
        lastName = json['last_name'] as String?,
        email = json['email'],
        phoneNumber = json['phone_number'] as String?,
        avatar = json['avatar'] as String?,
        source = json['source'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'phone_number': phoneNumber,
        'avatar': avatar,
        'source': source,
        'created_at': createdAt,
        'updated_at': updatedAt
      };
}
