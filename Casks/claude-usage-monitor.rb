cask "claude-usage-monitor" do
  version "1.3.0"
  sha256 "3c92fd25e8035c832edb3caceb088272c16e90f47c0362a2ca9d05656d1a75cc"

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
