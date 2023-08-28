class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://phase-pkg.s3.eu-central-1.amazonaws.com/macos/phase_cli_macos_amd64_1.5.2"
  sha256 "1c5ec3091c83ad4cf6fb25ec3b0d4c207bfcdc03054ae31473ea01b7520684de"
  version "1.5.2"

  def install
    # Rename the binary to "phase" (if needed)
    mv "phase_cli_macos_amd64_1.5.2", "phase" unless File.exist?("phase")

    # Ensure the binary has the correct permissions
    chmod 0755, "phase"

    # Install the binary
    bin.install "phase"
  end
end
