class CardModel {
  
  final int id;
  final String name;

  CardModel({this.id, this.name});

  Map toJson() => {
    'id': id,
    'name': name,
  };

  CardModel.fromJson(Map json) :
  id = json['id'],
  name = json['name'];
}
