cask "jd-gui" do
  version "1.6.6"
  sha256 "b16ce61bbcfd2f006046b66c8896c512a36c6b553afdca75896d7c5e27c7477d"

  # github.com/java-decompiler/jd-gui/ was verified as official when first introduced to the cask
  url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-osx-#{version}.tar"
  appcast "https://github.com/java-decompiler/jd-gui/releases.atom"
  name "JD-GUI"
  homepage "http://jd.benow.ca/"

  app "jd-gui-osx-#{version}/JD-GUI.app"

  zap trash: "~/Library/Saved Application State/jd.jd-gui.savedState"
end
