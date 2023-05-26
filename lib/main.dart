import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_4/provider/app_provider.dart';
import 'package:provider_demo_4/screens/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppProvider(),
      child: MaterialApp(
        title: 'Provider API Call Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    ),
  );
}
