cask "nokori-ai" do
  version "0.2.0"
  sha256 "6e0974d3c3ac8562962d03959f0755407170cbce31bf53aa85ab36c98cd11c21"

  url "https://github.com/Int314/nokori-ai/releases/download/v#{version}/Nokori-AI-#{version}.zip"
  name "Nokori AI"
  desc "Claude Code and Codex subscription usage in the menu bar"
  homepage "https://github.com/Int314/nokori-ai"

  # Sparkle updates the app itself.
  auto_updates true
  depends_on macos: :sonoma

  app "Nokori AI.app"

  zap trash: [
    "~/Library/Application Support/Nokori AI",
    "~/Library/Caches/dev.int314.nokori.mac",
    "~/Library/HTTPStorages/dev.int314.nokori.mac",
    "~/Library/Preferences/dev.int314.nokori.mac.plist",
  ]
end
