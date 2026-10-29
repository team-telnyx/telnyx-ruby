# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Whatsapp::HostedSignupsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.hosted_signups.create(app_id: "123456789012345")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::HostedSignupCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::WhatsappHostedSignup | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.hosted_signups.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::WhatsappHostedSignup | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.hosted_signups.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Whatsapp::WhatsappHostedSignup
    end

    assert_pattern do
      row => {
        id: String | nil,
        app_id: String | nil,
        created_at: Time | nil,
        expires_at: Time | nil,
        jwt: String | nil,
        record_type: Telnyx::Whatsapp::WhatsappHostedSignup::RecordType | nil,
        solution_id: String | nil,
        url: String | nil
      }
    end
  end
end
