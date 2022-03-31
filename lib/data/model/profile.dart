class Profile {
  late int id;
  late String email,first_name , last_name, image;
  Profile({required this.id,required this.email,required this.first_name, required this.last_name,required this.image});

  Profile.fromJson(Map<String , dynamic> json){
    id = json["id"];
    email = json["email"];
    first_name = json["first_name"];
    last_name = json["last_name"];
    image = json["avatar"];
  }

}