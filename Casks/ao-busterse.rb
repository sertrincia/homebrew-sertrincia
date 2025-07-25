 cask "ao-busterse" do
  version "7.0"
  sha256 "f91fe76dd9d20a47bb40399cee74db3763ae0bf55577a2afcc6db692a5c5a98e"

  url "https://analogobsession.com/wp-content/uploads/2022/12/BUSTERse_#{version}.pkg",
    verified: "analogobsession.com"
  name "BUSTERse"
  desc "Classic console compressor with extra Filter and Transient sidechain options"
  homepage "https://www.patreon.com/posts/busterse-42658623"

  livecheck do
    url "https://www.patreon.com/posts/busterse-42658623"
    regex(/analogobsession.com\/wp-content\/uploads\/2022\/12\/BUSTERse_(\d+\.\d+\.\d+).pkg/i) 
  end

  pkg "BUSTERse_#{version}.pkg"

  uninstall pkgutil: [
    "com.AnalogObsession.au.pkg.BUSTERse",
    "com.AnalogObsession.vts3.pkg.BUSTERse",
    "com.AnalogObsession.aax.pkg.BUSTERse"]

end