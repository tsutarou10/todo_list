import 'package:flutter/material.dart';
import 'package:todo_list/ui/home/home_page.dart';


const initialRoute = '/';

const editPageRoute = 'editPage';

Map<String, WidgetBuilder> router = {
	initialRoute: (BuildContext context) => HomePage(title: 'home page'),
};