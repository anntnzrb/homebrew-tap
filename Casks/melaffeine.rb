cask "melaffeine" do
  version "0.1.12"
  sha256 "7cd2111ba62853e8b1d0de9a014481822bae3e2f44d5589ea818c725adeb8847"

  url "https://github.com/anntnzrb/Melaffeine/releases/download/v#{version}/Melaffeine-aarch64-apple-darwin.zip"
  name "Melaffeine"
  desc "Tiny native macOS menu-bar utility to prevent sleep"
  homepage "https://github.com/anntnzrb/Melaffeine"

  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "Melaffeine.app"
  binary "melaffeine"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Melaffeine.app"],
                   sudo: false
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/melaffeine"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Caches/Melaffeine",
    "~/Library/Preferences/Melaffeine.plist",
  ]
end
