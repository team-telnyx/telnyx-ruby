# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SimCardGroupsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_groups.create(name: "My Test Group")

    assert_pattern do
      response => Telnyx::Models::SimCardGroupCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroup | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_groups.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGroupRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroup | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_groups.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGroupUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroup | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_groups.list

    assert_pattern do
      response => Telnyx::Models::SimCardGroupListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SimCardGroupListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_groups.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGroupDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroup | nil
      }
    end
  end
end
