require 'formula'

class Phpenv < Formula
  homepage 'https://github.com/phpenv/phpenv'
  url 'https://github.com/phpenv/phpenv/archive/00a7c8af25d96974841bf096103e28480837de33.tar.gz'
  sha1 '099f16dbdc13d71e590abd7390af37d00b234eea'
  head 'https://github.com/phpenv/phpenv.git'
  version '099f16d'

  def install
    prefix.install 'bin', 'phpenv.d', 'completions', 'libexec'
    # Run rehash after installing.
    system "#{bin}/phpenv", "rehash"
  end

  def caveats; <<-EOS.undent
    To enable shims add to your profile:
      eval "$(phpenv init -)"
    EOS
  end
end
