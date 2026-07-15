# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Storage::Cloudfs::ActionsTest < Telnyx::Test::ResourceTest
  def test_rotate_meta_token_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.storage.cloudfs.actions.rotate_meta_token(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        idempotency_key: "Idempotency-Key"
      )

    assert_pattern do
      response => Telnyx::Storage::CloudfsFilesystemResponseWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::CloudfsFilesystemResponseWrapper::Data | nil
      }
    end
  end
end
