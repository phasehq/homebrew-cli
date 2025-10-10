class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  version "1.21.1"

  on_macos do
    on_arm do
      url "https://github.com/phasehq/cli/releases/download/v#{version}/phase_cli_macos_arm64_#{version}.zip"
      sha256 "5fb52e4e3dae4f18cbd321523a8350efe48c6e4a5f1309596c367ba831710341"
    end

    on_intel do
      url "https://github.com/phasehq/cli/releases/download/v#{version}/phase_cli_macos_amd64_#{version}.zip"
      sha256 "334757528a3513a910ead8f7693fbe4b16a3afaae7a88d1ef878e89195c119c2"
    end
  end

  def install
    # Install the phase binary
    bin.install "phase/phase"

    # Install the _internal directory in the bin directory
    bin.install "phase/_internal"

    # Set execution permissions for the phase binary
    chmod 0755, bin/"phase"
  end

  test do
    system "#{bin}/phase", "--version"
  end
end
