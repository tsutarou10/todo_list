import 'package:flutter/material.dart';
import 'package:todo_list/ui/detail_page/detail_page.dart';
import 'package:todo_list/ui/edit_page/edit_page.dart';
import 'package:todo_list/ui/home/home_page.dart';


const initialRoute = '/';

const todoDetailPageRoute = '/detailPage';
const todoEditPageRoute = '/editPage';

Map<String, WidgetBuilder> router = {
  initialRoute: (BuildContext context) => HomePage(title: 'home page'),
  todoDetailPageRoute: (BuildContext context) => TodoDetailPage(title: 'detail page'),
  todoEditPageRoute: (BuildContext context) => TodoEditPage(title: 'edit page'),
};
