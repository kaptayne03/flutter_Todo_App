import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_Network.dart';

class TodoHomeView extends StatefulWidget {
  const TodoHomeView({ Key key }) : super(key: key);

  @override
  _TodoHomeViewState createState() => _TodoHomeViewState();
}

class _TodoHomeViewState extends State<TodoHomeView> {
  Future getData;
  TodoNetwork network=TodoNetwork();

  @override
  void initState(){
     getData =network.getAllTodos();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Tasks",
        ),
        leading: CircleAvatar(
          radius: 1,
        ),
        actions: [
          IconButton(icon: Icon(Icons.filter_list_sharp), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context,index)=>ListTile(tileColor: Colors.white,
          leading: IconButton(onPressed: (){},
          icon: Icon(Icons.check_circle_outline),
          
          ),
          title: Text("Plan the trip to Finland"),
          contentPadding: EdgeInsets.symmetric(vertical: 12),
          trailing: TextButton.icon(onPressed: (){},
          icon: Icon(Icons.notifications_none_rounded),
          label: Text("Yesterday"),),
        ),
         separatorBuilder:(context,index)=>SizedBox(height: 5,),
          itemCount: 20
          ),
    );
  }
}