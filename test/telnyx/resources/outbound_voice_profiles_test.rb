# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::OutboundVoiceProfilesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.outbound_voice_profiles.list

    assert_pattern do
      response => Telnyx::Models::OutboundVoiceProfileListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::OutboundVoiceProfile]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

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
