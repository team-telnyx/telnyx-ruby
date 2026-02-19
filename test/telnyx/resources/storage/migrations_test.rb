# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Storage::MigrationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.storage.migrations.create(
        source_id: "source_id",
        target_bucket_name: "target_bucket_name",
        target_region: "target_region"
      )

    assert_pattern do
      response => Telnyx::Models::Storage::MigrationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::MigrationParams | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.storage.migrations.retrieve("")

    assert_pattern do
      response => Telnyx::Models::Storage::MigrationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::MigrationParams | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.storage.migrations.list

    assert_pattern do
      response => Telnyx::Models::Storage::MigrationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Storage::MigrationParams]) | nil,
        meta: Telnyx::Storage::Buckets::PaginationMetaSimple | nil
      }
    end
  end
end
