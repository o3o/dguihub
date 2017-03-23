module example.checkbox;
import std.string;

import dguihub;

class MainForm : Form {
   private CheckBox check;
   public this() {
      this.text = "DGui Form";
      this.size = Size(500, 400);
      this.startPosition = FormStartPosition.centerScreen;
      check = new CheckBox();
      // x, y, w, h
      check.bounds = Rect(10, 10, 80, 24);
      check.parent = this;
      check.click.attach(&this.onClick);
      check.checkChanged.attach(&this.onCheck);

      Button setOn = new Button();
      setOn.text = "ON";
      setOn.bounds = Rect(10, 40, 80, 30);
      setOn.parent = this;
      setOn.click.attach(&this.onClick1);

      Button setOff = new Button();
      setOff.text = "OFF";
      setOff.bounds = Rect(10, 80, 80, 30);
      setOff.parent = this;
      setOff.click.attach(&this.onClick0);

   }

   private void onClick0(Control sender, EventArgs e) {
      check.checked = false;
   }

   private void onClick1(Control sender, EventArgs e) {
      check.checked = true;
   }

   private void onClick(Control sender, EventArgs e) {
      bool v = (cast(CheckBox)sender).checked;
      MsgBox.show("OnClick", "click event: Now check is %s".format(v));
   }

   private void onCheck(Control sender, EventArgs e) {
      bool v = (cast(CheckBox)sender).checked;
      MsgBox.show("OnCheck", "checkChanged event. Now check is %s".format(v));
   }
}

int main(string[] args) {
   return Application.run(new MainForm());
}
