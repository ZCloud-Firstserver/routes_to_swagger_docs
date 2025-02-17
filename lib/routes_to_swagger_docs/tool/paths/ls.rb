# frozen_string_literal: true

require_relative '../../base'

module RoutesToSwaggerDocs
  module Tool
    module Paths
      class Ls < Base
        def print
          Dir.glob("#{schema_save_dir_path}/paths/**/**.yml").each do |path|
            puts path
          end
        end
      end
    end
  end
end
