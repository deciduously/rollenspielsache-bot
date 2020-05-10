# frozen_string_literal: true

require_relative 'bot/version'
require 'librollenspielsache'

module Rollenspielsache
  module Bot
    class Error < StandardError; end
    # Rolls from strings
    class StringRoller
      def initialize(input_str)
        @roll = Rollenspielsache::Dice::Roll.from_str(input_str)
      end

      def base
        @roll.base
      end

      def execute
        @roll.execute
      end
    end
  end
end
