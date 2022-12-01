import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/views/auth/pick_theme_page_view.dart';
import 'package:todoist_app/views/settings/settings_app.dart';
import '../../constants/text/home_page_contants.dart';
import '../../core/provider/service_provider.dart';
import '../../widgets/custom_methods.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({Key? key}) : super(key: key);

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CustomHomeText.todayText),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          IconButton(
              onPressed: () {
                CustomMethods.settingModalBottomSheet(context, const SettingsApp());
              },
              icon: const Icon(Icons.settings)),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            child: Consumer<ServiceProvider>(
              builder: (context, value, child) {
                return ListView.builder(
                  itemCount: value.todosUser!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            value.todosUser![index],
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CustomMethods.settingModalBottomSheet(context, const ThemeSwitcher());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
