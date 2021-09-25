import 'package:flutter/material.dart';
import 'package:todo_list/ui/home/home_page.dart';


const initialRoute = '/';
Map<String, WidgetBuilder> router = {
	'/': (BuildContext context) => HomePage(title: 'home page'),
	'editPage': (BuildContext context) => HomePage(title: 'home page'),
};
