import 'package:flutter/material.dart';
import 'package:project01/controllers/home_controller.dart';
import 'package:project01/models/post_model.dart';
import 'package:project01/repositories/home_repository_mock.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeMock());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, idx) => ListTile(
              title: Text(
                list[idx].title,
              ),
            ),
          );
        },
      ),
    );
  }
}
