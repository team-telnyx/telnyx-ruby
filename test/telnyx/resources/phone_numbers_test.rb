# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::PhoneNumberRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumberDetailed | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.update("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::PhoneNumberUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumberDetailed | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.list

    assert_pattern do
      response => Telnyx::Models::PhoneNumberListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberDetailed]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.delete("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::PhoneNumberDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PhoneNumberDeleteResponse::Data | nil
      }
    end
  end

  def test_slim_list
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.slim_list

    assert_pattern do
      response => Telnyx::Models::PhoneNumberSlimListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PhoneNumberSlimListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
