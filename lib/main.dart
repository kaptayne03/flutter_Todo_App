import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/views/todo_home_view.dart';

main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoHomeView(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF0F4FC),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Color(0xff5F6D95)),
          elevation: 0,
          backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Color(0xff5F6D95),
        fontSize: 30)
           )
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Color(0xffFFFFFF)),
            elevation: 0,
            backgroundColor: Colors.black38,
            titleTextStyle: TextStyle(color: Color(0xffFFFFFF), fontSize: 30)
            )
            ),
            themeMode: ThemeMode.light,
    ));
}