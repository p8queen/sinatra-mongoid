# miapp.rb
require 'sinatra'
require 'mongoid'

Mongoid.load!('./mongoid.yml', :development)

class Person
  include Mongoid::Document
  
  field :first_name
  field :middle_initial
  field :last_name
end


get '/' do
  person = Person.new(:first_name => "Ludwig", :last_name => "Beethoven")
  person.save

  "Hello, I am #{person.first_name} #{person.last_name}"
end

