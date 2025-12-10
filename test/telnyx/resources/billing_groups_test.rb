# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::BillingGroupsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.billing_groups.create

    assert_pattern do
      response => Telnyx::Models::BillingGroupCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::BillingGroup | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.billing_groups.retrieve("f5586561-8ff0-4291-a0ac-84fe544797bd")

    assert_pattern do
      response => Telnyx::Models::BillingGroupRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::BillingGroup | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.billing_groups.update("f5586561-8ff0-4291-a0ac-84fe544797bd")

    assert_pattern do
      response => Telnyx::Models::BillingGroupUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::BillingGroup | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.billing_groups.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::BillingGroup
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        deleted_at: Time | nil,
        name: String | nil,
        organization_id: String | nil,
        record_type: Telnyx::BillingGroup::RecordType | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.billing_groups.delete("f5586561-8ff0-4291-a0ac-84fe544797bd")

    assert_pattern do
      response => Telnyx::Models::BillingGroupDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::BillingGroup | nil
      }
    end
  end
end
