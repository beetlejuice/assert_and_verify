module AssertAndVerify
  class AssertionMessage
    def initialize(message)
      @message = message
    end

    def to_s
      if @message.is_a?(Proc)
        @message.call.to_s
      else
        @message.to_s
      end
    end

    def inspect
      to_s
    end

    def empty?
      @message == ''
    end
  end
end