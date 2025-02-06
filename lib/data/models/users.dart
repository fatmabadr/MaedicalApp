class User{
  //late int id;
  late String Fname;
 // late List<dynamic> hair;

User.fromJson(Map<String,dynamic> json){
  //id=json['id'];
  Fname=json['name'];
  //hair=json['hair'];

}
}