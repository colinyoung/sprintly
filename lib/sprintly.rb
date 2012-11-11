require "sprintly/version"
require "sprintly/product"

module Sprintly
  # Your code goes here...
  
  BASE = 'https://sprint.ly/api'
  
  def self.[](product_id)
    Sprintly::Product[product_id]
  end
end
