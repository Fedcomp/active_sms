$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "any_sms"
require "pry-byebug"

RSpec.configure do |c|
  c.filter_run focus: true
  c.run_all_when_everything_filtered = true

  c.after { AnySMS.reset! }
end
