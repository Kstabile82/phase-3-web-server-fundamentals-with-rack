require 'rack'

class App 
    def call(env)
        path = env["PATH_INFO"]

       if path == "/" 
        [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>Dolly</em>!</h2>"]]
       elsif path == "/Roxy"
        [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>Roxy</em>!</h2>"]]
       elsif path == "/Dexter"
        [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>Dexy</em>!</h2>"]]
       else 
        [404, { "Content-Type" => "text/html" }, ["Page not found"]]
       end

    end
end
run App.new