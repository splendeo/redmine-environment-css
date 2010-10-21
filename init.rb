require 'redmine'

require 'patches/application_helper_patch'

Redmine::Plugin.register :redmine_polls do
  name 'Environmnet CSS'
  author 'Francisco de Juan'
  url 'http://development.splendeo.es/projects/redm-environment-css'
  author_url 'http://www.splendeo.es'
  description 'A plugin for adding the environment name as class to the body of every HTML page'
  version '0.1'
end
