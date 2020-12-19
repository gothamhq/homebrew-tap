# This file was generated by GoReleaser. DO NOT EDIT.
class Gotham < Formula
  desc "An awesome static site generator based on Hugo."
  homepage "https://GothamHQ.com"
  version "0.10.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/gothamhq/gotham/releases/download/v0.10.1/gotham-v0.10.1-macos-amd64.tar.gz"
    sha256 "a00b3a30ba919b0504d58c0a4cd9382935a7f05e28da7c1b90a8a0e522a3b5dc"
  end

  depends_on "go"

  def install
    bin.install "gotham"
  end

  test do
    site = testpath/"hops-yeast-malt-water"
    system "#{bin}/gotham", "new", "site", site
    assert_predicate testpath/"#{site}/config.toml", :exist?
  end
end
