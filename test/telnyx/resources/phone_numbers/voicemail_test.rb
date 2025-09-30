# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PhoneNumbers::VoicemailTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.voicemail.create("123455678900")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::VoicemailCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::VoicemailPrefResponse | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.voicemail.retrieve("123455678900")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::VoicemailRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::VoicemailPrefResponse | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.voicemail.update("123455678900")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::VoicemailUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::VoicemailPrefResponse | nil
      }
    end
  end
end
