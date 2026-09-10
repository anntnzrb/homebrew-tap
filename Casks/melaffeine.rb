cask "melaffeine" do
  version "0.1.8"
  sha256 "dfc8622d08bad685a4eac46d6e5c581696f0aa0d298169273c5c7b2d91402a17"

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
