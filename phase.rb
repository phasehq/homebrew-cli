class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.7.4/phase_cli_macos_amd64_1.7.4"
  sha256 "09c345463d91536ee98d9cf0b81241d24c483de038ca4889ad6abc74011e5e50"
  version "1.7.4"

  def install
    # Rename the binary to "phase" (if needed)
    mv "phase_cli_macos_amd64_1.7.4", "phase" unless File.exist?("phase")
    
    # Set permissions before installation
    chmod 0755, "phase"
    
    # Install the binary
    bin.install "phase"
  end

end
