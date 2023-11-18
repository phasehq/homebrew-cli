class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.8.0/phase_cli_macos_amd64_1.8.0.zip"
  sha256 "3fb590aa14852ed5f9c7743bdf0dbc58e0b0c4c94015edb24633a4e241fce93e"
  version "1.8.0"

  def install
    # Define the path for the downloaded zip file
    zip_file = "#{buildpath}/phase_cli_macos_amd64_#{version}.zip"

    # Extract the contents of the zip file
    system "unzip", zip_file, "-d", "phase"

    # Move into the extracted directory
    Dir.chdir("phase/macOS-binary/phase") do
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
