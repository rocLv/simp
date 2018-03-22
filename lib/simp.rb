require "simp/version"
require "erubi"

module Simp
  class Application
    def call(env)
      [200, {"Content-Type" => "html"},
       [html(env["REQUEST_PATH"][1..-1])]
      ]
    end

    def render(file_name)
      eval Erubi::Engine.new(File.read("#{file_name}.html.erb")).src
    end

    def render_400
      "Oops, the page you visited is not exist."
    end

    def html(file_name)
      puts file_name
      if File.exist?("#{file_name}.html.erb")
        render file_name
      else
        render_400
      end
    end
  end
end
