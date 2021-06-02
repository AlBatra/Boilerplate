import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Todo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Task {
  final int id;
  final String title;
  final String status;
  final bool favorite;

  Task({this.id, this.title, this.status, this.favorite});
}

class _MyHomePageState extends State<MyHomePage> {
  final tasks= <int, Task>{
    0: Task(
      id: 1,
      title: 'Understand the Flutter ecosystem',
      status: 'in progress',
      favorite: false,
    ),
    1: Task(
      id: 2,
      title: 'Explore the potential of using Flutter SDK',
      status: 'in progress',
      favorite: true,
    ),
    2: Task(
      id: 3,
      title: 'Build the first Flutter app',
      status: 'in progress',
      favorite: false,
    ),
    3: Task(
      id: 4,
      title: 'Contribute in the Open Source community',
      status: 'complete',
      favorite: false,
    ),
  };

  void addNewTask() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${tasks[index].title}'),
              leading: TextButton(
               style: TextButton.styleFrom(
                 textStyle: const TextStyle(fontSize: 20),
               ),
               onPressed: () => {

               },
               child: Icon(tasks[index].status == 'complete' ? Icons.check_box : Icons.check_box_outline_blank),
             ),
            /* leading: Icon(tasks[index].status == 'complete' ? Icons.check_box_outline : Icons.check_box_outline_blank), */
            trailing: TextButton(
             style: TextButton.styleFrom(
               textStyle: const TextStyle(fontSize: 20),
             ),
             onPressed: () => {

             },
             child: Icon(tasks[index].favorite == true ? Icons.star : Icons.star_border),
           ),
          );
        }
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
