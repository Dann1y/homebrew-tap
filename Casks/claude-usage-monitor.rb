cask "claude-usage-monitor" do
  version "1.8.0"
  sha256 "a897dca88e1b08d0cc7edd6eb8a50d0b371a67503a4b0b432413bb8dc4573acc"

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
