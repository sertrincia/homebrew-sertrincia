cask "dseq" do
  version "3.9.8"
  sha256 "61a731d655d81998ce1a077f129a2c9894377b3b4b6c98055e356c8d2668daec"

  url "https://www.tbproaudio.de/assets/content/download/DSEQ3_Installer_OSX_#{version.no_dots}.zip"
  name "DSEQ"
  desc "Dynamic processor working in the frequency domain"
  homepage "https://www.tbproaudio.de/products/dseq"

  livecheck do
    url "https://www.tbproaudio.de/products/dseq"
    regex(/Version: (\d+\.\d+\.\d+)/i) 
  end

  pkg "DSEQ#{version.major} Installer_signed.pkg"

  uninstall pkgutil:[
    "com.TBProAudio.aax.pkg.DSEQ3",
    "com.TBProAudio.manual.pkg.DSEQ3",
    "com.TBProAudio.au.pkg.DSEQ3",
    "com.TBProAudio.vst3.pkg.DSEQ3",
    "com.TBProAudio.vst.pkg.DSEQ3"]
end