# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ExternalConnectionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.create(external_sip_connection: :zoom, outbound: {})

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnection | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnection | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.external_connections.update(
        "id",
        outbound: {outbound_voice_profile_id: "outbound_voice_profile_id"}
      )

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnection | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.list

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::ExternalConnection]) | nil,
        meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.delete("id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnection | nil
      }
    end
  end

  def test_update_location_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.external_connections.update_location(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        static_emergency_address_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionUpdateLocationResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ExternalConnectionUpdateLocationResponse::Data | nil
      }
    end
  end
end
