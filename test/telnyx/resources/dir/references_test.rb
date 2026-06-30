# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Dir::ReferencesTest < Telnyx::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dir.references.update(0, dir_id: "16635d38-75a6-4481-82e8-69af60e05011", ref_type: :business)

    assert_pattern do
      response => Telnyx::Models::Dir::ReferenceUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Dir::ReferenceUpdateResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.dir.references.list("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Models::Dir::ReferenceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Dir::ReferenceListResponse::Data])
      }
    end
  end

  def test_submit_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dir.references.submit(
        "16635d38-75a6-4481-82e8-69af60e05011",
        business_references: [
          {
            email: "dana.reyes@example.com",
            full_name: "Dana Reyes",
            phone_e164: "+14155550123",
            timezone: "America/New_York"
          },
          {
            email: "dana.reyes@example.com",
            full_name: "Dana Reyes",
            phone_e164: "+14155550123",
            timezone: "America/New_York"
          }
        ],
        financial_reference: {
          email: "dana.reyes@example.com",
          full_name: "Dana Reyes",
          phone_e164: "+14155550123",
          timezone: "America/New_York"
        }
      )

    assert_pattern do
      response => Telnyx::Models::Dir::ReferenceSubmitResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Dir::ReferenceSubmitResponse::Data])
      }
    end
  end
end
