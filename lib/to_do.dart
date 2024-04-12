import 'package:flutter/material.dart';
import 'package:to_do_listapp/to_item.dart';

class ToDo extends StatelessWidget {
  final ToItem toitem;
  final onToItemChanged;
  final onDeleteItem;
  const ToDo(
      {Key? key,
      required this.toitem,
      required this.onToItemChanged,
      required this.onDeleteItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          //print('Clicked on The Task');
          onToItemChanged(toitem);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        tileColor: Colors.white,
        leading: Icon(
          toitem.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          toitem.ToItemText!,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: toitem.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 5),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
             // print('Clicked on delete icon');
             onDeleteItem(toitem.id);
            },
          ),
        ),
      ),
    );
  }
}
