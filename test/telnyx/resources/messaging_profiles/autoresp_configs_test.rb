# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::MessagingProfiles::AutorespConfigsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_profiles.autoresp_configs.create(
        "profile_id",
        country_code: "US",
        keywords: %w[keyword1 keyword2],
        op: :start
      )

    assert_pattern do
      response => Telnyx::MessagingProfiles::AutoRespConfigResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfiles::AutoRespConfig
      }
    end
  end

  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_profiles.autoresp_configs.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        profile_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::MessagingProfiles::AutoRespConfigResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfiles::AutoRespConfig
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_profiles.autoresp_configs.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        profile_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        country_code: "US",
        keywords: %w[keyword1 keyword2],
        op: :start
      )

    assert_pattern do
      response => Telnyx::MessagingProfiles::AutoRespConfigResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfiles::AutoRespConfig
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.autoresp_configs.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessagingProfiles::AutorespConfigListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingProfiles::AutoRespConfig]),
        meta: Telnyx::Models::MessagingProfiles::AutorespConfigListResponse::Meta
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_profiles.autoresp_configs.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        profile_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => String
    end
  end
end
