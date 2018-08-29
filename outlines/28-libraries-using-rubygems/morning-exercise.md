<img src="morning-exercise.jpg" width="100%">

# Morning Exercise

Given the following ruby code:

```ruby
class Windows
  def initialize(name)
    @name = name
    @booted = false
    @version = '10.2'
    @codename = 'redstone'
  end

  def boot_up
    @booted = true
  end

  def shut_down
    @booted = false
  end

  def version_name
    "Windows version: #{ @version } : #{ @codename }"
  end
  
  def load_command_prompt
    'C:\> '
  end
end

class Mac
  def initialize(name)
    @name = name
    @booted = false
    @version = '10.13'
    @codename = 'high sierra'
  end

  def boot_up
    @booted = true
  end

  def shut_down
    @booted = false
  end

  def version_name
    "OSX version: #{ @version } : #{ @codename }"
  end

  def load_terminal
    "#{ @name }:~ $ "
  end
end

class Linux
  def initialize(name)
    @name = name
    @booted = false
    @version = '18.04'
    @codename = 'bionic beaver'
  end

  def boot_up
    @booted = true
  end

  def shut_down
    @booted = false
  end

  def version_name
    "Ubuntu version: #{ @version } : #{ @codename }"
  end

  def load_terminal
    "#{ @name }:~ $ "
  end
end
```

1. Write a `module` named `OsBehavior` that allows us to mixin all behavior that is the same in all three classes
2. Write a `module` named `UnixBehavior` that allows us to mixin behavior that is the same in the `Linux` and `Mac` classes.

_Note: If you are confused please refer yesterday's example on modules._