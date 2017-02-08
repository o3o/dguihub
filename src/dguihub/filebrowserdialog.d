/** DGui project file.

Copyright: Trogu Antonio Davide 2011-2013

License: $(HTTP boost.org/LICENSE_1_0.txt, Boost License 1.0).

Authors: Trogu Antonio Davide
*/
module dguihub.filebrowserdialog;

private import std.utf : toUTFz, toUTF8;

private import std.conv : to;
public import dguihub.core.dialogs.commondialog;

private import dguihub.core.utils;

enum FileBrowseMode {
   open = 0,
   save = 1,
}
// OPENFILENAMEW is in druntime/src/core/sys/windows/commdlg.d
class FileBrowserDialog : CommonDialog!(OPENFILENAMEW, string) {
   private string _filter;
   private FileBrowseMode _fbm = FileBrowseMode.open;

   @property public void browseMode(FileBrowseMode fbm) {
      this._fbm = fbm;
   }

   @property public string filter() {
      return this._filter;
   }

   @property public void filter(string f) {
      this._filter = makeFilter(f);
   }

   public override bool showDialog() {
      import std.array;

      wchar[] buffer = new wchar[MAX_PATH + 1];
      //wchar[MAX_PATH + 1] buffer;
      buffer[] = '\0';

      this._dlgStruct.lStructSize = OPENFILENAMEW.sizeof;
      this._dlgStruct.hwndOwner = GetActiveWindow();
      this._dlgStruct.lpstrFilter = toUTFz!(wchar*)(this._filter);
      this._dlgStruct.lpstrTitle = toUTFz!(wchar*)(this._title);
      this._dlgStruct.lpstrFile = buffer.ptr;
      this._dlgStruct.nMaxFile = MAX_PATH;
      this._dlgStruct.Flags = OFN_PATHMUSTEXIST | OFN_FILEMUSTEXIST
         | OFN_CREATEPROMPT | OFN_OVERWRITEPROMPT;

      bool res = false;

      switch (this._fbm) {
      case FileBrowseMode.open:
         res = cast(bool)GetOpenFileNameW(&this._dlgStruct);
         break;

      case FileBrowseMode.save:
         res = cast(bool)GetSaveFileNameW(&this._dlgStruct);
         break;

      default:
         assert(false, "Unknown browse mode");
      }

      if (res) {
         this._dlgRes = toUTF8(buffer);
         //this._dlgRes = to!(string)(toUTF8(buffer).ptr);
      }

      return res;
   }
}
