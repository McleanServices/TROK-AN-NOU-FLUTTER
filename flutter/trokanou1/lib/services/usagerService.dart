import 'package:trokannou/database/repository.dart';
import 'package:trokannou/model/usager.dart';

class UsagerService {
  late Repository _repository;
  UsagerService() {
    _repository = Repository();
  }

  saveUsager(Usager usager) async {
    return await _repository.insertUsager('USAGER', usager.usagerMap());
  }

  readAllUsager() async {
    return await _repository.readUsager('USAGER');
  }
}
