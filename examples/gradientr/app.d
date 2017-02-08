module gradient_rect;

import dguihub;

class MainForm : Form {
   public this() {
      this.text = "GDI: Gradient Fill Rect";
      this.size = Size(400, 200);
      this.startPosition = FormStartPosition.centerScreen;
   }

   protected override void onPaint(PaintEventArgs e) {
      Canvas c = e.canvas;

      c.fillRectGradient(Rect(nullPoint, this.size), SystemColors.blue,
            SystemColors.green, GradientFillRectMode.vertical);
      super.onPaint(e);
   }
}

int main(string[] args) {
   return Application.run(new MainForm()); // Start the application
}
