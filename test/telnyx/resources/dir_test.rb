# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DirTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.dir.retrieve("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Models::DirRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::DirRetrieveResponse::Data
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.dir.update("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Models::DirUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::DirUpdateResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.dir.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::DirListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        authorizer_email: String | nil,
        authorizer_name: String | nil,
        call_reasons: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirListResponse::CallReason]) | nil,
        certify_brand_is_accurate: Telnyx::Internal::Type::Boolean | nil,
        certify_ip_ownership: Telnyx::Internal::Type::Boolean | nil,
        certify_no_shaft_content: Telnyx::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        display_name: String | nil,
        documents: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirListResponse::Document]) | nil,
        enterprise_id: String | nil,
        expiring_at: Time | nil,
        logo_url: String | nil,
        rejected_at: Time | nil,
        rejection_reasons: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirListResponse::RejectionReason]) | nil,
        reselling: Telnyx::Internal::Type::Boolean | nil,
        status: Telnyx::Models::DirListResponse::Status | nil,
        submitted_at: Time | nil,
        updated_at: Time | nil,
        verified_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.dir.delete("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => nil
    end
  end

  def test_create_loa_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dir.create_loa("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", phone_numbers: ["+13125550000"])

    assert_pattern do
      response => StringIO
    end
  end

  def test_list_document_types
    skip("Mock server tests are disabled")

    response = @telnyx.dir.list_document_types

    assert_pattern do
      response => Telnyx::Models::DirListDocumentTypesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirListDocumentTypesResponse::Data]),
        meta: Telnyx::Models::DirListDocumentTypesResponse::Meta
      }
    end
  end

  def test_list_infringement_claims
    skip("Mock server tests are disabled")

    response = @telnyx.dir.list_infringement_claims("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::DirListInfringementClaimsResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        claim_date: Time | nil,
        claim_description: String | nil,
        claim_type: Telnyx::Models::DirListInfringementClaimsResponse::ClaimType | nil,
        claimant_contact: String | nil,
        claimant_name: String | nil,
        contest_documents: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirListInfringementClaimsResponse::ContestDocument]) | nil,
        contest_history: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirListInfringementClaimsResponse::ContestHistory]) | nil,
        created_at: Time | nil,
        dir: Telnyx::Models::DirListInfringementClaimsResponse::Dir | nil,
        dir_id: String | nil,
        enterprise_id: String | nil,
        resolution: Telnyx::Models::DirListInfringementClaimsResponse::Resolution | nil,
        resolution_date: Time | nil,
        resolution_notes: String | nil,
        status: Telnyx::Models::DirListInfringementClaimsResponse::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_submit
    skip("Mock server tests are disabled")

    response = @telnyx.dir.submit("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Models::DirSubmitResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::DirSubmitResponse::Data
      }
    end
  end

  def test_update_infringement_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dir.update_infringement(
        "16635d38-75a6-4481-82e8-69af60e05011",
        certify_brand_is_accurate: true,
        certify_ip_ownership: true,
        certify_no_infringement: true,
        certify_no_shaft_content: true,
        infringement_resolution_notes: "Updated the display name to remove the disputed mark and re-uploaded the authorization."
      )

    assert_pattern do
      response => Telnyx::Models::DirUpdateInfringementResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::DirUpdateInfringementResponse::Data
      }
    end
  end
end
