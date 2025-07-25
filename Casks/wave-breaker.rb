 cask "dfx-rez-synth" do
  version "2.0.1"
  sha256 ""

  url "http://destroyfx.org/software/rezsynth-#{version}-mac.dmg"
  name "Destroy FX Rez Synth"
  desc "Playable resonant band-pass filter"
  homepage "http://www.destroyfx.org/"

  livecheck do
    url "http://www.destroyfx.org/"
    regex(/Wave Breaker (\d+\.\d+\.\d+) for macOS/i) 
  end

  pkg "WaveBreaker_#{version}"

  uninstall pkgutil: [
    "com.PressPlay.pkg.WaveBreaker.aax",
    "com.PressPlay.pkg.WaveBreaker.Component",
    "com.PressPlay.pkg.WaveBreaker.vst3"]

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST3/WaveBreaker.vst3",
    "/Library/Audio/Plug-Ins/Components/WaveBreaker.component",
    "/Library/Application Support/Avid/Audio/Plug-Ins/WaveBreaker.aaxplugin"]

end