
class UserModel {
  final String id;
  final String userName;
  final String email;
  final String password;
  bool isAdmin;

  UserModel({
    this.id = '',
    this.userName = '',
    this.email = '',
    this.password = '',
    this.isAdmin = false,
  });

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      id: json['id'] ?? '',
      userName: json['userName'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );
  }

  Map<String, dynamic> toJson(UserModel user){
    return{
      'userName': user.userName,
      'email': user.email,
      'password': user.password,
    };
  }
}