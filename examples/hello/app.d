module hello;

import dguihub;

class MainForm : Form {
   public this() {
      this.text = "DGui Form";
      this.size = Size(500, 400);
      this.startPosition = FormStartPosition.centerScreen; // Set Form Position
   }
}

int main(string[] args) {
   return Application.run(new MainForm()); // Start the application
}
