require 'action_controller/caching/storage/file_system'

module ActionController
  module Caching
    module Storage
      include FileSystem
    end
  end
end
