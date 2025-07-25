cask "arturia-software-center" do
  version "2_10_0_2970"
  sha256 "ebf561dee23eb580ca5784388d284c58a3c5d5c149048aac4505a488b6a590ca"

  url "https://dl.arturia.net/products/asc/soft/Arturia_Software_Center__#{version}.pkg",
    verified: "dl.arturia.net/products/asc/soft/"
  name "Arturia Software Center"
  desc "Application for downloading, installing and updating Arturia software products"
  homepage "https://arturia.com/"

  livecheck do
    # skip
    url "https://arturia.com/technology/asc"
    regex(/Arturia_Software_Center__(\d+_\d+_\d+_\d+)\.pkg/i)
  end

  pkg "Arturia_Software_Center__#{version}.pkg"
  
  uninstall pkgutil: "com.Arturia.ArturiaSoftwareCenter.resources"
  uninstall pkgutil: "com.Arturia.ArturiaSoftwareCenter.fonts"

  zap trash: [
    "/Library/LaunchAgents/com.Arturia.ArturiaSoftwareCenterAgent.plist",
    "/var/db/receipts/com.Arturia.ArturiaSoftwareCenter.fonts.bom",
    "/var/db/receipts/com.Arturia.ArturiaSoftwareCenter.fonts.plist",
    "/var/db/receipts/com.Arturia.ArturiaSoftwareCenter.resources.bom",
    "/var/db/receipts/com.Arturia.ArturiaSoftwareCenter.resources.plist",
  ]
end