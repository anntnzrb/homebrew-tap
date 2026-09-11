cask "melaffeine" do
  version "0.1.11"
  sha256 "0fb1672c1958d3d616b79d818513ee7b5aeac92ccc999678d07d08f946517555"

  url "https://github.com/anntnzrb/Melaffeine/releases/download/v#{version}/Melaffeine-aarch64-apple-darwin.zip"
  name "Melaffeine"
  desc "Tiny native macOS menu-bar utility to prevent sleep"
  homepage "https://github.com/anntnzrb/Melaffeine"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Melaffeine.app"
  binary "melaffeine"

  zap trash: [
    "~/Library/Caches/Melaffeine",
    "~/Library/Preferences/Melaffeine.plist",
  ]
end
