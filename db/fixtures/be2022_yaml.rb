require "yaml"

# This is an encapsulation of the Yaml file for By-election 2022

module Db
  module Fixtures
    class Be2022Yaml
      FILENAME = "db/fixtures/be2022.yml"

      class << self
        def data
          ::YAML.load(file_content)
        end

        def file_content
          @file_content ||= ::File.read(FILENAME)
        rescue Errno::ENOENT => e
          puts "Filename #{FILENAME} read failed with error #{e}"
          raise e
        end
      end
    end
  end
end
