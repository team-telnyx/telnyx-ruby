# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Missions::KnowledgeBasesTest < Telnyx::Test::ResourceTest
  def test_create_knowledge_base
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.knowledge_bases.create_knowledge_base("mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_delete_knowledge_base_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.missions.knowledge_bases.delete_knowledge_base("knowledge_base_id", mission_id: "mission_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get_knowledge_base_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.missions.knowledge_bases.get_knowledge_base("knowledge_base_id", mission_id: "mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_list_knowledge_bases
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.knowledge_bases.list_knowledge_bases("mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_update_knowledge_base_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.missions.knowledge_bases.update_knowledge_base("knowledge_base_id", mission_id: "mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end
end
