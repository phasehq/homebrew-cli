class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  version "2.0.0"

  on_macos do
    on_arm do
      url "https://github.com/phasehq/cli/releases/download/v#{version}/phase_cli_#{version}_darwin_arm64"
      sha256 "c0e9824b192dac0e4b2cbf80412638e6790bc95f36387362869a31fac21a8184"
    end

    on_intel do
      url "https://github.com/phasehq/cli/releases/download/v#{version}/phase_cli_#{version}_darwin_amd64"
      sha256 "ae3dea0fdedfb4dcff24de4de96a1e0070e45935f90ead3857e08218dba0af25"
    end
  end

  def install
    bin.install Dir["phase_cli_*"].first => "phase"
  end

  test do
    system "#{bin}/phase", "--version"
  end
end
