/**
 * Implements message box facilities.
 */
module dguihub.messagebox;

import std.utf : toUTFz;

private import dguihub.core.winapi;
public import dguihub.core.dialogs.dialogresult;

///
enum MsgBoxButtons : uint {
   ok = MB_OK,
   yesNo = MB_YESNO,
   okCancel = MB_OKCANCEL,
   retryCancel = MB_RETRYCANCEL,
   yesNoCancel = MB_YESNOCANCEL,
   abortRetryIgnore = MB_ABORTRETRYIGNORE,
}

///
enum MsgBoxIcons : uint {
   ///
   none = 0,
   /**
    * Icon with an exclamation point
    */
   warning = MB_ICONWARNING,
   /**
    * Icon with a lowercase letter i in a circle.
    */
   information = MB_ICONINFORMATION,
   /**
    * Icon with a question mark.
    */
   question = MB_ICONQUESTION,
   error = MB_ICONERROR, ///Icon with a X letter.

}

/**
 * Displays a message window which presents a message to the user.
 */
final class MsgBox {
   private this() {}

   /**
    * Shows a message box.
    *
    * Params:
    *  title = The message title
    *  text = The text to display in the message box
    *  button = Specifies which buttons to display in the message box.
    *  icon = Specifies which icon to display in the message box.
    */
   public static DialogResult show(string title, string text, MsgBoxButtons button, MsgBoxIcons icon) {
      return cast(DialogResult)MessageBoxW(GetActiveWindow(),
            toUTFz!(wchar*)(text), toUTFz!(wchar*)(title), button | icon);
   }

   /**
    * Shows a message box.
    *
    * Params:
    *  title = The message title
    *  text = The text to display in the message box
    *  button = Specifies which buttons to display in the message box.
    */
   public static DialogResult show(string title, string text, MsgBoxButtons button) {
      return MsgBox.show(title, text, button, MsgBoxIcons.none);
   }

   /**
    * Shows a message box with OK button.
    *
    * Params:
    *  title = The message title
    *  text = The text to display in the message box
    *  icon = Specifies which icon to display in the message box.
    */
   public static DialogResult show(string title, string text, MsgBoxIcons icon) {
      return MsgBox.show(title, text, MsgBoxButtons.ok, icon);
   }

   /**
    * Shows a message box with OK button.
    *
    * Params:
    *  title = The message title
    *  text = The text to display in the message box
    */
   public static DialogResult show(string title, string text) {
      return MsgBox.show(title, text, MsgBoxButtons.ok, MsgBoxIcons.none);
   }
}
