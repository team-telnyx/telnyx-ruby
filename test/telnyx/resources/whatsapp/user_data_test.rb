# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Whatsapp::UserDataTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.user_data.retrieve

    assert_pattern do
      response => Telnyx::Models::Whatsapp::UserDataRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::WhatsappUserData | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.user_data.update

    assert_pattern do
      response => Telnyx::Models::Whatsapp::UserDataUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::WhatsappUserData | nil
      }
    end
  end
end
