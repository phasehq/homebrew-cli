class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  version "1.21.3"

  on_macos do
    on_arm do
      url "https://github.com/phasehq/cli/releases/download/v#{version}/phase_cli_macos_arm64_#{version}.zip"
      sha256 "5810fa35e1a2c62628a06b293b20f9cd4dc693210295851efb134971266fb444"
    end

    on_intel do
      url "https://github.com/phasehq/cli/releases/download/v#{version}/phase_cli_macos_amd64_#{version}.zip"
      sha256 "02abc2aa71d3e9be9fa2a74af3cd81fb7f349f81485c343b1b9a58b750fd7a78"
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
