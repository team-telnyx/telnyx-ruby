# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Memory::NamespacesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.create(name: "staging")

    assert_pattern do
      response => Telnyx::Models::AI::Memory::NamespaceCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Memory::Namespace
      }
    end
  end

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

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.list

    assert_pattern do
      response => Telnyx::Models::AI::Memory::NamespaceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Memory::Namespace])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.delete("namespace")

    assert_pattern do
      response => nil
    end
  end
end
