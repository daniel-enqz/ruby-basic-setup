require 'colorize'

RSpec::Support.require_rspec_core 'formatters/base_text_formatter'

class BonusFormatter < RSpec::Core::Formatters::DocumentationFormatter
  RSpec::Core::Formatters.register self, :dump_summary

  def dump_summary(notification)
    output.puts BONUS.colorize(:green).bold if notification.failure_count.zero?
    super notification
  end
end

BONUS = "
  All tests passed!
  AS A BONUS, YOU GET A LENNY FACE! ( ͡❛ ͜ʖ ͡❛)
".freeze
