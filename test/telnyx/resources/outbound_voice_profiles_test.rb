# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::OutboundVoiceProfilesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.outbound_voice_profiles.create(name: "office")

    assert_pattern do
      response => Telnyx::Models::OutboundVoiceProfileCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OutboundVoiceProfile | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.outbound_voice_profiles.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::OutboundVoiceProfileRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OutboundVoiceProfile | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.outbound_voice_profiles.update("1293384261075731499", name: "office")

    assert_pattern do
      response => Telnyx::Models::OutboundVoiceProfileUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OutboundVoiceProfile | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.outbound_voice_profiles.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::OutboundVoiceProfile
    end

    assert_pattern do
      row => {
        name: String,
        id: String | nil,
        billing_group_id: String | nil,
        call_recording: Telnyx::OutboundCallRecording | nil,
        calling_window: Telnyx::OutboundVoiceProfile::CallingWindow | nil,
        concurrent_call_limit: Integer | nil,
        connections_count: Integer | nil,
        created_at: String | nil,
        daily_spend_limit: String | nil,
        daily_spend_limit_enabled: Telnyx::Internal::Type::Boolean | nil,
        enabled: Telnyx::Internal::Type::Boolean | nil,
        max_destination_rate: Float | nil,
        record_type: String | nil,
        service_plan: Telnyx::ServicePlan | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        traffic_type: Telnyx::TrafficType | nil,
        updated_at: String | nil,
        usage_payment_method: Telnyx::UsagePaymentMethod | nil,
        whitelisted_destinations: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.outbound_voice_profiles.delete("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::OutboundVoiceProfileDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OutboundVoiceProfile | nil
      }
    end
  end
end
