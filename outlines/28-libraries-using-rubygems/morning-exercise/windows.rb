require_relative 'os_behavior'

module Computer
  class Windows
    attr_reader :os_behavior

    def initialize(name)
      @name = name
      @booted = false
      @version = '10.2'
      @codename = 'redstone'
      @os_behavior = Computer::OsBehavior.new
    end

    def version_name
      "Windows version: #{ @version } : #{ @codename }"
    end
    
    def load_command_prompt
      'C:\> '
    end
  end
end

windows = Computer::Windows.new('orlando-desktop')
puts windows.os_behavior.boot_up
puts windows.os_behavior.shut_down