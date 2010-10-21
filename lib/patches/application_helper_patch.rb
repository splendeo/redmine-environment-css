require_dependency 'application_helper'

module ApplicationHelperPatch
  
  def self.included(base) # :nodoc:
    base.send(:include, InstanceMethods)
    
    base.class_eval do
      alias_method_chain :body_css_classes, :environment
    end
  end
  
  module InstanceMethods
    def body_css_classes_with_environment
      "#{body_css_classes_without_environment} environment-#{Rails.env}"
    end
  end
end

ApplicationHelper.send(:include, ApplicationHelperPatch)