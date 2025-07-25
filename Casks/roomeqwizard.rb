 cask "roomeqwizard" do
  version "5.31.3"
  sha256 "8f1c6b9ecae27b2f60ff3dfc803920607e42f312342d9d5472c2e38b55b699f5"

  url "https://www.roomeqwizard.com/installers/REW_macos_#{version.dots_to_underscores}.dmg"
  name "Room Eq Wizard"
  desc "Software for room acoustic, loudspeaker and audio device measurement."
  homepage "https://roomeqwizard.com/"

  livecheck do
    url "https://roomeqwizard.com/"
    regex(/The current version is V(\d+\.\d+\.\d+),/i) 
  end

  installer script: {
    executable: "REW Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["--unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/REW/REW Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    sudo:       true,
  }

end