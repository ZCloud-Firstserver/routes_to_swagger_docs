# frozen_string_literal: true

require_relative '../base_hash_diff_manager'

module RoutesToSwaggerDocs
  module Schema
    module Components
      class SchemaDiffManager < BaseHashDiffManager
        def initialize(before_schema_data, after_schema_data)
          super
          @major_category     = 'components'
          @middle_category    = 'schemas'
          @before_schema_data = normalized(before_schema_data)
          @after_schema_data  = normalized(after_schema_data)
        end
      end
    end
  end
end
