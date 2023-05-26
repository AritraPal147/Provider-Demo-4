import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_4/provider/app_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<AppProvider>(context).getAllData();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home Page')),
      ),
      body: Consumer<AppProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final dataList = value.data;
            return ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                final data = dataList[index];
                return ListTile(
                  leading: SizedBox(
                    child: Image.network(data.bannerImage),
                  ),
                  title: Text(data.title),
                  subtitle: Text(data.description),
                );
              },
            );
          }
        },
      ),
    );
  }
}