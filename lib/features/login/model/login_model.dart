class LoginModel {
  Message? message;

  LoginModel({this.message});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message =
        json['message'] != null ? Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message!.toJson();
    }
    return data;
  }
}

class Message {
  String? token;
  String? tokenType;
  String? experiesAt;
  String? success;

  Message({this.token, this.tokenType, this.experiesAt, this.success});

  Message.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    tokenType = json['token_type'];
    experiesAt = json['experies_at'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['token'] = token;
    data['token_type'] = tokenType;
    data['experies_at'] = experiesAt;
    data['success'] = success;
    return data;
  }
}
