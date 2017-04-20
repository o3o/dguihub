module example.listview;
import std.string;
import std.stdio;

import dguihub;

class MainForm : Form {
   private ListView list;
   public this() {
      this.text = "DGui Form";
      this.size = Size(500, 400);
      this.startPosition = FormStartPosition.centerScreen;
      list = new ListView();
      list.viewStyle = ViewStyle.report;
      list.gridLines = true;
      // x, y, w, h
      list.bounds = Rect(10, 10, 450, 350);
      list.addColumn("Item column", 100, ColumnTextAlign.left);
      list.addColumn("Column 2", 100, ColumnTextAlign.left);
      list.addColumn("Column 3", 100, ColumnTextAlign.left);
      list.addColumn("Column 4", 100, ColumnTextAlign.center);

      list.parent = this;

      ListViewItem item1 = list.addItem("item1", -1, true);
      item1.addSubItem("1");
      item1.addSubItem("2");
      item1.addSubItem("3");

      ListViewItem item2 = list.addItem("item2", -1, false);
      // Place a check mark next to the item.
      item2.addSubItem("4");
      item2.addSubItem("5");
      item2.addSubItem("6");


   }
}

int main(string[] args) {
   return Application.run(new MainForm());
}
