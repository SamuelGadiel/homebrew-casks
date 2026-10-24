cask "claudes" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000000000000000"

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
