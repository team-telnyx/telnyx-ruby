# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Collections::SettingsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.settings.create("6a09ccbd-8f9b-4c3a-9b0e-2f1d3c4b5a6e")

    assert_pattern do
      response => Telnyx::AI::Collections::SettingsEnvelope
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Collections::RetrievalSettingsWrapper | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.settings.list("6a09ccbd-8f9b-4c3a-9b0e-2f1d3c4b5a6e")

    assert_pattern do
      response => Telnyx::AI::Collections::SettingsEnvelope
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Collections::RetrievalSettingsWrapper | nil
      }
    end
  end

  def test_patch_all
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.settings.patch_all("6a09ccbd-8f9b-4c3a-9b0e-2f1d3c4b5a6e")

    assert_pattern do
      response => Telnyx::AI::Collections::SettingsEnvelope
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Collections::RetrievalSettingsWrapper | nil
      }
    end
  end
end
