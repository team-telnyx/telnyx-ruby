# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AccessIPRangesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.access_ip_ranges.create(cidr_block: "cidr_block")

    assert_pattern do
      response => Telnyx::AccessIPRange
    end

    assert_pattern do
      response => {
        id: String,
        cidr_block: String,
        status: Telnyx::CloudflareSyncStatus,
        user_id: String,
        created_at: Time | nil,
        description: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.access_ip_ranges.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AccessIPRange
    end

    assert_pattern do
      row => {
        id: String,
        cidr_block: String,
        status: Telnyx::CloudflareSyncStatus,
        user_id: String,
        created_at: Time | nil,
        description: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.access_ip_ranges.delete("access_ip_range_id")

    assert_pattern do
      response => Telnyx::AccessIPRange
    end

    assert_pattern do
      response => {
        id: String,
        cidr_block: String,
        status: Telnyx::CloudflareSyncStatus,
        user_id: String,
        created_at: Time | nil,
        description: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
