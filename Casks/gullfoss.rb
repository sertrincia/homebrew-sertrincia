cask "gullfoss" do
  version "1.11.6"
  sha256 "78c54960177e434c71104cef7f487598b74fed3e099cd5a8a8420adf8b2fcaa4"

  url "https://www.soundtheory.com/static/Soundtheory%20Gullfoss%20#{version}.dmg"
  name "Gullfoss"
  desc "Dynamic and auditory perception oriented equalizer"
  homepage "https://www.soundtheory.com/gullfoss"

  livecheck do
    url "https://www.soundtheory.com/downloads"
    regex(%r{/Soundtheory.com/static/Soundtheory%20Gullfoss%20(\d+\.\d+\.\d+).dmg})
  end

  depends_on macos: ">= :mavericks"

  pkg "Gullfoss #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.soundtheory.gullfoss.aax.install",
    "com.soundtheory.gullfoss.audiounit.install",
    "com.soundtheory.gullfoss.vst.install",
    "com.soundtheory.gullfoss.vst3.install",
  ]
end
