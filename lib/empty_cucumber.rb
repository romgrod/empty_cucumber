require 'thor'

require_relative 'generators/create'

module EmptyCucumber
  class Base < Thor

    desc "create","Creates an empty Cucumber project structure"
    def prepare(name)

      name.downcase!

      EmptyCucumber::Create.start([name])
    end
  end
end
