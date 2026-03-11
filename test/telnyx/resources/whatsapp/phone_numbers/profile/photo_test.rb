# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Whatsapp::PhoneNumbers::Profile::PhotoTest < Telnyx::Test::ResourceTest
  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.profile.photo.delete("phone_number")

    assert_pattern do
      response => nil
    end
  end

  def test_upload_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.whatsapp.phone_numbers.profile.photo.upload("phone_number", file: StringIO.new("Example data"))

    assert_pattern do
      response => Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoUploadResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::PhoneNumbers::WhatsappProfileData | nil
      }
    end
  end
end
