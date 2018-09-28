class Application

  def call(env)
    resp = Rack::Response.new

    #Don't sweat the Kernel bit — Kernel is a module that holds many of Ruby's most useful bits
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
    resp.finish
  end

end
