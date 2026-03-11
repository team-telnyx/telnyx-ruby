# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Whatsapp::PhoneNumbers::ProfileTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.profile.retrieve("phone_number")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse::Data | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.profile.update("phone_number")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::PhoneNumbers::ProfileUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Whatsapp::PhoneNumbers::ProfileUpdateResponse::Data | nil
      }
    end
  end
end
