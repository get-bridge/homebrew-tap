# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrussCli < Formula
  desc "CLI to help manage many k8s clusters"
  homepage "https://github.com/get-bridge/truss-cli"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/truss-cli/releases/download/v0.2.4/truss-cli_0.2.4_Darwin_x86_64.tar.gz"
      sha256 "ae654dfa3742941a62d5e23f689b15855b4368ea562aeef8603040918561d234"

      def install
        bin.install "truss"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/get-bridge/truss-cli/releases/download/v0.2.4/truss-cli_0.2.4_Linux_arm64.tar.gz"
      sha256 "d8520769ee3f225c78422998e3d19dbd7af9c457433295fbf16ee5f63aeeb232"

      def install
        bin.install "truss"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/truss-cli/releases/download/v0.2.4/truss-cli_0.2.4_Linux_x86_64.tar.gz"
      sha256 "3cca685d9804708c97d6726b936be38cb2d6241d893d140e4f70480e58ff6f40"

      def install
        bin.install "truss"
      end
    end
  end

  depends_on "kubectl"
  depends_on "vault"
  depends_on "sshuttle"

  test do
    system "bin/truss", "help"
  end
end
