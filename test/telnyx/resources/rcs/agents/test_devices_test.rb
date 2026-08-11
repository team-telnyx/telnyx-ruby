# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Rcs::Agents::TestDevicesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.rcs.agents.test_devices.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        phone_number: "+13125550123"
      )

    assert_pattern do
      response => Telnyx::Rcs::Agents::TestDeviceResponse
    end

    assert_pattern do
      response => {
        invite_status: Telnyx::Rcs::Agents::TestDeviceResponse::InviteStatus,
        phone_number: String,
        test_device_id: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.rcs.agents.test_devices.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::Agents::TestDeviceResponse])
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.rcs.agents.test_devices.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
