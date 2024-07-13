#
#  mplight.gemspec  --  MPLight Gem specification
#

$:.unshift "./lib"
require "mplight"

Gem::Specification.new do |s|
  s.name        = "mplight"
  s.version     = MPLight::VERSION
  s.summary     = "Lightweight MessagePack tool"
  s.description = <<~EOT
                    This a a very small (<300 loc) library for
                    writing and reading MessagePack data.
                  EOT
  s.license     = "LicenseRef-LICENSE"
  s.authors     = ["Bertram Scharpf"]
  s.email       = "software@bertram-scharpf.de"
  s.homepage    = "http://github.com/BertramScharpf/mplight"

  s.requirements          = "Just Ruby"
  s.required_ruby_version = Gem::Requirement.new ">= 3.0.0"

  s.require_paths    = %w(lib)
  s.extensions       = %w()
  s.files            = %w(
                         README.md
                         LICENSE
                         lib/mplight.rb
                         lib/mplight/bufferio.rb
                         testit
                       )
  s.executables      = %w(
                       )

  s.extra_rdoc_files = %w(
                         LICENSE
                       )
end

