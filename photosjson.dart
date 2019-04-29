/* import 'package:json_annotation/json_annotation.dart';

part 'listphotos.g.dart';

@JsonSerializable()

class Photo{
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo({this.id,this.url,this.title,this.thumbnailUrl});

  factory Photo.fromJson(Map<String,dynamic> json) => _$PhotoFromJson(json);
  Map<String,dynamic> toJson = _$PhotoToJson(this);

}

class ListPhoto{
  List<Photo> photos;
  
  ListPhoto({this.photos});

  
}

 */