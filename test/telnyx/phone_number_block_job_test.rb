# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class PhoneNumberBlockJobTest < Test::Unit::TestCase
    should "be listable" do
      jobs = Telnyx::PhoneNumberBlockJob.list
      assert_requested :get, "#{Telnyx.api_base}/v2/phone_number_blocks/jobs"
      assert_kind_of Telnyx::ListObject, jobs
      assert_kind_of Telnyx::TelnyxObject, jobs.first
    end

    should "be delete_phone_number_block" do
      PhoneNumberBlockJob.delete_phone_number_block(phone_number_block_id: "123")
      assert_requested :post, "#{Telnyx.api_base}/v2/phone_number_blocks/jobs/delete_phone_number_block"
    end

    should "be retrievable" do
      number_order = PhoneNumberBlockJob.retrieve "123"
      assert_requested :get, "#{Telnyx.api_base}/v2/phone_number_blocks/jobs/123"
      assert_kind_of PhoneNumberBlockJob, number_order
    end
  end
end
