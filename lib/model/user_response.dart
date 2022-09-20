



class UserResponse {
  final String data;

  UserResponse({
    required this.data,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {

    return UserResponse(data: json['data'].toString());
  }
}