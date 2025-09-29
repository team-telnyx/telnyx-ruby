# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::StorageTest < Telnyx::Test::ResourceTest
  def test_list_migration_source_coverage
    skip("Prism tests are disabled")

    response = @telnyx.storage.list_migration_source_coverage

    assert_pattern do
      response => Telnyx::Models::StorageListMigrationSourceCoverageResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data]) | nil,
        meta: Telnyx::Storage::Buckets::PaginationMetaSimple | nil
      }
    end
  end
end
