import 'package:get_storage/get_storage.dart';

class TLocalStorage{

  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage(){
    return _instance;
  }
  TLocalStorage._internal();

  final _storage = GetStorage();

  //Generic method to save data to local storage
  Future<void> saveData(String key, dynamic value) async {
    await _storage.write(key, value);
  }
//Generic method to read data from local storage
  T? readData<T>(String key) {
    return _storage.read(key);
  }
//Generic method to remove data from local storage
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }
//Generic method to clear all data from local storage
  Future<void> clearAll() async {
    await _storage.erase();
  }



}