require 'appium_lib'
require 'pry'

RSpec.configure do |config|
  config.formatter = :documentation
end

def desired_capabilities
  { caps: {
    platformName: "Android",
    deviceName: "emulator-5554",
    app: "/Users/Tech-A21/Downloads/protect.budgetwatch_14.apk"
  }
  }
end
