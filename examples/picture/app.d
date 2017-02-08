module picture;

import dguihub;

class MainForm : Form {
   private PictureBox _pict;

   public this() {
      this.text = "DGui Picture Box Text";
      this.size = Size(300, 250);
      this.startPosition = FormStartPosition.centerScreen; // Set Form Position

      this._pict = new PictureBox();
      this._pict.dock = DockStyle.fill;
      this._pict.sizeMode = SizeMode.autoSize; // Stretch the image
      this._pict.image = Bitmap.fromFile("image.bmp"); //Load image from file
      this._pict.parent = this;
   }
}

int main(string[] args) {
   return Application.run(new MainForm()); // Start the application
}
