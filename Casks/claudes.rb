cask "claudes" do
  version "1.1.1"
  sha256 "76fea35614a464f961678b2696492dc01bcf5f009d7b754b4b81287393a89a5f"

  url "https://github.com/SamuelGadiel/claudes/releases/download/v#{version}/ClaudeS-#{version}.zip",
      verified: "github.com/SamuelGadiel/claudes/"
  name "ClaudeS"
  desc "Menu-bar app to manage multiple Claude Code accounts on macOS"
  homepage "https://github.com/SamuelGadiel/claudes"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "ClaudeS.app"

  zap trash: [
    "~/Library/Application Support/ClaudeS",
    "~/Library/Preferences/com.samuelgadiel.ClaudeS.plist",
    "~/Library/Saved Application State/com.samuelgadiel.ClaudeS.savedState",
  ]
end
