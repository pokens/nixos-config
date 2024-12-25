{
  xdg.desktopEntries = {
    firefox = {
      name = "Firefox";
      icon = "firefox";
      genericName = "Web Browser";
      exec = "firefox --name firefox %U";
      type = "Application";
      terminal = false;
      startupNotify = true;
      startupWMClass = "firefox";
      categories = ["Network" "WebBrowser"];
      mimeType = ["text/html" "text/xml" "application/xhtml+xml" "application/vnd.mozilla.xul+xml" "x-scheme-handler/http" "x-scheme-handler/https"];
    };
    vscodium = {
      name = "VSCodium";
      icon = "vscodium";
      genericName = "Text Editor";
      exec = "codium %F";
      terminal = false;
      type = "Application";
      startupNotify = true;
      startupWMClass = "vscodium";
      categories = ["Development" "IDE" "Utility" "TextEditor"];
    };
    hoppscoth = {
      name = "Hoppscotch";
      icon = "hoppscotch";
      exec = "hoppscotch";
      type = "Application";
      terminal = false;
      categories = ["Development"];
    };
    telegram = {
      name = "Telegram";
      tryExec = "telegram-desktop";
      exec = "telegram -- %U";
      icon = "telegram";
      type = "Application";
      terminal = false;
      genericName = "Messenger";
      startupWMClass = "TelegramDesktop";
      singleMainWindow = true;
      dbusActivatable = true;
      categories = ["Chat" "Network" "InstantMessaging" "Qt"];
      mimeType = ["x-scheme-handler/tg" "x-scheme-handler/tonsite"];
    };
    figma-linux = {
      name = "Figma";
      type = "Application";
      exec = "figma";
      terminal = false;
      categories = ["Graphics" "Development"];
      mimeType = ["x-scheme-handler/figma"];
    };
    vesktop = {
      name = "Vesktop";
      icon = "vesktop";
      terminal = false;
      exec = "vesktop %U";
      type = "Application";
      startupWMClass = "Vesktop";
      genericName = "Internet Messenger";
      keywords = ["discord" "vencord" "electron" "chat"];
      categories = ["Network" "Chat" "InstantMessaging"];
    };
    obsidian = {
      name = "Obsidian";
      terminal = false;
      icon = "obsidian";
      exec = "obsidian %U";
      type = "Application";
      categories = ["Office"];
      mimeType = ["x-scheme-handler/obsidian"];
    };
  };
}
