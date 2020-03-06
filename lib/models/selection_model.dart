class SelectionModel{

  SelectionModel({this.name,this.price});

  String name;
  int price;
  bool isSelected=false;

  void toggleSelected(){
    isSelected = !isSelected;
  }

}