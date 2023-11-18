class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.8.0/phase_cli_macos_amd64_1.8.0.zip"
  sha256 "3fb590aa14852ed5f9c7743bdf0dbc58e0b0c4c94015edb24633a4e241fce93e"
  version "1.8.0"

  def install
    # Find the phase binary in the extracted directory
    phase_binary = Dir.glob("*/phase").first
    internal_dir = Dir.glob("*/_internal").first

    # Install the binary
    bin.install phase_binary if phase_binary

    # Set execution permissions for the binary
    chmod 0755, bin/"phase" if phase_binary

    # Install the _internal directory
    prefix.install internal_dir if internal_dir
  end

  test do
    system "#{bin}/phase", "--version"
  end
end
