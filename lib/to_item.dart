class ToItem {
  String? id;
  String? ToItemText;
  bool isDone;

  ToItem({
    required this.id,
    required this.ToItemText,
    this.isDone = false
  });
  static List<ToItem> todoList() {
    return [
      ToItem(id: '01', ToItemText: 'Morning exrcise', isDone: true),
      ToItem(id: '02', ToItemText: 'Buying shopping', isDone: true),
      ToItem(id: '03', ToItemText: 'Check mails', ),
      ToItem(id: '04', ToItemText: 'Innovation club meeting', ),
      ToItem(id: '05', ToItemText: 'Work on two mobile APP', ),
      ToItem(id: '06', ToItemText: 'Cook my fav meal', ),
    ];
  }
}