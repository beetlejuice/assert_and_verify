require 'test/unit/assertion-failed-error'
require 'spec_helper'

describe AssertAndVerify do
  describe '.assert' do
    let(:assertion_call) { test_assert(assertion_params) }
    let(:assertion_params) { { fail_msg: fail_msg, pass_msg: pass_msg, assertion_block: statement } }
    let(:fail_msg) { 'fail message' }
    let(:pass_msg) { 'pass message' }

    context 'when assertion fails' do
      let(:statement) { proc { 1 + 1 == 3 } }

      it 'should raise AssertionFailedError' do
        expect { assertion_call }.to raise_error Test::Unit::AssertionFailedError
      end
    end

    context 'when assertion passes' do
      let(:statement) { proc { 1 + 1 == 2 } }

      it 'should not raise AssertionFailedError' do
        expect { assertion_call }.not_to raise_error
      end

      it 'should log pass message' do
        expect { assertion_call }.to output(/#{pass_msg}/).to_stdout_from_any_process
      end
    end
  end

  describe '.verify' do

  end
end