class UserModel {
  int id;
  String email;
  List<Null> permissions;
  String lastLogin;
  String firstName;
  String lastName;
  String createdAt;
  String updatedAt;
  String deletedAt;
  String bio;
  String gender;
  String dob;
  String pic;
  String country;
  String userState;
  String city;
  String address;
  String postal;
  String password;
  int outfitterId;
  String fullName;
  bool isGoldMember;

  UserModel({
    this.id,
    this.email,
    this.permissions,
    this.lastLogin,
    this.firstName,
    this.lastName,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.bio,
    this.gender,
    this.dob,
    this.pic,
    this.country,
    this.userState,
    this.city,
    this.address,
    this.postal,
    this.outfitterId,
    this.fullName,
    this.isGoldMember,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    // if (json['permissions'] != null) {
    //   permissions = new List<Null>();
    //   json['permissions'].forEach((v) {
    //     permissions.add(new Null.fromJson(v));
    //   });
    // }
    lastLogin = json['last_login'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    bio = json['bio'];
    gender = json['gender'];
    dob = json['dob'];
    pic = json['avatar_full_path'];
    country = json['country'];
    userState = json['user_state'];
    city = json['city'];
    address = json['address'];
    postal = json['postal'];
    outfitterId = json['outfitter_id'];
    fullName = json['full_name'];
    isGoldMember = json['is_gold_member'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.id;
    data['email'] = this.email;
    // if (this.permissions != null) {
    //   data['permissions'] = this.permissions.map((v) => v.toJson()).toList();
    // }
    data['last_login'] = this.lastLogin;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['bio'] = this.bio;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['pic'] = this.pic;
    data['country'] = this.country;
    data['user_state'] = this.userState;
    data['city'] = this.city;
    data['address'] = this.address;
    data['postal'] = this.postal;
    data['outfitter_id'] = this.outfitterId;
    data['full_name'] = this.fullName;
    data['is_gold_member'] = this.isGoldMember;
    return data;
  }
}
