cask "autotune-central" do
  version "1.7.1"
  sha256 "c0fa86ee8a8cfb13188d9ea868c41cd943a20c4d61fb7966e0e62a63e7c64dae"

  url "https://antares.sfo2.cdn.digitaloceanspaces.com/auto-tune-central/auto-update/mac/Auto_Tune_Central_#{version}_universal.dmg",
  	verified: "antares.sfo2.cdn.digitaloceanspaces.com/auto-tune-central/auto-update/mac/"
  name "Autotune Central"
  desc "For downloading and updating Antares plugins"
  homepage "https://www.antarestech.com/software-download/"

  livecheck do
    url "https://www.antarestech.com/software-download/"
    regex(/Auto_Tune_Central_(\d+\.\d+\.\d+)_universal.dmg"/i) 
  end

  app "Auto-Tune Central"

  uninstall pkgutil: ""

end