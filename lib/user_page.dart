import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'get_user_mobx.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late GetUser _getUser;

  @override
  void initState() {
    _getUser = GetUser();
    _getUser.getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getUser.addUsers();
        },
        child: const Icon(Icons.add),
      ),
      body: Observer(
        name: "get user observer",
        builder: (_) {
          if (_getUser.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (_getUser.hasUsers) {
            return ListView.builder(
              itemCount: _getUser.users.length,
              itemBuilder: (context, index) {
                final UserModel user = _getUser.users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              },
            );
          } else {
            return const Center(
              child: Text(
                'User not found!',
              ),
            );
          }
        },
      ),
    );
  }
}
