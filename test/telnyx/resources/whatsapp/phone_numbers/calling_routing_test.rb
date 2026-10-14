# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Whatsapp::PhoneNumbers::CallingRoutingTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.calling_routing.list("+13125550100")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData
      }
    end
  end

  def test_patch_all_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.whatsapp.phone_numbers.calling_routing.patch_all("+13125550100", connection_id: "1234567890")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingPatchAllResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData
      }
    end
  end
end
