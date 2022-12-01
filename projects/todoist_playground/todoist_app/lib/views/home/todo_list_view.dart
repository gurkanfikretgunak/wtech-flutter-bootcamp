import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../../constants/image/image_path_constants.dart';
import '../../core/provider/service_provider.dart';
import '../../model/todos_model.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({Key? key}) : super(key: key);

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Consumer<ServiceProvider>(
      builder: (context, value, child) {
        return FutureBuilder<Todos?>(
          future: value.fetchTodos(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${snapshot.data!.date}",
                      style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20),
                    ),
                    const Divider(),
                    SizedBox(
                      height: 80,
                      width: size.width,
                      child: Card(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.circle_outlined, color: Colors.red),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${snapshot.data!.title}",
                                      style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 15)),
                                  Text("${snapshot.data!.body}",
                                      style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 10)),
                                  Text("${snapshot.data!.time} PM",
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(color: Colors.green, fontSize: 15)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Lottie.asset(CustomImagePathConstants.loadingLottiePath),
                ),
              );
            }
          },
        );
      },
    );
  }
}
