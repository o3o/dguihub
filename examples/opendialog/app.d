module opendialog;

import dguihub;

class MainForm : Form {
   private Button _btnOk;

   public this() {
      this.text = "DGui Events";
      this.size = Size(300, 250);
      this.startPosition = FormStartPosition.centerScreen; // Set Form Position

      this._btnOk = new Button();
      this._btnOk.text = "Click Me!";
      this._btnOk.dock = DockStyle.fill; // Fill the whole form area
      this._btnOk.parent = this;
      this._btnOk.click.attach(&this.onBtnOkClick); //Attach the click event with the selected procedure
   }

   private void onBtnOkClick(Control sender, EventArgs e) {
      FileBrowserDialog dlg = new FileBrowserDialog();
      dlg.showDialog();
      MsgBox.show("OnClick", dlg.result);
   }
}

int main(string[] args) {
   return Application.run(new MainForm()); // Start the application
}
