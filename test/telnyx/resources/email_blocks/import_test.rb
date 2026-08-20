# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::EmailBlocks::ImportTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email_blocks.import.create(file: StringIO.new("Example data"))

    assert_pattern do
      response => Telnyx::EmailBlocks::EmailBlockImportResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailBlocks::EmailBlockImport
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.email_blocks.import.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailBlocks::EmailBlockImportResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailBlocks::EmailBlockImport
      }
    end
  end
end
