# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../download-strategy.rb"
class TrussLocal < Formula
  desc "CLI for running a Local Kubernetes Cluster"
  homepage "https://github.com/get-bridge/truss-local"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.0.6/truss-local-v0.0.6-darwin-arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4e29f888f198010580572f54046485e3eaea3ea4a9fac7d99b5daef445d9f465"

      def install
        bin.install "truss-local"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.0.6/truss-local-v0.0.6-darwin-amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7c65350e2784099ceda7808636e9655c8fb9d3bc100ec749ab741b061fa38821"

      def install
        bin.install "truss-local"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.0.6/truss-local-v0.0.6-linux-amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "64947d61e022277dad46960d26394eaf5cde0aea44b86b4a8ca4fc5a96642a69"

      def install
        bin.install "truss-local"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.0.6/truss-local-v0.0.6-linux-arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d564cb3cb44325bfad9a137099c8675cca613fbc46b0feddc130897f7a17e774"

      def install
        bin.install "truss-local"
      end
    end
  end

  depends_on "pulumi"
  depends_on "k3d"

  test do
    system "bin/truss-local", "help"
  end
end
