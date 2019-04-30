# reference
# https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#path-item-object
# Support Field Name: get, put, post, delete, patch
require_relative 'base_object'

module RoutesToSwaggerDocs
  module Schema
    module V3
      class PathItemObject < BaseObject
        SUPPORT_FIELD_NAME = %w(get put post delete patch)
    
        def initialize(route_data)
          super
          @route_data  = route_data
          @verb        = route_data[:verb]
          @tag_name    = create_tag_name
          @schema_name = create_schema_name
          @format_name = create_format_name
          support_field_name?
        end
  
        def to_doc
          schema = {
            # Operation Object (Support Filed Type is String)
            "#{@verb}" => {
              "tags" => ["#{@tag_name}"],
              "summary" => "#{@verb} summary",
              "description" => "#{@verb} description",
              # Response Object
              "responses" => {
                "default" => {
                  "description" => ""
                },
                "200" => {
                  "description" => "#{@tag_name} description",
                  "content" => {
                    "application/json" => {
                      "schema" => {
                        "$ref" => "#/components/schemas/#{@schema_name}"
                      }
                    }
                  }
                }
              },
              "deprecated" => false
            }
          }
          attach_media_type(schema)
        end
  
        private

        def create_tag_name
          @route_data[:tag_name]
        end

        def create_schema_name
          if tag_use_namespace
            @route_data[:tag_name].split("/").map(&:camelcase).join("_")            
          else
            @route_data[:tag_name].split("/").last.camelcase
          end
        end

        def create_format_name
          format_name = @route_data[:format_name]
          if format_name.blank?
            ""
          else
            "application/#{format_name}"
          end
        end

        def attach_media_type(schema)
          return schema if @format_name.blank?
          merge_schema = {
            "200" => {
              "description" => "responses description",
              "content" => {
                "#{@format_name}" => {}
              }
            }
          }
          schema["#{@verb}"]["responses"].deep_merge!(merge_schema)
          schema
        end
        
        def support_field_name?
          raise RuntimeError,  "Invalid filed name #{field_name}" unless SUPPORT_FIELD_NAME.include?(@verb)
        end
      end
    end
  end
end