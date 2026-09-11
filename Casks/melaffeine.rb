cask "melaffeine" do
  version "0.1.9"
  sha256 "e28ddb0d32658b755ed9ddb987106dbf54407e78dd5a6bb2c2b9c75d73cb67da"

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
