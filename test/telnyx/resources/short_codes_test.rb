# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ShortCodesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.short_codes.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::ShortCodeRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ShortCode | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.short_codes.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        messaging_profile_id: "abc85f64-5717-4562-b3fc-2c9600000000"
      )

    assert_pattern do
      response => Telnyx::Models::ShortCodeUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ShortCode | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.short_codes.list

    assert_pattern do
      response => Telnyx::Models::ShortCodeListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::ShortCode]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
