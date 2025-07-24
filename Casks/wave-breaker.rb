 cask "wave-breaker" do
  version "2.1.0"
  sha256 :no_check

  url "https://pressplay-music.com/download/1405/"
  name "Wave Breaker"
  desc "Freemium true peak limiter"
  homepage "https://pressplay-music.com/wave-breaker/"

  livecheck do
    url "https://pressplay-music.com/wave-breaker/"
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