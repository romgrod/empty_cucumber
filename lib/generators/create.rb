module EmptyCucumber
  class Create < Thor::Group

    include Thor::Actions

    desc "Generates empty files for a Cucumber project"

    argument :name, :type => :string, :required => true, :desc => "Project name. This will be the root folder."

    def self.source_root
      File.dirname(__FILE__) + "/templates/"
    end

    def create_folders
      empty_directory("#{name}/features")
      empty_directory("#{name}/features/support")
      empty_directory("#{name}/features/step_definitions")
      empty_directory("#{name}/features/support/pages")
    end

    def copy_env
      template "env.rb.tt", "#{name}/features/support/env.rb"
    end

    def copy_hooks
      template "hooks.rb.tt", "#{name}/features/support/hooks.rb"
    end

    def copy_feature_template
      template "feature_example.feature.tt", "#{name}/features/feature_example.feature"
    end

    def copy_cucumber_yml
      template "cucumber.yml.tt", "#{name}/cucumber.yml"
    end

    def copy_steps_def_file
      template "steps_example.rb.tt", "#{name}/features/step_definitions/steps_example.rb"
    end

    def copy_rakefile_file
      template "rakefile.rb.tt", "#{name}/Rakefile"
    end

    def copy_gemfile
      template "Gemfile.tt", "#{name}/Gemfile"
    end

  end
end

