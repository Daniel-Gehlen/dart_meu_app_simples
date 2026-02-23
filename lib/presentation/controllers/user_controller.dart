import 'package:get/get.dart';
import 'package:dart_meu_app_simples/domain/entities/user.dart';
import 'package:dart_meu_app_simples/domain/usecases/get_users.dart';

class UserController extends GetxController {
  final GetUsers getUsers;
  
  UserController({required this.getUsers});
  
  var users = <User>[].obs;
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  
  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }
  
  Future<void> fetchUsers() async {
    isLoading.value = true;
    errorMessage.value = '';
    
    final result = await getUsers();
    
    result.fold(
      (failure) => errorMessage.value = failure.message,
      (userList) => users.value = userList,
    );
    
    isLoading.value = false;
  }
}
