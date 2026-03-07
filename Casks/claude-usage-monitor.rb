cask "claude-usage-monitor" do
  version "1.3.0"
  sha256 "f6a625949f0fe0737b6d2b8ac3cfc470ed270bbfa3067d1a84495ecaab4c05cf"

  url "https://github.com/Dann1y/claude-usage-monitor/releases/download/v#{version}/ClaudeUsageMonitor.app.zip"
  name "Claude Usage Monitor"
  desc "Lightweight macOS menu bar app that shows your Claude usage in real time"
  homepage "https://github.com/Dann1y/claude-usage-monitor"

  depends_on macos: ">= :sonoma"

  app "Claude Usage Monitor.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Claude Usage Monitor.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.ClaudeUsageMonitor.plist",
  ]
end
