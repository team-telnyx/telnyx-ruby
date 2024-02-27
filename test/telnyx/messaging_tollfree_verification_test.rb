# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class MessagingTollfreeVerificationTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end
    should "retrieve tollfree_verification" do
      messaging_tollfree_verification = MessagingTollfreeVerification.retrieve @id
      assert_requested(:get, "#{Telnyx.api_base}/v2/messaging_tollfree/verification/requests/#{@id}")
      assert_kind_of MessagingTollfreeVerification, messaging_tollfree_verification
    end

    should "list tollfree_verifications" do
      simlist = MessagingTollfreeVerification.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/messaging_tollfree/verification/requests")
      assert_kind_of Telnyx::ListObject, simlist
    end

    should "create tollfree_verifications" do
      MessagingTollfreeVerification.create(
        businessName: "Telnyx LLC",
        corporateWebsite: "http://example.com",
        businessAddr1: "311 W Superior St",
        businessCity: "hello",
        businessState: "311 W Superior St",
        businessZip: "60654",
        businessContactFirstName: "john",
        businessContactLastName: "paol",
        businessContactEmail: "paol@example.com",
        businessContactPhone: "+18889809750",
        messageVolume: "100,000",
        phoneNumbers: [
          {
            "phoneNumber": "+18773554398"
          },
          {
            "phoneNumber": "+18773554399"
          }
        ],
        useCase: "2FA",
        useCaseSummary: "This is a use case",
        productionMessageContent: "Your Telnyx OTP is XXXX",
        optInWorkflow: "Your Telnyx",
        optInWorkflowImageURLs: [
          {
            "url": "https://telnyx.com/sign-up"
          },
          {
            "url": "https://telnyx.com/company/data-privacy"
          }
        ],
        additionalInformation: "nothing",
        isvReseller: "Yes"
      )
      assert_requested(:post, "#{Telnyx.api_base}/v2/messaging_tollfree/verification/requests")
    end

    should "delete tollfree_verification" do
      messaging_tollfree_verification = MessagingTollfreeVerification.retrieve @id
      id = messaging_tollfree_verification.id.freeze
      messaging_tollfree_verification.delete
      assert_requested(:delete, "#{Telnyx.api_base}/v2/messaging_tollfree/verification/requests/#{id}")
    end
  end
end
