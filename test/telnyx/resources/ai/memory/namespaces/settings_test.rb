# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::AI::Memory::Namespaces::SettingsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.settings.list("namespace")

    assert_pattern do
      response => Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data
      }
    end
  end

  def test_patch_all
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.settings.patch_all("namespace")

    assert_pattern do
      response => Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data
      }
    end
  end
end
