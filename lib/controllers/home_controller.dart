import 'package:flutter/material.dart';
import 'package:project01/models/post_model.dart';
import 'package:project01/repositories/home_repostory.dart';

class HomeController {
  final HomeRepository _homeRepository;
  HomeController(this._homeRepository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await _homeRepository.getList();
  }
}
