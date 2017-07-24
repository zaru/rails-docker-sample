require 'yaml'
require 'json'

# yaml_to_env.rb
#
# raysCIの設定YAMLファイルをパースして環境変数として読みやすいように出力をする。
#
# Usage
#
#   eval $(ruby yaml_to_env.rb | jq -r 'to_entries[] | "export  \(.key)=\(.value);"')
#

data = YAML.load_file(".raysci/config.yml")
puts data.to_json