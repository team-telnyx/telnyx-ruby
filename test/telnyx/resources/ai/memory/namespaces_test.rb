# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Memory::NamespacesTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.retrieve("operation_id", namespace: "namespace")

    assert_pattern do
      response => Telnyx::Models::AI::Memory::NamespaceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data
      }
    end
  end
end
