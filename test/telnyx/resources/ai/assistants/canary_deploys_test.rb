# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::CanaryDeploysTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.assistants.canary_deploys.create(
        "assistant_id",
        versions: [{percentage: 1, version_id: "version_id"}]
      )

    assert_pattern do
      response => Telnyx::AI::Assistants::CanaryDeployResponse
    end

    assert_pattern do
      response => {
        assistant_id: String,
        created_at: Time,
        updated_at: Time,
        versions: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::VersionConfig])
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.canary_deploys.retrieve("assistant_id")

    assert_pattern do
      response => Telnyx::AI::Assistants::CanaryDeployResponse
    end

    assert_pattern do
      response => {
        assistant_id: String,
        created_at: Time,
        updated_at: Time,
        versions: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::VersionConfig])
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.assistants.canary_deploys.update(
        "assistant_id",
        versions: [{percentage: 1, version_id: "version_id"}]
      )

    assert_pattern do
      response => Telnyx::AI::Assistants::CanaryDeployResponse
    end

    assert_pattern do
      response => {
        assistant_id: String,
        created_at: Time,
        updated_at: Time,
        versions: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::VersionConfig])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.canary_deploys.delete("assistant_id")

    assert_pattern do
      response => nil
    end
  end
end
