module Computer
  class UnixBehavior
    def intialize(name)
      @name = name
    end

    def load_terminal
      "#{ @name }:~ $ "
    end
  end
end