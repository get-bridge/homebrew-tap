# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrussCli < Formula
  desc "CLI to help manage many k8s clusters"
  homepage "https://github.com/get-bridge/truss-cli"
  version "0.3.1"

  depends_on "kubectl"
  depends_on "vault"
  depends_on "sshuttle"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/get-bridge/truss-cli/releases/download/v0.3.1/truss-cli_0.3.1_Darwin_arm64.tar.gz"
      sha256 "2c717496463cc1f13aa6e1162d9d6aaf02859c25dead7fe6ace8f02d329e01d7"

      def install
        bin.install "truss"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/truss-cli/releases/download/v0.3.1/truss-cli_0.3.1_Darwin_x86_64.tar.gz"
      sha256 "557be0e6895f4151067477f3f1c0e5a35d8fa5f46ef80c4eb1dd2e06d191b6bc"

      def install
        bin.install "truss"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/get-bridge/truss-cli/releases/download/v0.3.1/truss-cli_0.3.1_Linux_arm64.tar.gz"
      sha256 "becde6a8d646b5e4da18cdfdb5ea5768f0a44b433a42df6e538e1e1004c8c6d9"

      def install
        bin.install "truss"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/truss-cli/releases/download/v0.3.1/truss-cli_0.3.1_Linux_x86_64.tar.gz"
      sha256 "9b571be09a816c2074fc318c277c107c9ec19397732c7c650b46bbd4536e739a"

      def install
        bin.install "truss"
      end
    end
  end

  test do
    system "bin/truss", "help"
  end
end
