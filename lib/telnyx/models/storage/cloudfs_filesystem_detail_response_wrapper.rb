# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Cloudfs#retrieve
      class CloudfsFilesystemDetailResponseWrapper < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A CloudFS filesystem as returned by get, update, and delete. `meta_url` omits
        #   the credential and there is no `meta_token` field — the token is only returned
        #   by create and rotate-meta-token.
        #
        #   @return [Telnyx::Models::Storage::CloudfsFilesystemDetail, nil]
        optional :data, -> { Telnyx::Storage::CloudfsFilesystemDetail }

        # @!method initialize(data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::CloudfsFilesystemDetailResponseWrapper} for more
        #   details.
        #
        #   @param data [Telnyx::Models::Storage::CloudfsFilesystemDetail] A CloudFS filesystem as returned by get, update, and delete. `meta_url` omits th
      end
    end
  end
end
