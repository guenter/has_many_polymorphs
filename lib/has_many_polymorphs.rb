
require 'active_record'

require 'has_many_polymorphs/reflection'
require 'has_many_polymorphs/association'
require 'has_many_polymorphs/class_methods'

require 'has_many_polymorphs/support_methods'
require 'has_many_polymorphs/base'

class ActiveRecord::Base
  extend ActiveRecord::Associations::PolymorphicClassMethods 
end

if ENV['HMP_DEBUG'] || ENV['RAILS_ENV'] =~ /development|test/ && ENV['USER'] == 'eweaver'
  require 'has_many_polymorphs/debugging_tools' 
end


_logger_debug "loaded ok"
