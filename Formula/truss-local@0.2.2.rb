# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../download-strategy.rb"
class TrussLocalAT022 < Formula
  desc "CLI for running a Local Kubernetes Cluster"
  homepage "https://github.com/get-bridge/truss-local"
  version "0.2.2"

  depends_on "k3d"
  depends_on "pulumi"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.2.2/truss-local-v0.2.2-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "964d5a2db1d18c9884262f54fdd0519d2f320deae80b9d4bb4882c1033337995"

      def install
        bin.install "truss-local"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.2.2/truss-local-v0.2.2-darwin-amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b2a2f7d7ec8a62ef0e420b8dc8b142265505b73eadc8df71325e0daa4f012565"

      def install
        bin.install "truss-local"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.2.2/truss-local-v0.2.2-linux-amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "403b2ed3752f5550e9c9fd8ba50bcc97a5a5008a58ea072595046537622047ff"

      def install
        bin.install "truss-local"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/get-bridge/truss-local/releases/download/v0.2.2/truss-local-v0.2.2-linux-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "898642f441d1f8dc22759d2bdb37ba8b8df7b4aff71c2c2cd087d6fbe562c928"

      def install
        bin.install "truss-local"
      end
    end
  end

  test do
    system "bin/truss-local", "help"
  end
end