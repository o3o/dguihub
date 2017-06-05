/** DGui project file.

Copyright: Trogu Antonio Davide 2011-2013

License: $(HTTP boost.org/LICENSE_1_0.txt, Boost License 1.0).

Authors: Trogu Antonio Davide
*/
module dguihub.core.utils;

import std.path;
import dguihub.core.winapi;
import dguihub.core.charset;

enum WindowsVersion {
   unknown = 0,
   windows2000 = 1,
   windowsXP = 2,
   windowsVista = 4,
   windows7 = 8,
}

T winCast(T)(Object o) {
   return cast(T)(cast(void*)o);
}

T winCast(T)(size_t st) {
   return cast(T)(cast(void*)st);
}

HINSTANCE getHInstance() {
   static HINSTANCE hInst = null;

   if (!hInst) {
      hInst = GetModuleHandleW(null);
   }

   return hInst;
}

string getExecutablePath() {
   static string exePath;

   if (!exePath.length) {
      exePath = getModuleFileName(null);
   }

   return exePath;
}

string getStartupPath() {
   static string startPath;

   if (!startPath.length) {
      startPath = std.path.dirName(getExecutablePath());
   }

   return startPath;
}

string getTempPath() {
   static string tempPath;

   if (!tempPath.length) {
      dguihub.core.charset.getTempPath(tempPath);
   }

   return tempPath;
}

string makeFilter(string userFilter) {
   char[] newFilter;
   foreach (char ch; userFilter) {
      if (ch == '|') {
         newFilter ~= '\0';
      } else {
         newFilter ~= ch;
      }
   }

   newFilter ~= '\0';
   return newFilter.idup;
} unittest {
   assert(makeFilter("a") == "a\0");
   assert(makeFilter("a|b") == "a\0b\0");
}

public WindowsVersion getWindowsVersion() {
   static WindowsVersion ver = WindowsVersion.unknown;
   static WindowsVersion[uint][uint] versions;

   if (ver is WindowsVersion.unknown) {
      if (!versions.length) {
         versions[5][0] = WindowsVersion.windows2000;
         versions[5][1] = WindowsVersion.windowsXP;
         versions[6][0] = WindowsVersion.windowsVista;
         versions[6][1] = WindowsVersion.windows7;
      }

      OSVERSIONINFOW ovi;
      ovi.dwOSVersionInfoSize = OSVERSIONINFOW.sizeof;

      GetVersionExW(&ovi);

      WindowsVersion[uint]* pMajVer = (ovi.dwMajorVersion in versions);

      if (pMajVer) {
         WindowsVersion* pMinVer = (ovi.dwMinorVersion in *pMajVer);

         if (pMinVer) {
            ver = versions[ovi.dwMajorVersion][ovi.dwMinorVersion];
         }
      }
   }

   return ver;
}
