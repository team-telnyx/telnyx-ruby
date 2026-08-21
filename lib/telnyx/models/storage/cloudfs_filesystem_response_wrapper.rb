# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Cloudfs#create
      class CloudfsFilesystemResponseWrapper < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A CloudFS filesystem, including its metadata credential. This shape is returned
        #   only by create and rotate-meta-token.
        #
        #   @return [Telnyx::Models::Storage::CloudfsFilesystem, nil]
        optional :data, -> { Telnyx::Storage::CloudfsFilesystem }

        # @!method initialize(data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::CloudfsFilesystemResponseWrapper} for more details.
        #
        #   @param data [Telnyx::Models::Storage::CloudfsFilesystem] A CloudFS filesystem, including its metadata credential. This shape is returned
      end
    end
  end
end
