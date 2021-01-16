# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cf6ddns < Formula
  desc "Cloudflare IPv6 DDNS on macOS 11"
  homepage "https://github.com/xiruizhao/cloudflare-ipv6-ddns"
  # download binary from upstream directly
  url "https://github.com/xiruizhao/cloudflare-ipv6-ddns/releases/download/v0.0.1-alpha/cloudflare_ipv6_ddns"
  version "0.0.1-alpha"
  sha256 "6ea4517b97028325ded8220aa17c5ffce504c11a4e2e3aed8bef04f7717db5fa"
  license "Mozilla Public License Version 2.0"

  def install
    bin.install "cloudflare_ipv6_ddns"
  end

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>KeepAlive</key>
          <true/>
          <key>RunAtLoad</key>
          <true/>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{bin}/cloudflare_ipv6_ddns</string>
          </array>
        </dict>
      </plist>
    EOS
  end
end
