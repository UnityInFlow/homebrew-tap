# Homebrew formula for prompt-vc. Distributed via the UnityInFlow tap:
#   brew install unityinflow/tap/prompt-vc
# The `url`/`sha256` pairs point at the v0.0.1 GitHub Release binaries.
class PromptVc < Formula
  desc "Version control for system prompts: semantic diff, A/B runs, changelogs"
  homepage "https://github.com/UnityInFlow/prompt-vc"
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
