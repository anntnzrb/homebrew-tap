cask "melaffeine" do
  version "0.1.17"
  sha256 "f399fd1e3c3a554a4c41c23d45161bb1e92ace16383cc6fbdb2f92a78c41026e"

  url "https://github.com/anntnzrb/Melaffeine/releases/download/v#{version}/Melaffeine-aarch64-apple-darwin.zip"
  name "Melaffeine"
  desc "Tiny native macOS menu-bar utility to prevent sleep"
  homepage "https://github.com/anntnzrb/Melaffeine"

  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "Melaffeine.app"
  binary "melaffeine"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/Melaffeine.app"],
        must_succeed: false
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/melaffeine"],
        must_succeed: false
  end

  zap trash: [
    "~/Library/Caches/Melaffeine",
    "~/Library/Preferences/Melaffeine.plist",
  ]
end
