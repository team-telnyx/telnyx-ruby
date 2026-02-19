# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ManagedAccountsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

    response = @telnyx.managed_accounts.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::ManagedAccountListResponse
    end

    assert_pattern do
      row => {
        id: String,
        api_user: String,
        created_at: String,
        email: String,
        manager_account_id: String,
        record_type: Telnyx::Models::ManagedAccountListResponse::RecordType,
        updated_at: String,
        managed_account_allow_custom_pricing: Telnyx::Internal::Type::Boolean | nil,
        organization_name: String | nil,
        rollup_billing: Telnyx::Internal::Type::Boolean | nil
      }
    end
  end

  def test_get_allocatable_global_outbound_channels
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

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
