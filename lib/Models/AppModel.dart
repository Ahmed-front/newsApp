class AppModel{
   List data;
    AppModel({required this.data});

  factory AppModel.fromjson(Map<String,dynamic>json){
      return AppModel(data: json["articles"]);
  }
}