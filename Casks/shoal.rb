# Homebrew cask for Shoal. Lives in the tap repo (austinejose1516/homebrew-tap)
# as Casks/shoal.rb. scripts/release.sh prints this file with the new
# version and sha256 filled in.
cask "shoal" do
  version "0.12.61"
  sha256 "8ae319a76074304929c9a81fd118069693ea5dc10971d4d0e02f68bc78a428b8"

  url "https://github.com/austinejose1516/shoal-releases/releases/download/v#{version}/Shoal-#{version}.dmg"
  name "Shoal"
  desc "Run coding agents side by side, each in its own git worktree"
  homepage "https://github.com/austinejose1516/shoal-releases"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Shoal.app"
  binary "#{appdir}/Shoal.app/Contents/MacOS/shoal"

  zap trash: [
    "~/Library/Application Support/shoal",
    "~/.config/shoal",
  ]
end
