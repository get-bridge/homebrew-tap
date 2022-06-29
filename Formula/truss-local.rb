# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../download-strategy.rb"
class TrussLocal < Formula
  desc "CLI for running a Local Kubernetes Cluster"
  homepage "https://github.com/get-bridge/truss-local"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.0.8/truss-local-v0.0.8-darwin-amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e819d0b748e4eda621f781af2d24841d203b96544806ead320b9ee6ade86940d"

      def install
        bin.install "truss-local"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.0.8/truss-local-v0.0.8-darwin-arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c4163f8cbf091fb0b83e7a1db1265d9d898986efbd1a13425ce93b57dcec3b04"

      def install
        bin.install "truss-local"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.0.8/truss-local-v0.0.8-linux-amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7a786f47535ca9dd642ae133863bee6733a9bf0564f2de884a7b008c397201c4"

      def install
        bin.install "truss-local"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.0.8/truss-local-v0.0.8-linux-arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "cf4b0d91795ec720d40c27522808ad1d7729cfca43d0f01425ed6a8852539106"

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
