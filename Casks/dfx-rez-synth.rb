 cask "dfx-rez-synth" do
  version "2.0.1"
  sha256 "7bae1cf34a0f325bc4d1347a16057bf9fa5645ea08a70190c94cf91f3c232e71"

  url "http://destroyfx.org/software/rezsynth-#{version}-mac.dmg"
  name "Destroy FX Rez Synth"
  desc "Playable resonant band-pass filter Audio Unit"
  homepage "http://www.destroyfx.org/"

  livecheck do
    url "http://www.destroyfx.org/"
    regex(/software\/rezsynth-(\d+\.\d+\.\d+)-mac.dmg/i) 
  end

  pkg "Install Rez Synth.pkg"

  uninstall pkgutil: "org.destroyfx.RezSynth"

  uninstall delete: "/Library/Audio/Plug-Ins/Components/dfx rez synth.component"

end