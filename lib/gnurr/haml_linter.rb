require 'gnurr/ruby_base_linter'

module Gnurr
  # HAML Linter
  class HamlLinter < RubyBaseLinter
    def type
      :haml
    end

    def color
      :magenta
    end

    def command
      'haml-lint -r json'
    end

    def filter(file)
      File.extname(file) == '.haml'
    end

    private

    def requirements_met?
      Gem::Specification.find_all_by_name('haml_lint').any?
    end
  end
end
