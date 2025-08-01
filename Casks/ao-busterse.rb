cask "ao-busterse" do
  version "7.0"
  sha256 "f91fe76dd9d20a47bb40399cee74db3763ae0bf55577a2afcc6db692a5c5a98e"

  url 
    "https://analogobsession.com/wp-content/uploads/2022/12/BUSTERse_#{version}.pkg"
  name "BUSTERse"
  desc "Classic console compressor with extra sidechain options"
  homepage "https://www.patreon.com/posts/busterse-42658623"

  livecheck do
    skip "Info on Analog Obssession's Patreon page"
  end

  pkg "BUSTERse_#{version}.pkg"

  uninstall pkgutil: [
    "com.AnalogObsession.aax.pkg.BUSTERse",
    "com.AnalogObsession.au.pkg.BUSTERse",
    "com.AnalogObsession.vst3.pkg.BUSTERse",
  ]

  zap trash: [
    "~/Library/Audio/Presets/AnalogObsession/BUSTERse",
  ]
end
