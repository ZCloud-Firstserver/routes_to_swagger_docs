# RoutesToSwaggerDocs

Generate swagger docs (side only) from rails routing.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'routes_to_swagger_docs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install routes_to_swagger_docs

## Usage

```ruby

require 'routes_to_swagger_docs

RoutesToSwaggerDocs.configure do |config|
   # default setting        
   config.root_dir_path = "./swagger_docs"
   config.schema_save_dir_path = "./swagger_docs/shemas"
   config.doc_save_file_path = "./swagger_docs/swagger_doc.yml"
end
```

```bash
$ bundle exec rake routes:swagger:docs
```

## Example

First try

```
$ bundle exec rake routes:swagger:docs
I, [2019-03-17T14:06:20.029589 #31857]  INFO -- : [Routes to Swagger docs] start
I, [2019-03-17T14:06:20.054793 #31857]  INFO -- : [Generate Swagger schema files] start
I, [2019-03-17T14:06:20.069456 #31857]  INFO -- : <From routes data>
I, [2019-03-17T14:06:20.071446 #31857]  INFO -- : <Update schema files>
I, [2019-03-17T14:06:20.082934 #31857]  INFO -- :  Write schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/openapi.yml
I, [2019-03-17T14:06:20.083655 #31857]  INFO -- :  Write schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/info.yml
I, [2019-03-17T14:06:20.084693 #31857]  INFO -- :  Write schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/tags.yml
I, [2019-03-17T14:06:20.084729 #31857]  INFO -- :  [Generate Swagger schema files (paths)] start
I, [2019-03-17T14:06:20.098923 #31857]  INFO -- :  <From routes data>
I, [2019-03-17T14:06:20.099100 #31857]  INFO -- :  <Update schema files (paths)>
I, [2019-03-17T14:06:20.101319 #31857]  INFO -- :   Write schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v2/post.yml
I, [2019-03-17T14:06:20.102246 #31857]  INFO -- :   Write schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/post.yml
I, [2019-03-17T14:06:20.103235 #31857]  INFO -- :   Write schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/task.yml
I, [2019-03-17T14:06:20.104265 #31857]  INFO -- :   Write schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/task.yml
I, [2019-03-17T14:06:20.105135 #31857]  INFO -- :   Write schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/user.yml
I, [2019-03-17T14:06:20.105163 #31857]  INFO -- :  [Generate Swagger schema files (paths)] end
I, [2019-03-17T14:06:20.105485 #31857]  INFO -- :  Write schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/externalDocs.yml
I, [2019-03-17T14:06:20.105737 #31857]  INFO -- :  Write schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/servers.yml
I, [2019-03-17T14:06:20.105758 #31857]  INFO -- : [Generate Swagger schema files] end
I, [2019-03-17T14:06:20.105772 #31857]  INFO -- : [Generate Swagger docs from schema files] start
I, [2019-03-17T14:06:20.106195 #31857]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/openapi.yml
I, [2019-03-17T14:06:20.106558 #31857]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/user.yml
I, [2019-03-17T14:06:20.106923 #31857]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/task.yml
I, [2019-03-17T14:06:20.107273 #31857]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/post.yml
I, [2019-03-17T14:06:20.107725 #31857]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v2/post.yml
I, [2019-03-17T14:06:20.108070 #31857]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/task.yml
I, [2019-03-17T14:06:20.108197 #31857]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/externalDocs.yml
I, [2019-03-17T14:06:20.108468 #31857]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/tags.yml
I, [2019-03-17T14:06:20.108684 #31857]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/info.yml
I, [2019-03-17T14:06:20.108844 #31857]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/servers.yml
I, [2019-03-17T14:06:20.113635 #31857]  INFO -- : [Generate Swagger docs from schema files] end
I, [2019-03-17T14:06:20.113679 #31857]  INFO -- : [Routes to Swagger docs] end
```

Second try

```
$ bundle exec rake routes:swagger:docs
I, [2019-03-17T14:06:34.446669 #31922]  INFO -- : [Routes to Swagger docs] start
I, [2019-03-17T14:06:34.472810 #31922]  INFO -- : [Generate Swagger schema files] start
I, [2019-03-17T14:06:34.486803 #31922]  INFO -- : <From schema files>
I, [2019-03-17T14:06:34.487203 #31922]  INFO -- :  Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/openapi.yml
I, [2019-03-17T14:06:34.487579 #31922]  INFO -- :  Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/user.yml
I, [2019-03-17T14:06:34.487898 #31922]  INFO -- :  Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/task.yml
I, [2019-03-17T14:06:34.488209 #31922]  INFO -- :  Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/post.yml
I, [2019-03-17T14:06:34.488621 #31922]  INFO -- :  Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v2/post.yml
I, [2019-03-17T14:06:34.488948 #31922]  INFO -- :  Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/task.yml
I, [2019-03-17T14:06:34.489093 #31922]  INFO -- :  Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/externalDocs.yml
I, [2019-03-17T14:06:34.489324 #31922]  INFO -- :  Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/tags.yml
I, [2019-03-17T14:06:34.489523 #31922]  INFO -- :  Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/info.yml
I, [2019-03-17T14:06:34.489636 #31922]  INFO -- :  Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/servers.yml
I, [2019-03-17T14:06:34.498689 #31922]  INFO -- : <Update schema files>
I, [2019-03-17T14:06:34.511346 #31922]  INFO -- :  Merge schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/openapi.yml
I, [2019-03-17T14:06:34.512123 #31922]  INFO -- :  Merge schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/info.yml
I, [2019-03-17T14:06:34.513197 #31922]  INFO -- :  Merge schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/tags.yml
I, [2019-03-17T14:06:34.513226 #31922]  INFO -- :  [Generate Swagger schema files (paths)] start
I, [2019-03-17T14:06:34.527507 #31922]  INFO -- :  <From schema files>
I, [2019-03-17T14:06:34.528213 #31922]  INFO -- :   Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/user.yml
I, [2019-03-17T14:06:34.528742 #31922]  INFO -- :   Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/task.yml
I, [2019-03-17T14:06:34.529257 #31922]  INFO -- :   Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/post.yml
I, [2019-03-17T14:06:34.529862 #31922]  INFO -- :   Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v2/post.yml
I, [2019-03-17T14:06:34.530324 #31922]  INFO -- :   Fetch schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/task.yml
I, [2019-03-17T14:06:34.530614 #31922]  INFO -- :  <Update schema files (paths)>
I, [2019-03-17T14:06:34.531887 #31922]  INFO -- :   Merge schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v2/post.yml
I, [2019-03-17T14:06:34.532981 #31922]  INFO -- :   Merge schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/post.yml
I, [2019-03-17T14:06:34.533942 #31922]  INFO -- :   Merge schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/task.yml
I, [2019-03-17T14:06:34.534894 #31922]  INFO -- :   Merge schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/task.yml
I, [2019-03-17T14:06:34.535884 #31922]  INFO -- :   Merge schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/user.yml
I, [2019-03-17T14:06:34.535925 #31922]  INFO -- :  [Generate Swagger schema files (paths)] end
I, [2019-03-17T14:06:34.536291 #31922]  INFO -- :  Merge schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/externalDocs.yml
I, [2019-03-17T14:06:34.536710 #31922]  INFO -- :  Merge schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/servers.yml
I, [2019-03-17T14:06:34.536735 #31922]  INFO -- : [Generate Swagger schema files] end
I, [2019-03-17T14:06:34.536747 #31922]  INFO -- : [Generate Swagger docs from schema files] start
I, [2019-03-17T14:06:34.537181 #31922]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/openapi.yml
I, [2019-03-17T14:06:34.537653 #31922]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/user.yml
I, [2019-03-17T14:06:34.538057 #31922]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/task.yml
I, [2019-03-17T14:06:34.538399 #31922]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v1/post.yml
I, [2019-03-17T14:06:34.538825 #31922]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/api/v2/post.yml
I, [2019-03-17T14:06:34.539254 #31922]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/paths/task.yml
I, [2019-03-17T14:06:34.539397 #31922]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/externalDocs.yml
I, [2019-03-17T14:06:34.539737 #31922]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/tags.yml
I, [2019-03-17T14:06:34.540001 #31922]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/info.yml
I, [2019-03-17T14:06:34.540187 #31922]  INFO -- :  Use schema file: 	/Users/yukihirop/RubyProjects/routes_to_swagger_docs/example/swagger_docs/schema/servers.yml
I, [2019-03-17T14:06:34.544996 #31922]  INFO -- : [Generate Swagger docs from schema files] end
I, [2019-03-17T14:06:34.545073 #31922]  INFO -- : [Routes to Swagger docs] end
```

## Support Rails Version

- Rails 4.2.5.1

## Configure

we explain the options that can be set.

|option|description|default|
|------|-----------|---|
|root_dir_path|Root directory for storing products.|"./swagger_docs"
|schema_save_dir_path|Directory for storing swagger schemas|"./swagger_docs/shcemas"|
|doc_save_file_path|Directory for storing swagger doc|"./swagger_docs/swagger_doc.yml"|


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Contributing

1. Fork it ( http://github.com/yukihirop/routes_to_swagger_docs/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request