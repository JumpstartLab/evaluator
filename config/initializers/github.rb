github_config_file = File.join(Rails.root, "config", "github.yml")
github_config = YAML.load File.open(github_config_file)

current_environment = ENV['RAILS_ENV'] || "development"
github_config_for_environment = github_config[current_environment]

github_config_for_environment =

github_config_for_environment = {
  "secret" => ENV['GITHUB_SECRET'] || github_config_for_environment['secret'],
  "key" => ENV['GITHUB_KEY'] || github_config_for_environment['key']
}

GitHub = OpenStruct.new github_config_for_environment