require 'formula'

class Phpenv < Formula
  homepage 'https://github.com/humanshell/phpenv'
  url 'https://github.com/humanshell/phpenv/archive/c2e51e51427751431b0b322722a3bb9b6c0061bc.tar.gz'
  sha1 '2f8e75e3a101edc66e1e2439c906363d25afe9de'
  head 'https://github.com/humanshell/phpenv.git'
  version 'c2e51e5'

  def install
    inreplace 'libexec/phpenv', '/usr/local', HOMEBREW_PREFIX
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
    To finish installing phpenv:

      * Add phpenv init to your shell to enable shims and autocompletion.
        $ echo 'eval "$(phpenv init -)"' >> ~/.bash_profile
      * Restart your shell so the path changes take effect. You can now begin using phpenv.
        $ exec $SHELL
      * Rebuild the shim binaries. You should do this any time you install a new PHP binary.
        $ phpenv rehash
    EOS
  end
end
