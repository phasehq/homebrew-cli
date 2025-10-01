class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  version "1.20.0"

  on_macos do
    on_arm do
      url "https://github.com/phasehq/cli/releases/download/v1.20.0/phase_cli_macos_arm64_1.20.0.zip"
      sha256 "0401ab98941364b6dc3447f02362bde619144fed289fab0340801871dd15971d"
    end

    on_intel do
      url "https://github.com/phasehq/cli/releases/download/v1.20.0/phase_cli_macos_amd64_1.20.0.zip"
      sha256 "86c8644df6453a26f9380c5bc33566445973ec58f179547fa4575aca0f3f0d6b"
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
