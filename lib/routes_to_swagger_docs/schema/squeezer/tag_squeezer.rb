require_relative 'base_squeezer'

module RoutesToSwaggerDocs
  module Schema
    class TagSqueezer < BaseSqueezer
      def remake_tags
        slice_tags_schema = @schema_data["tags"].each_with_object([]) do |tag, result|
          eql_tag_name = tag["name"].eql? @tag_name 
          result.push(tag) if eql_tag_name
        end
        { "tags" => slice_tags_schema }
      end
    end
  end
end