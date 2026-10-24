cask "claudes" do
  version "1.0.1"
  sha256 "586c80743d0a2da7d6210ee30788f06c0707df70b23843dd06117e4ac85cbe51"

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
