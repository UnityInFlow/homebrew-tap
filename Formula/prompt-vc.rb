# ==============================================================================
# Homebrew formula skeleton -- NOT tapped or published this milestone.
#
# The `url`/`sha256` pairs below are placeholders. They are filled in AFTER
# the user manually cuts a real v0.0.1 release (pushes a `v0.0.1` tag,
# `.github/workflows/release.yml` builds the 5 targets, and the resulting
# GitHub Release assets + SHA256SUMS become the real values here). Until
# then this formula is not registered in any tap and `brew install` cannot
# resolve it -- it is staged release-collateral only (DIST-01, prepare-only).
# ==============================================================================
class PromptVc < Formula
  desc "Version control for system prompts -- semantic diff, A/B comparison runs, changelogs"
  homepage "https://github.com/UnityInFlow/prompt-vc"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/UnityInFlow/prompt-vc/releases/download/v0.0.1/pvc-aarch64-apple-darwin"
      sha256 "345e68a67bdc36717472c7aed28dd7542e899bc28ab92c13ff7c243989836cd1"
    end
    on_intel do
      url "https://github.com/UnityInFlow/prompt-vc/releases/download/v0.0.1/pvc-x86_64-apple-darwin"
      sha256 "80d07902ae8cf09d17227f626dd98014048db31fa6ca8922bb4cdf5640e88dbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UnityInFlow/prompt-vc/releases/download/v0.0.1/pvc-aarch64-unknown-linux-gnu"
      sha256 "69c2e9a80ef4c9d71177c716b8737352c27f15819259d829fa832798902b8443"
    end
    on_intel do
      url "https://github.com/UnityInFlow/prompt-vc/releases/download/v0.0.1/pvc-x86_64-unknown-linux-gnu"
      sha256 "33007e0fb6dacb5d55bc5e4e0a2294c03829109818963524490b5d8f51d8a8be"
    end
  end

  def install
    binary_name = Dir["pvc-*"].first
    bin.install binary_name => "pvc"
  end

  test do
    system "#{bin}/pvc", "--version"
  end
end
