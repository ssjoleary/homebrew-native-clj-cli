require_relative "../custom_download_strategy"

class NativeCljCli < Formula
  desc "Clojure CLI in a GraalVM native image"
  homepage "https://github.com/ssjoleary/native-clj-li"
  version "0.0.1"

  url "https://github.com/ssjoleary/native-clj-cli/releases/download/v0.0.1/native_clj_cli_0.0.1_macOS_64bit.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "0ccca1f483da0733725ce06a1b6edec714d228ce2e8f08d5b13c86fb657646e9"

  def install
    bin.install "native-clj-cli"
  end

  test do
    system "#{bin}/native-clj-cli --help"
  end
end
