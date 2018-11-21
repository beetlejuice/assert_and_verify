require 'assert_and_verify'

class Example
  include AssertAndVerify

  def action_with_assert(assertion_params)
    assertion_block = assertion_params[:assertion_block]
    fail_msg = assertion_params[:fail_msg]
    pass_msg = assertion_params[:pass_msg]

    assert(fail_msg, pass_msg) { assertion_block.call }
  end
end

def test_assert(assertion_params)
  object = Example.new
  object.action_with_assert(assertion_params)
end
