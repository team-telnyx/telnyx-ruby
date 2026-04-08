# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PronunciationDictsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.pronunciation_dicts.create(
        items: [{alias: "tel-nicks", text: "Telnyx", type: :alias}],
        name: "Brand Names"
      )

    assert_pattern do
      response => Telnyx::Models::PronunciationDictCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PronunciationDictCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.pronunciation_dicts.retrieve("c215a3e1-be41-4701-97e8-1d3c22f9a5b7")

    assert_pattern do
      response => Telnyx::Models::PronunciationDictRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PronunciationDictRetrieveResponse::Data | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.pronunciation_dicts.update("c215a3e1-be41-4701-97e8-1d3c22f9a5b7")

    assert_pattern do
      response => Telnyx::Models::PronunciationDictUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PronunciationDictUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.pronunciation_dicts.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::PronunciationDictListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        items: ^(Telnyx::Internal::Type::ArrayOf[union: Telnyx::Models::PronunciationDictListResponse::Item]) | nil,
        name: String | nil,
        record_type: Telnyx::Models::PronunciationDictListResponse::RecordType | nil,
        updated_at: Time | nil,
        version: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.pronunciation_dicts.delete("c215a3e1-be41-4701-97e8-1d3c22f9a5b7")

    assert_pattern do
      response => nil
    end
  end
end
