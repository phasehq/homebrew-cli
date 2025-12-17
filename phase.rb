class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  version "1.21.2"

  on_macos do
    on_arm do
      url "https://github.com/phasehq/cli/releases/download/v#{version}/phase_cli_macos_arm64_#{version}.zip"
      sha256 "029e10c6531b33a7750227d7e7ee05f257f766d805e7e36a983b45ba3b9f8f9d"
    end

    on_intel do
      url "https://github.com/phasehq/cli/releases/download/v#{version}/phase_cli_macos_amd64_#{version}.zip"
      sha256 "bac807756f584dd6f064cacf3cdbae889b901f25f747974332c8efd19b45d26e"
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
