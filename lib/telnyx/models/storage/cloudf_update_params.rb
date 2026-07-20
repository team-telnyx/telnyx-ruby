# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Cloudfs#update
      class CloudfUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   New filesystem name, unique within your organization. Names are trimmed and
        #   lowercased; after normalization they may contain lowercase letters, numbers,
        #   `.`, `_`, and `-` only.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::CloudfUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param name [String] New filesystem name, unique within your organization. Names are trimmed and lowe
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
