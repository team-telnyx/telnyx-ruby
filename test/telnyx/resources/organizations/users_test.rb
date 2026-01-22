# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Organizations::UsersTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.organizations.users.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::Organizations::UserRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Organizations::UserRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.organizations.users.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Organizations::UserListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        email: String | nil,
        groups: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Organizations::UserGroupReference]) | nil,
        last_sign_in_at: String | nil,
        organization_user_bypasses_sso: Telnyx::Internal::Type::Boolean | nil,
        record_type: String | nil,
        user_status: Telnyx::Models::Organizations::UserListResponse::UserStatus | nil
      }
    end
  end

  def test_get_groups_report
    skip("Prism tests are disabled")

    response = @telnyx.organizations.users.get_groups_report

    assert_pattern do
      response => Telnyx::Models::Organizations::UserGetGroupsReportResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data]) | nil
      }
    end
  end
end
