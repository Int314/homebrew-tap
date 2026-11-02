cask "nokori-ai" do
  version "0.1.0"
  sha256 "f959998e99506d6287010b430b5b41d432aeaf9098bf3cb4a9c697e634d7178c"

  url "https://github.com/Int314/nokori-ai/releases/download/v#{version}/Nokori-AI-#{version}.zip"
  name "Nokori AI"
  desc "Claude Code and Codex subscription usage in the menu bar"
  homepage "https://github.com/Int314/nokori-ai"

  # Sparkle updates the app itself.
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Nokori AI.app"

  zap trash: [
    "~/Library/Application Support/Nokori AI",
    "~/Library/Caches/dev.int314.nokori.mac",
    "~/Library/HTTPStorages/dev.int314.nokori.mac",
    "~/Library/Preferences/dev.int314.nokori.mac.plist",
  ]
end
