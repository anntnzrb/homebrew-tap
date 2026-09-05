cask "melaffeine" do
  version "0.1.2"
  sha256 "f6e9ed1eb872fa13686ab0d807e539bccd91e1b80675c56091f0e805924cb878"

  url "https://github.com/anntnzrb/Melaffeine/releases/download/v#{version}/Melaffeine-aarch64-apple-darwin.zip"
  name "Melaffeine"
  desc "Tiny native macOS menu-bar utility to prevent sleep"
  homepage "https://github.com/anntnzrb/Melaffeine"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Melaffeine.app"

  zap trash: [
    "~/Library/Caches/Melaffeine",
    "~/Library/Preferences/Melaffeine.plist",
  ]
end
