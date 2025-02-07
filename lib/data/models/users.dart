class User{
  //late int id;
  late String Fname;


User.fromJson(Map<String,dynamic> json){
  //id=json['id'];
  Fname=json['name'];


}
}