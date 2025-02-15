# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Actionlint < Formula
  desc "Static checker for GitHub Actions workflow files"
  homepage "https://github.com/rhysd/actionlint#readme"
  version "1.3.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.3.0/actionlint_1.3.0_darwin_amd64.tar.gz"
      sha256 "b5a14dbcf3ce4d4bf8101bd35c263c0175c8a390f2bd68a382eab6407d392fb2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.3.0/actionlint_1.3.0_linux_amd64.tar.gz"
      sha256 "3640e7ae85f4064e7f83322ef7d50e035f03e8c3eee4af88a88f2b02eea9c91c"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.3.0/actionlint_1.3.0_linux_armv6.tar.gz"
      sha256 "cd9249833bc6501f02cbaa1c8fbc8a52253a269bc7193fef005c662fbf76d870"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.3.0/actionlint_1.3.0_linux_arm64.tar.gz"
      sha256 "3eb0863200cd72f3d7273e8bb480ac82cd81c42ccb372ac9a6324fa8a12a0078"
    end
  end

  def install
    bin.install "actionlint"
  end

  test do
    system "#{bin}/actionlint -version"
  end
end
