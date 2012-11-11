require "sprintly/resource"

module Sprintly
  class Product < Resource
    
    attr_accessor :product_id
    
    def self.[](product_id)
      self.new(product_id)
    end
    
    def initialize(product_id)
      super :product, {:product_id => product_id}
    end
    
  end
end

class ResourceDoesNotExistError < StandardError
end