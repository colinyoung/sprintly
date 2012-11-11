require 'active_support/inflector'

module Sprintly
  class Resource
    
    attr_accessor :name, :url
    
    def initialize(name, hash={})
      @url = Sprintly::BASE.dup
      append_path! name, hash
    end
    
    def append_path!(element, hash={})
      @url << "/#{element.to_s.pluralize}"
      id = hash.first {|item| item =~ /\_id$/ }
      @url << "/#{id.last}" unless id.empty?
    end
    
    def to_url
      @url
    end
    
    def to_s
      to_url
    end
    
    def method_missing(name, hash={})
      Resource.new(name, hash)
    end
    
    def ==(other)
      to_url == other.to_url
    end
    
  end
end