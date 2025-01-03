# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../download-strategy.rb"
class TrussLocal < Formula
  desc "CLI for running a Local Kubernetes Cluster"
  homepage "https://github.com/get-bridge/truss-local"
  version "0.5.3"

  depends_on "k3d"
  depends_on "pulumi"

  on_macos do
    on_intel do
      url "https://github.com/get-bridge/truss-local/releases/download/v0.5.3/truss-local-v0.5.3-darwin-amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "96a26fcc4cede6a69fe1ba198eede8456f274ba42c3921bb37bf61ffc178474b"

      def install
        bin.install "truss-local"
      end
    end
    on_arm do
      url "https://github.com/get-bridge/truss-local/releases/download/v0.5.3/truss-local-v0.5.3-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d17d6d08b8a45072b1285c48a79bef810ec14828064d90f530e4bd1b5719138a"

      def install
        bin.install "truss-local"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/get-bridge/truss-local/releases/download/v0.5.3/truss-local-v0.5.3-linux-amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "0263c8cb9856effe66ae1e65e312b06850b984493e4e0358bd5bac47ccef7461"

        def install
          bin.install "truss-local"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/get-bridge/truss-local/releases/download/v0.5.3/truss-local-v0.5.3-linux-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "c8fb3462d477508255d07012daba92dc7d6839ca8d9d5f1ac98906728f258c5f"

        def install
          bin.install "truss-local"
        end
      end
    end
  end

  test do
    system "bin/truss-local", "help"
  end
end
