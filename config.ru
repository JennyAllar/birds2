require_relative 'bird_app'
require 'sequel'

DB = Sequel.connect('postgres://gschool_user:password@localhost/birds2_test')


run BirdApp