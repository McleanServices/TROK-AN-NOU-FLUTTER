import '../database/repository.dart';
import '../model/usager.dart';

class usagerService {
  late Repository _repository;
  usagerService() {
    _repository = Repository();
  }

  saveUsager(Usager usager) async {
    return await _repository.insertUsager('USAGER', usager.usagerMap());
  }
}
