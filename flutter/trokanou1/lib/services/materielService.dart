


import 'package:trokannou/database/repository.dart';

class MaterielService {
  late Repository _repository;

  MaterielService() {
    _repository = Repository();
  }




  //Enrigistrer un Contact


  //Recuperer tous les contacts

  realAllProduits() async {
    return await _repository.readUsager('materielService');
  }
}