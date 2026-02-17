cask "claude-usage-monitor" do
  version "1.0.0"
  sha256 "7d6db0611ee954e0f637a7517ba6ec56deae64dadce2d546bd612476db321c67"

  url "https://github.com/Dann1y/claude-usage-monitor/releases/download/v#{version}/ClaudeUsageMonitor.app.zip"
  name "Claude Usage Monitor"
  desc "Lightweight macOS menu bar app that shows your Claude usage in real time"
  homepage "https://github.com/Dann1y/claude-usage-monitor"

  depends_on macos: ">= :sonoma"

  app "Claude Usage Monitor.app"

  zap trash: [
    "~/Library/Preferences/com.ClaudeUsageMonitor.plist",
  ]
end
