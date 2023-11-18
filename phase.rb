class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.8.0/phase_cli_macos_amd64_1.8.0.zip"
  sha256 "<YOUR_SHA256_HASH>"
  version "1.8.0"

  def install
    # Debug: List current directory contents
    system "ls", "-la"

    # Extract the contents of the zip file
    system "unzip", "phase_cli_macos_amd64_#{version}.zip", "-d", "phase"

    # Move into the extracted directory
    Dir.chdir("phase/macOS-binary/phase") do
      # Debug: List current directory contents
      system "ls", "-la"

      # Rename the binary to "phase" (if needed)
      mv "phase_cli_macos_amd64_#{version}", "phase" unless File.exist?("phase")
      
      # Set permissions for the binary
      chmod 0755, "phase"

      # Install the binary
      bin.install "phase"

      # Install the _internal directory
      prefix.install "_internal"
    end
  end

  test do
    system "#{bin}/phase", "--version"
  end
end
