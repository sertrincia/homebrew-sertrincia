cask "zl-equalizer" do
  version "0.6.2"
  sha256 "0578bc55501c204b898fa2b1148c63da905b80fc80a4bcace3c5990d9e1b3695"

  url "https://github.com/ZL-Audio/ZLEqualizer/releases/download/#{version}/ZL.Equalizer-#{version}-macOS-arm.dmg"
  name "ZL Equalizer"
  desc "Equalizer plugin"
  homepage "https://github.com/ZL-Audio/ZLEqualizer"

  livecheck do
      url "https://github.com/ZL-Audio/ZLEqualizer/"
      strategy :github_latest
    end

  pkg "ZL Equalizer-#{version}-macOS-arm.pkg"

  uninstall delete: [
    "com.zlaudio.plugins.ZLEqualizer.standalone.pkg",
    "com.zlaudio.plugins.ZLEqualizer.aax.pkg",
    "com.zlaudio.plugins.ZLEqualizer.au.pkg",
    "com.zlaudio.plugins.ZLEqualizer.vst3.pkg"]
end
