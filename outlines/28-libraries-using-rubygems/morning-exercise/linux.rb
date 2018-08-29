require_relative 'unix_behavior'
require_relative 'os_behavior'

module Computer
  class Linux
    attr_reader :os_behavior, :unix_behavior

    def initialize(name)
      @name = name
      @booted = false
      @version = '18.04'
      @codename = 'bionic beaver'
      @os_behavior = Computer::OsBehavior.new
      @unix_behavior = Computer::UnixBehavior.new(name)
    end

    def version_name
      "Ubuntu version: #{ @version } : #{ @codename }"
    end
  end
end

linux = Computer::Linux.new('orlando-desktop')
puts linux.os_behavior.boot_up
puts linux.os_behavior.shut_down
puts linux.unix_behavior.load_terminal
