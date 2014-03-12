require "formula"

class Muttprint < Formula
  homepage "http://muttprint.sourceforge.net/"
  url "https://downloads.sourceforge.net/project/muttprint/muttprint/muttprint-0.72d/muttprint-0.72d.tar.gz"
  sha1 "532a1c7ed019b0b50c78caf7eeb17f5cd34d3d1e"

  def install
    system "make", "-B", "prefix=#{prefix}", "docdir=#{share}/doc/packages/", "install"
  end

  test do
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "muttprint"
  end
end
