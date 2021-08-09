# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class QueueTest < Test::Unit::TestCase
    should "retrieve queue" do
      queue = Queue.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/queues/id"
      assert_kind_of Queue, queue
    end

    should "retrieve call from queue" do
      queue = Queue.retrieve("id")
      queue_call = queue.retrieve("call_control_id")
      assert_requested :get, "#{Telnyx.api_base}/v2/queues/id/calls/call_control_id"
      assert_kind_of QueueCall, queue_call
    end

    should "list calls from queue" do
      queue = Queue.retrieve("id")
      queue_calls = queue.list
      assert_requested :get, "#{Telnyx.api_base}/v2/queues/id/calls"
      assert_kind_of QueueCall, queue_calls.first
    end
  end
end
