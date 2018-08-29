module Computer
  class OsBehavior
    def initialize
      @booted = false
    end

    def boot_up
      @booted = true
    end

    def shut_down
      @booted = false
    end
  end
end

# os_behavior = OsBehavior.new
# puts os_behavior.boot_up
# puts os_behavior.shut_down
