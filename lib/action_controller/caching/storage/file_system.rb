require 'fileutils'

module ActionController
  module Caching
    module Storage
      module FileSystem
        def self.store_item(content, path, gzip)
          FileUtils.makedirs(File.dirname(path))
          File.open(path, 'wb+') { |f| f.write(content) }
          if gzip
            Zlib::GzipWriter.open(path + '.gz', gzip) { |f| f.write(content) }
          end
        end

        def self.remove_item(path)
          File.delete(path) if File.exist?(path)
          File.delete(path + '.gz') if File.exist?(path + '.gz')
        end
      end
    end
  end
end
