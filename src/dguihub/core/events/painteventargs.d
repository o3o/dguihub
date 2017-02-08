/** DGui project file.

Copyright: Trogu Antonio Davide 2011-2013

License: $(HTTP boost.org/LICENSE_1_0.txt, Boost License 1.0).

Authors: Trogu Antonio Davide
*/
module dguihub.core.events.painteventargs;

public import dguihub.core.events.eventargs;
import dguihub.core.geometry;
import dguihub.canvas;

class PaintEventArgs : EventArgs {
   private Canvas _canvas;
   private Rect _clipRectangle;

   public this(Canvas c, Rect r) {
      this._canvas = c;
      this._clipRectangle = r;
   }

   @property public final Canvas canvas() {
      return this._canvas;
   }

   @property public final Rect clipRectangle() {
      return this._clipRectangle;
   }
}
