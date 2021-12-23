import 'package:http/http.dart';
import 'package:todo_app/models/todo_model.dart';

class TodoNetwork{

  String getDataUrl = "https://tired-battledress-fox.cyclic.app/get/todos";
  // get all todos

Future getAllTodos()async{
  Response response=await get(Uri.parse(getDataUrl));
  if (response.statusCode==200){print(response.body);

    return todoModelFromJson(response.body);

  }else{
    throw{Exception("failed to grt data from database")};
  }
}



  // post/create a new todo



// update a todo by ID



// delete todo by ID

}