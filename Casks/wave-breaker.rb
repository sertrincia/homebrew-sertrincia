 cask "wave-breaker" do
  version "2.1.0"
  sha256 :no_check #"6bf814149e8670fd0a2e41b7e12a061c592e59e2fe3ca5c608a67f0c62570974"

  url "https://pressplay-music.com/download/1405/"
  name "Wave Breaker"
  desc "Freemium true-peak limiter"
  homepage "http://www.pressplay-music.com/wave-breaker/"

  livecheck do
    url "https://pressplay-music.com/wave-breaker/#downloads"
    regex(/Wave Breaker (\d+\.\d+\.\d+) for macOS/i) 
  end

  pkg "WaveBreaker_#{version}.pkg"

  uninstall pkgutil: [
    "com.PressPlay.pkg.WaveBreaker.aax",
    "com.PressPlay.pkg.WaveBreaker.Component",
    "com.PressPlay.pkg.WaveBreaker.vst3",
  ]
end
