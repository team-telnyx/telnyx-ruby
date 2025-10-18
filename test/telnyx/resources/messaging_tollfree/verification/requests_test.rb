# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::MessagingTollfree::Verification::RequestsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_tollfree.verification.requests.create(
        additional_information: "additionalInformation",
        business_addr1: "600 Congress Avenue",
        business_city: "Austin",
        business_contact_email: "email@example.com",
        business_contact_first_name: "John",
        business_contact_last_name: "Doe",
        business_contact_phone: "+18005550100",
        business_name: "Telnyx LLC",
        business_state: "Texas",
        business_zip: "78701",
        corporate_website: "http://example.com",
        isv_reseller: "isvReseller",
        message_volume: :"100,000",
        opt_in_workflow: "User signs into the Telnyx portal, enters a number and is prompted to select whether they want to use 2FA verification for security purposes. If they've opted in a confirmation message is sent out to the handset",
        opt_in_workflow_image_urls: [{url: "https://telnyx.com/sign-up"}, {url: "https://telnyx.com/company/data-privacy"}],
        phone_numbers: [{phoneNumber: "+18773554398"}, {phoneNumber: "+18773554399"}],
        production_message_content: "Your Telnyx OTP is XXXX",
        use_case: :"2FA",
        use_case_summary: "This is a use case where Telnyx sends out 2FA codes to portal users to verify their identity in order to sign into the portal"
      )

    assert_pattern do
      response => Telnyx::MessagingTollfree::Verification::VerificationRequestEgress
    end

    assert_pattern do
      response => {
        id: String,
        additional_information: String,
        business_addr1: String,
        business_city: String,
        business_contact_email: String,
        business_contact_first_name: String,
        business_contact_last_name: String,
        business_contact_phone: String,
        business_name: String,
        business_state: String,
        business_zip: String,
        corporate_website: String,
        isv_reseller: String,
        message_volume: Telnyx::MessagingTollfree::Verification::Volume,
        opt_in_workflow: String,
        opt_in_workflow_image_urls: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::URL]),
        phone_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::TfPhoneNumber]),
        production_message_content: String,
        use_case: Telnyx::MessagingTollfree::Verification::UseCaseCategories,
        use_case_summary: String,
        verification_request_id: String,
        age_gated_content: Telnyx::Internal::Type::Boolean | nil,
        business_addr2: String | nil,
        business_registration_country: String | nil,
        business_registration_number: String | nil,
        business_registration_type: String | nil,
        doing_business_as: String | nil,
        entity_type: Telnyx::MessagingTollfree::Verification::TollFreeVerificationEntityType | nil,
        help_message_response: String | nil,
        opt_in_confirmation_response: String | nil,
        opt_in_keywords: String | nil,
        privacy_policy_url: String | nil,
        terms_and_condition_url: String | nil,
        verification_status: Telnyx::MessagingTollfree::Verification::TfVerificationStatus | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_tollfree.verification.requests.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::MessagingTollfree::Verification::VerificationRequestStatus
    end

    assert_pattern do
      response => {
        id: String,
        additional_information: String,
        business_addr1: String,
        business_city: String,
        business_contact_email: String,
        business_contact_first_name: String,
        business_contact_last_name: String,
        business_contact_phone: String,
        business_name: String,
        business_state: String,
        business_zip: String,
        corporate_website: String,
        isv_reseller: String,
        message_volume: Telnyx::MessagingTollfree::Verification::Volume,
        opt_in_workflow: String,
        opt_in_workflow_image_urls: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::URL]),
        phone_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::TfPhoneNumber]),
        production_message_content: String,
        use_case: Telnyx::MessagingTollfree::Verification::UseCaseCategories,
        use_case_summary: String,
        verification_status: Telnyx::MessagingTollfree::Verification::TfVerificationStatus,
        age_gated_content: Telnyx::Internal::Type::Boolean | nil,
        business_addr2: String | nil,
        business_registration_country: String | nil,
        business_registration_number: String | nil,
        business_registration_type: String | nil,
        created_at: Time | nil,
        doing_business_as: String | nil,
        entity_type: Telnyx::MessagingTollfree::Verification::TollFreeVerificationEntityType | nil,
        help_message_response: String | nil,
        opt_in_confirmation_response: String | nil,
        opt_in_keywords: String | nil,
        privacy_policy_url: String | nil,
        reason: String | nil,
        terms_and_condition_url: String | nil,
        updated_at: Time | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_tollfree.verification.requests.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        additional_information: "additionalInformation",
        business_addr1: "600 Congress Avenue",
        business_city: "Austin",
        business_contact_email: "email@example.com",
        business_contact_first_name: "John",
        business_contact_last_name: "Doe",
        business_contact_phone: "+18005550100",
        business_name: "Telnyx LLC",
        business_state: "Texas",
        business_zip: "78701",
        corporate_website: "http://example.com",
        isv_reseller: "isvReseller",
        message_volume: :"100,000",
        opt_in_workflow: "User signs into the Telnyx portal, enters a number and is prompted to select whether they want to use 2FA verification for security purposes. If they've opted in a confirmation message is sent out to the handset",
        opt_in_workflow_image_urls: [{url: "https://telnyx.com/sign-up"}, {url: "https://telnyx.com/company/data-privacy"}],
        phone_numbers: [{phoneNumber: "+18773554398"}, {phoneNumber: "+18773554399"}],
        production_message_content: "Your Telnyx OTP is XXXX",
        use_case: :"2FA",
        use_case_summary: "This is a use case where Telnyx sends out 2FA codes to portal users to verify their identity in order to sign into the portal"
      )

    assert_pattern do
      response => Telnyx::MessagingTollfree::Verification::VerificationRequestEgress
    end

    assert_pattern do
      response => {
        id: String,
        additional_information: String,
        business_addr1: String,
        business_city: String,
        business_contact_email: String,
        business_contact_first_name: String,
        business_contact_last_name: String,
        business_contact_phone: String,
        business_name: String,
        business_state: String,
        business_zip: String,
        corporate_website: String,
        isv_reseller: String,
        message_volume: Telnyx::MessagingTollfree::Verification::Volume,
        opt_in_workflow: String,
        opt_in_workflow_image_urls: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::URL]),
        phone_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::TfPhoneNumber]),
        production_message_content: String,
        use_case: Telnyx::MessagingTollfree::Verification::UseCaseCategories,
        use_case_summary: String,
        verification_request_id: String,
        age_gated_content: Telnyx::Internal::Type::Boolean | nil,
        business_addr2: String | nil,
        business_registration_country: String | nil,
        business_registration_number: String | nil,
        business_registration_type: String | nil,
        doing_business_as: String | nil,
        entity_type: Telnyx::MessagingTollfree::Verification::TollFreeVerificationEntityType | nil,
        help_message_response: String | nil,
        opt_in_confirmation_response: String | nil,
        opt_in_keywords: String | nil,
        privacy_policy_url: String | nil,
        terms_and_condition_url: String | nil,
        verification_status: Telnyx::MessagingTollfree::Verification::TfVerificationStatus | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messaging_tollfree.verification.requests.list(page: 1, page_size: 1)

    assert_pattern do
      response => Telnyx::Models::MessagingTollfree::Verification::RequestListResponse
    end

    assert_pattern do
      response => {
        records: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::VerificationRequestStatus]) | nil,
        total_records: Integer | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_tollfree.verification.requests.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end
end
