# frozen_string_literal: true

require 'discordrb'
require_relative 'lib/rollenspielsache/bot'

bot = Discordrb::Commands::CommandBot.new token: ENV['API_TOKEN'], prefix: '!'

def total_from_str(str_input)
  roller = Rollenspielsache::Bot::StringRoller.new str_input.join(' ').to_s
  result = roller.execute
  result.to_s
end

bot.command :r do |_event, *args|
  total_from_str args
end

bot.command :roll do |_event, *args|
  total_from_str args
end

bot.run
