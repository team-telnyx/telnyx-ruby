# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Enterprises::DirTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.dir.create(
        "4a6192a4-573d-446d-b3ce-aff9117272a6",
        authorizer_email: "sam@acmeplumbing.example.com",
        authorizer_name: "Sam Owner",
        certify_brand_is_accurate: true,
        certify_ip_ownership: true,
        certify_no_shaft_content: true,
        display_name: "Acme Plumbing"
      )

    assert_pattern do
      response => Telnyx::Models::Enterprises::DirCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Enterprises::DirCreateResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.dir.list("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Enterprises::DirListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        authorizer_email: String | nil,
        authorizer_name: String | nil,
        call_reasons: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Enterprises::DirListResponse::CallReason]) | nil,
        certify_brand_is_accurate: Telnyx::Internal::Type::Boolean | nil,
        certify_ip_ownership: Telnyx::Internal::Type::Boolean | nil,
        certify_no_shaft_content: Telnyx::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        display_name: String | nil,
        documents: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Enterprises::DirListResponse::Document]) | nil,
        enterprise_id: String | nil,
        expiring_at: Time | nil,
        logo_url: String | nil,
        rejected_at: Time | nil,
        rejection_reasons: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Enterprises::DirListResponse::RejectionReason]) | nil,
        reselling: Telnyx::Internal::Type::Boolean | nil,
        status: Telnyx::Models::Enterprises::DirListResponse::Status | nil,
        submitted_at: Time | nil,
        updated_at: Time | nil,
        verified_at: Time | nil
      }
    end
  end
end
