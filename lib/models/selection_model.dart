class SelectionModel{

  SelectionModel({this.name,this.price});

  String name;
  String price;
  bool isSelected=false;

  void toggleSelected(){
    isSelected=!isSelected;
  }

}