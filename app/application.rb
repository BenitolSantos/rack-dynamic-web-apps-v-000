class Application

  def call(env)
    resp = Rack::Response.new
    #Don't sweat the Kernel bit — Kernel is a module that holds many of Ruby's most useful bits
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
    resp.finish
  end

end
