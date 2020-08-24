# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../download-strategy.rb"
class BridgeVpnCli < Formula
  desc ""
  homepage ""
  version "0.1.0-rc6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/instructure-bridge/bridge-vpn-cli/releases/download/v0.1.0-rc6/bridge-vpn-cli_0.1.0-rc6_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "bf006f9ef3cb00ecff7bef202db5abb822013370482f48b1cc26cc39e96c92fe"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/instructure-bridge/bridge-vpn-cli/releases/download/v0.1.0-rc6/bridge-vpn-cli_0.1.0-rc6_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3af7b65cecd1734f2373d11494f0a3d4d2406399dcf391b3701c2dbb62b17642"
    end
  end
  
  depends_on "sshuttle"
  depends_on "openconnect"

  def install
    system "cp", "bridge-vpn-cli", "bridge-vpn"
    bin.install "bridge-vpn"
  end

  test do
    system bin/"bridge-vpn", "help"
  end
end
