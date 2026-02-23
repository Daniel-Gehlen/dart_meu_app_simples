import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dart_meu_app_simples/presentation/controllers/user_controller.dart';
import 'package:dart_meu_app_simples/presentation/pages/user_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UserController>();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: controller.fetchUsers,
          ),
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        
        if (controller.errorMessage.isNotEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Erro: ${controller.errorMessage.value}',
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: controller.fetchUsers,
                  child: const Text('Tentar novamente'),
                ),
              ],
            ),
          );
        }
        
        if (controller.users.isEmpty) {
          return const Center(
            child: Text('Nenhum usuário encontrado'),
          );
        }
        
        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: controller.users.length,
          itemBuilder: (context, index) {
            final user = controller.users[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue.shade100,
                  child: Text(
                    user.id.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  user.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.email),
                    Text(user.phone),
                  ],
                ),
                isThreeLine: true,
                onTap: () {
                  Get.to(() => UserDetailPage(user: user));
                },
              ),
            );
          },
        );
      }),
    );
  }
}
