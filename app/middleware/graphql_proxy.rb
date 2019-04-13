require 'rack-proxy'

class GraphqlProxy < Rack::Proxy

  def rewrite_env(env)
    request = Rack::Request.new(env)
    if Rails.env.development?
      puts "HELLO"
      env["HTTP_X_FORWARDED_HOST"] = env["HTTP_HOST"]
      env["SERVER_PORT"] = "8080"
    else
      env["HTTP_HOST"] = "sdg-gateway-graphql.herokuapp.com"
    end
    env
  end
end
