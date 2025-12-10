# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingProfilesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.create(name: "My name", whitelisted_destinations: ["US"])

    assert_pattern do
      response => Telnyx::Models::MessagingProfileCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfile | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessagingProfileRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfile | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessagingProfileUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfile | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.list

    assert_pattern do
      response => Telnyx::Models::MessagingProfileListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingProfile]) | nil,
        meta: Telnyx::Models::MessagingProfileListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessagingProfileDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfile | nil
      }
    end
  end

  def test_list_phone_numbers
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.list_phone_numbers("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessagingProfileListPhoneNumbersResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberWithMessagingSettings]) | nil,
        meta: Telnyx::Models::MessagingProfileListPhoneNumbersResponse::Meta | nil
      }
    end
  end

  def test_list_short_codes
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.list_short_codes("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessagingProfileListShortCodesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::ShortCode]) | nil,
        meta: Telnyx::Models::MessagingProfileListShortCodesResponse::Meta | nil
      }
    end
  end
end
