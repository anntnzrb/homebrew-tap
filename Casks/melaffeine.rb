cask "melaffeine" do
  version "0.1.3"
  sha256 "7a58ca5a2a4258b7bc501f6db797f499c32f3012a40b51309b2c4c96657aea50"

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
