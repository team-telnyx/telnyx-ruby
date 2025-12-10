# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PhoneNumbers::VoiceTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.voice.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::VoiceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.voice.update("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::VoiceUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.voice.list

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::VoiceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
