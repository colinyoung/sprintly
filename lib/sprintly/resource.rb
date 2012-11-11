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
      ids = hash.select {|item| item =~ /\_id$/ }
      @url << "/#{ids.values[0]}" unless ids.empty?
    end
    
    def to_url
      @url
    end
    
    def to_s
      to_url
    end
    
    def to_a
      # @Todo: return the items from the Sprintly response.
      @response || []
    end
    
    def method_missing(name, hash={})
      Resource.new(name, hash).to_a
    end
    
    def ==(other)
      to_url == other.to_url
    end
    
  end
end