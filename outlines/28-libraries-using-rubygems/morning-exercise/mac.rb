require_relative 'unix_behavior'
require_relative 'os_behavior'

module Computer
  class Mac
    attr_reader :os_behavior, :unix_behavior

    def initialize(name)
      @name = name
      @version = '10.13'
      @codename = 'high sierra'
      @os_behavior = Computer::OsBehavior.new
      @unix_behavior = Computer::UnixBehavior.new(name)
    end

    def version_name
      "OSX version: #{ @version } : #{ @codename }"
    end
  end
end

mac = Computer::Mac.new('orlando-desktop')
puts mac.os_behavior.boot_up
puts mac.os_behavior.shut_down
puts mac.unix_behavior.load_terminal