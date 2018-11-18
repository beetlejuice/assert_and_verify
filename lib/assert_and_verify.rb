require 'test/unit/assertions'
require 'assert_and_verify/version'
require 'assert_and_verify/assertion_message'
require 'assert_and_verify/logging'

module AssertAndVerify
  include Logging

  def assert(fail_msg = '', pass_msg = '', &block)
    fail_message = AssertionMessage.new(fail_msg)
    pass_message = AssertionMessage.new(pass_msg)

    assertion = Object.new.extend(Test::Unit::Assertions)
    if fail_message.empty?
      assertion.assert(&block)
    else
      assertion.assert(fail_message, &block)
    end

    logger.info(pass_message) unless pass_message.empty?
  end

  def verify(fail_msg = '', pass_msg = '')
    fail_message = AssertionMessage.new(fail_msg)
    pass_message = AssertionMessage.new(pass_msg)

    result = yield

    if result
      logger.info(pass_message.call)
    else
      logger.warn(fail_message.call)
    end
  end
end
