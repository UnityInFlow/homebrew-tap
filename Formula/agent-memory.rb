class AgentMemory < Formula
  desc "Persistent typed agent memory: MCP stdio server over embedded SQLite"
  homepage "https://github.com/UnityInFlow/agent-memory"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/UnityInFlow/agent-memory/releases/download/v#{version}/agent-memory-aarch64-apple-darwin.tar.gz"
      sha256 "b344ef40ce50361c641b0f66338163e4d8f6acef3a95c81257c5485d538d7405"
    else
      url "https://github.com/UnityInFlow/agent-memory/releases/download/v#{version}/agent-memory-x86_64-apple-darwin.tar.gz"
      sha256 "5e58a9c4f7b2d4abf3944773a68cc162091bfd33d85e4608064bdbf4c7097bec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/UnityInFlow/agent-memory/releases/download/v#{version}/agent-memory-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73d916d979a745ec4dfc2a6823350213687ae69313bf08f6a4ff20302d3cf08c"
    else
      url "https://github.com/UnityInFlow/agent-memory/releases/download/v#{version}/agent-memory-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f06c4aaf3f7c36532cd51d530a8fd6872680918cf65469a5d984b6cd1d18487d"
    end
  end

  def install
    bin.install "agent-memory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-memory --version")
  end
end
