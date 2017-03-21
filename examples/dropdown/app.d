module hello;

import dguihub;

class MainForm : Form {
   private ComboBox combo;
   public this() {
      this.text = "DGui Form";
      this.size = Size(500, 400);
      this.startPosition = FormStartPosition.centerScreen; // Set Form Position
      combo = new ComboBox();
      combo.dropDownStyle(DropDownStyles.simple);
      //combo.dock = DockStyle.top;
      // x, y, w, h
      combo.bounds = Rect(10, 10, 80, 160);
      import std.string;
      for (size_t i = 0; i < 176; ++i) {
         combo.addItem("OUT %2d".format(i));
      }
      combo.parent = this;
      combo.itemChanged.attach(&this.onBtnClick);
   }
   private void onBtnClick(Control sender, EventArgs e) {
      import std.conv;
      if (combo !is null) {
         MsgBox.show("Click Event", combo.selectedIndex.to!string());
         //MsgBox.show("Click Event", combo.selectedItem.to!string());
      } else {
         MsgBox.show("Click Event", "null");
      }

   }
}

int main(string[] args) {
   return Application.run(new MainForm()); // Start the application
}
