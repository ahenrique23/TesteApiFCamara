require "httparty"
require "yaml"

CEP = YAML.load_file('data/cep.yml')

ST = YAML.load_file('data/status.yml')