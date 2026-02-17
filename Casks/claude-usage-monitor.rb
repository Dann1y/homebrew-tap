cask "claude-usage-monitor" do
  version "1.0.0"
  sha256 "7484d269d4fe8091d847a18f15dffa46ff45d8885ff8d1357c8816ae0f37c8ee"

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
