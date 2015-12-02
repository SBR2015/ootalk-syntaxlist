# coding: utf-8
require 'yaml'

require "ootalk/syntaxlist/version"

module Ootalk
  module Syntaxlist
    def create(locale = :en)
      # 抽象文法のリストを取得
      load_file = File.expand_path('../../../config/locales', __FILE__) << "/as.#{locale}.yml"
      # 抽象文法リストの出力結果を生成
      i = 0
      options = []
 
      begin
        abstract_syntax = YAML.load_file(load_file)
        abstract_syntax[locale.to_s].map do |key, _value|
          this_class = {}
          this_class[:id] = i + 1
          this_class[:class_name] = key
          this_class[:name] = _value['name']
          this_class[:string] = _value['string']
          this_class[:description] = _value['description']
          options.push(this_class)
          i += 1
        end
      rescue
      end
      
      options
    end
    module_function :create
  end
end
