require 'action_controller/caching/pages'

module ActionController
  module Caching
    eager_autoload do
      autoload :Pages
      autoload :Storage
    end

    include Pages
    include Storage
  end
end

ActionController::Base.send(:include, ActionController::Caching::Pages)
