# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Storage::MigrationSourcesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.storage.migration_sources.create(bucket_name: "bucket_name", provider: :aws, provider_auth: {})

    assert_pattern do
      response => Telnyx::Models::Storage::MigrationSourceCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::MigrationSourceParams | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.storage.migration_sources.retrieve("")

    assert_pattern do
      response => Telnyx::Models::Storage::MigrationSourceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::MigrationSourceParams | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.storage.migration_sources.list

    assert_pattern do
      response => Telnyx::Models::Storage::MigrationSourceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Storage::MigrationSourceParams]) | nil,
        meta: Telnyx::Storage::Buckets::PaginationMetaSimple | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.storage.migration_sources.delete("")

    assert_pattern do
      response => Telnyx::Models::Storage::MigrationSourceDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::MigrationSourceParams | nil
      }
    end
  end
end
