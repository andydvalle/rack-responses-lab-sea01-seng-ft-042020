require 'rack'
require 'pry'

class Application
    def call (env)
        resp = Rack::Response.new

        puts "#{Time.now.to_i}"
        
        t = Time.now

        if t.hour.between?(0,11)
            resp.write "Good Morning!"
        elsif t.hour.between?(12,24)
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end