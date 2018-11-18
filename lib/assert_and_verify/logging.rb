require 'logger'

module AssertAndVerify
  module Logging
    LOGGER_FORMAT = '%Y-%m-%d %H:%M:%S'

    def logger
      Logging.logger
    end

    def self.logger
      @logger ||= Logger.new(STDOUT, LOGGER_FORMAT)
    end
  end
end