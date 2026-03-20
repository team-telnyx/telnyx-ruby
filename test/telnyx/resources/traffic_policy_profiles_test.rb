# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TrafficPolicyProfilesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.traffic_policy_profiles.create(type: :whitelist)

    assert_pattern do
      response => Telnyx::Models::TrafficPolicyProfileCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TrafficPolicyProfile | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.traffic_policy_profiles.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::TrafficPolicyProfileRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TrafficPolicyProfile | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.traffic_policy_profiles.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::TrafficPolicyProfileUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TrafficPolicyProfile | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.traffic_policy_profiles.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::TrafficPolicyProfile
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        domains: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        ip_ranges: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        limit_bw_kbps: Integer | nil,
        record_type: String | nil,
        services: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        type: Telnyx::TrafficPolicyProfile::Type | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.traffic_policy_profiles.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::TrafficPolicyProfileDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::TrafficPolicyProfileDeleteResponse::Data | nil
      }
    end
  end

  def test_list_services
    skip("Mock server tests are disabled")

    response = @telnyx.traffic_policy_profiles.list_services

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::TrafficPolicyProfileListServicesResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        group: String | nil,
        name: String | nil,
        resource_type: String | nil
      }
    end
  end
end
