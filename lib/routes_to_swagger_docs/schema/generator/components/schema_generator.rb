require 'forwardable'
require 'fileutils'
require_relative '../base_generator'

module RoutesToSwaggerDocs
  module Schema
    module Components
      class SchemaGenerator < BaseGenerator
        def initialize(schema_data = {}, options = {})
          super(schema_data, options)
          sorted_schema_data = deep_sort(schema_data, "schemas")
          @components_schemas = sorted_schema_data["schemas"]
          @glob_schema_paths = create_glob_components_schemas_paths
        end
      
        def generate_components_schemas
          if components_schemas_file_do_not_exists?
            logger.info " <From routes data>"
            generate_components_schemas_from_routes_data
          else
            logger.info " <From schema files>"
            generate_components_schemas_from_schema_fiels        
          end
        end

        private
        
        attr_accessor :components_file_paths
        alias :components_schemas_files_paths :schema_files_paths
        alias :components_schemas_file_do_not_exists? :schema_file_do_not_exists?

        def generate_components_schemas_from_schema_fiels
          components_schemas_from_schema_files = components_schemas_files_paths.each_with_object({}) do |path, data|
            yaml = YAML.load_file(path)
            data.deep_merge!(yaml)
            full_path = File.expand_path(path, "./")
            logger.info "  Fetch Components schema file: \t#{full_path}"
          end
          @components_schemas.deep_merge!(components_schemas_from_schema_files["components"]["schemas"])
          process_when_generate_components_schemas(components_schemas_override: true)
        end

        def generate_components_schemas_from_routes_data
          process_when_generate_components_schemas
        end

        def process_when_generate_components_schemas(components_schemas_override: false)
          logger.info " <Update Components schema files (components/schemas)>"
          @components_schemas.each do |schema_name, data|
            result = {
              "components" => {
                "schemas" => { "#{schema_name}" => data }
              }
            }

            dirs = "components/schemas"
            filename_with_namespace = schema_name.split('_').map(&:underscore).join('/')
            save_path = save_path_for(filename_with_namespace, dirs)

            unless skip_merge?(save_path)
              File.write(save_path, result.to_yaml)
            end
            
            if components_schemas_override
              logger.info "  Merge schema file: \t#{save_path}"
            else
              logger.info "  Write schema file: \t#{save_path}"
            end
          end
        end

        def skip_merge?(path)
          path.in? paths_config.many_components_file_paths
        end
      
        def create_glob_components_schemas_paths
          if components_file_paths.present?
            components_file_paths
          else
            ["#{schema_save_dir_path}/components/schemas/**/**.yml"]
          end
        end
      end
    end
  end
end