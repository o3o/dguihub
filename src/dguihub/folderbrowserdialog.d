/** DGui project file.

Copyright: Trogu Antonio Davide 2011-2013

License: $(HTTP boost.org/LICENSE_1_0.txt, Boost License 1.0).

Authors: Trogu Antonio Davide
*/
module dguihub.folderbrowserdialog;

pragma(lib, "shell32.lib");

public import dguihub.core.dialogs.commondialog;
import dguihub.core.utils;

import std.conv;

class FolderBrowserDialog : CommonDialog!(BROWSEINFOW, string) {
   public override bool showDialog() {
      wchar[] buffer = new wchar[MAX_PATH + 1];
      //wchar[MAX_PATH + 1] buffer;
      buffer[] = '\0';

      this._dlgStruct.hwndOwner = GetActiveWindow();
      this._dlgStruct.pszDisplayName = buffer.ptr;
      this._dlgStruct.ulFlags = BIF_RETURNONLYFSDIRS;
      this._dlgStruct.lpszTitle = toUTFz!(wchar*)(this._title);

      ITEMIDLIST* pidl = SHBrowseForFolderW(&this._dlgStruct);

      if (pidl) {
         SHGetPathFromIDListW(pidl, buffer.ptr); //Get Full Path.
         this._dlgRes = to!string(fromWStringz(buffer.ptr));
         return true;
      }

      return false;
   }
}
