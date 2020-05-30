
import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

class ArchiveProvider with ChangeNotifier{

  List<List<SelectionModel>> _archivedCombos=[];


  get archivedCombos{
    return _archivedCombos;
  }

  get archivedCombosLength{
    return _archivedCombos.length;
  }

  void addCombo(List<SelectionModel> selection){
    _archivedCombos.add(selection);
  }

  void removeCombo(int index){
    _archivedCombos.removeAt(index);
  }

  bool checkHasCombo(int index){
    bool hasComboList=_archivedCombos.contains(index);
    return hasComboList;
  }

  List clearArchivedCombos (){
    return _archivedCombos=[];
  }

}