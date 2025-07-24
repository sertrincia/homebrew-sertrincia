cask "bx-console-ssl-4000-e" do
  version "1.7.1"
  sha256 "7cfc91e960b327a582fd32531a2ae32da98eab96c47cbfb33eb49368da71cfa8"

  url "https://www.plugin-alliance.com/en/manage-plugins.html?file=products/installer/bx_console_ssl_4000_e_mac_#{version.dots_to_underscores}.zip"
  name "bx_console SSL 4000 E"
  desc "Channel strip plugin"
  homepage "https://www.plugin-alliance.com/en/products/bx_console_ssl_4000_e.html"

  livecheck do
    url "https://www.plugin-alliance.com/en/products/bx_console_ssl_4000_e.html"
    regex(/Installer v(\d+\.\d+\.\d+)/i) 
  end

  installer manual: "bx_console SSL 4000 E Installer.app"

  # uninstall pkgutil: ["com.TokyoDawnLabs.TDRPrism.AAX",
  #   "com.TokyoDawnLabs.TDRPrism.VST3",
  #   "com.TokyoDawnLabs.TDRPrism.VST",
  #   "com.TokyoDawnLabs.TDRPrism.AU"]

  # uninstall delete: [
  #   "/Library/Audio/Plug-Ins/VST3/TDR Prism.vst3",
  #   "/Library/Audio/Plug-Ins/VST3/TDR Prism.vst",
  #   "/Library/Audio/Plug-Ins/Components/TDR Prism.component",
  #   "/Library/Application Support/Avid/Audio/Plug-Ins/TDR Prism.aaxplugin"]
end