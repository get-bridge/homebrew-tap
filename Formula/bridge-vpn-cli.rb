# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../download-strategy.rb"
class BridgeVpnCli < Formula
  desc "CLI Utility for connecting to the Bridge VPN"
  homepage "https://github.com/get-bridge/bridge-vpn-cli"
  version "0.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/get-bridge/bridge-vpn-cli/releases/download/v0.1.3/bridge-vpn-cli_0.1.3_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "87d1c077354ee90b1d25bcc6a5eca10af32a5befe22e16b5b2ffa5cf6b57b440"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/bridge-vpn-cli/releases/download/v0.1.3/bridge-vpn-cli_0.1.3_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2959bf15c5ae6c0fa93d1fb01dcb55ac213e8ce10fc105f217a621c2d22a7909"
    end
  end

  depends_on "sshuttle"
  depends_on "openconnect"

  def install
    system "cp", "bridge-vpn-cli", "bridge-vpn"
    bin.install "bridge-vpn"
  end

  test do
    system "bin/bridge-vpn", "help"
  end
end
