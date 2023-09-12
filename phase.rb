class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.6.3/phase_cli_macos_amd64_1.6.3"
  sha256 "0839e3b69e7142dad6c1152a1db0a4377bc4d1331542d3c7ea37418c3b4de5a7"
  version "1.6.3"

  def install
    # Rename the binary to "phase" (if needed)
    mv "phase_cli_macos_amd64_1.6.3", "phase" unless File.exist?("phase")
    
    # Set permissions before installation
    chmod 0755, "phase"
    
    # Install the binary
    bin.install "phase"
  end

end
