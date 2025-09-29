# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ManagedAccountsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.managed_accounts.create(business_name: "Larry's Cat Food Inc")

    assert_pattern do
      response => Telnyx::Models::ManagedAccountCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ManagedAccount | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.managed_accounts.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::ManagedAccountRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ManagedAccount | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.managed_accounts.update("id")

    assert_pattern do
      response => Telnyx::Models::ManagedAccountUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ManagedAccount | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.managed_accounts.list

    assert_pattern do
      response => Telnyx::Models::ManagedAccountListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ManagedAccountListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_get_allocatable_global_outbound_channels
    skip("Prism tests are disabled")

    response = @telnyx.managed_accounts.get_allocatable_global_outbound_channels

    assert_pattern do
      response => Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse::Data | nil
      }
    end
  end

  def test_update_global_channel_limit
    skip("Prism tests are disabled")

    response = @telnyx.managed_accounts.update_global_channel_limit("id")

    assert_pattern do
      response => Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse::Data | nil
      }
    end
  end
end
