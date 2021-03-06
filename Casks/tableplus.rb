cask "tableplus" do
  version "3.7.1,332"
  sha256 "a1bd7e580bb27cdce1c11cb11765463ff0627c1013edf7a00694a3915cc99da7"

  # tableplus-osx-builds.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://tableplus-osx-builds.s3.amazonaws.com/#{version.after_comma}/TablePlus.dmg"
  appcast "https://tableplus.io/osx/version.xml",
          must_contain: version.after_comma
  name "TablePlus"
  homepage "https://tableplus.io/"

  auto_updates true

  app "TablePlus.app"

  zap trash: [
    "~/Library/Application Support/com.tinyapp.TablePlus",
    "~/Library/Caches/com.tinyapp.TablePlus",
    "~/Library/Cookies/com.tinyapp.TablePlus.binarycookies",
    "~/Library/Preferences/com.tinyapp.TablePlus.plist",
    "~/Library/Saved Application State/com.tinyapp.TablePlus.savedState",
  ]
end
