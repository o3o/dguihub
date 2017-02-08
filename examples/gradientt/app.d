module gradient_triangle;

import dguihub;

class MainForm : Form {
   public this() {
      this.text = "GDI: Gradient Fill Triangle";
      this.size = Size(360, 190);
      this.startPosition = FormStartPosition.centerScreen;
      this.formBorderStyle = FormBorderStyle.fixedDialog;
      this.maximizeBox = false;
      this.minimizeBox = false;
   }

   protected override void onPaint(PaintEventArgs e) {
      Canvas c = e.canvas;

      c.fillTriangleGradient(10, 180, 180, 10, 350, 180, SystemColors.blue,
            SystemColors.green, SystemColors.red);
      super.onPaint(e);
   }
}

int main(string[] args) {
   return Application.run(new MainForm()); // Start the application
}
