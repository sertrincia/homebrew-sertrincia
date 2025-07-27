cask "kraftur" do
  version "1.2.3"
  sha256 "5ddfbb582d955aab54e7559eeb3ebd02af30ec966c92913e61a4efd4c7ef73a6"

  url "https://www.soundtheory.com/static/Soundtheory%20Kraftur%20#{version}.dmg"
  name "Kraftur"
  desc "Saturation audio processor"
  homepage "https://www.soundtheory.com/kraftur"

  livecheck do
    url "https://www.soundtheory.com/downloads"
    regex(/Soundtheory.com\/static\/Soundtheory%20Kraftur%20(\d+\.\d+\.\d+).dmg/i) 
  end

  depends_on macos: ">= :high_sierra"

  pkg "Kraftur #{version} Installer.pkg"

  uninstall script: {
    executable: "/Applications/Soundtheory/Kraftur/Uninstall/Contents/MacOS/uninstall.command",
    sudo:       true,
  }
end
