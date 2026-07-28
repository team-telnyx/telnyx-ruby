# frozen_string_literal: true

module Telnyx
  module Models
    module EmailBlocks
      # @see Telnyx::Resources::EmailBlocks::Import#create
      class ImportCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute file
        #   The CSV file (Plug.Upload). Missing/non-upload → 400.
        #
        #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
        required :file, Telnyx::Internal::Type::FileInput

        # @!attribute block_ttl_days
        #   TTL for imported `manual_block` rows; other reasons get `expires_at: null`.
        #   Invalid/missing → falls back to 30.
        #
        #   @return [Integer, nil]
        optional :block_ttl_days, Integer

        # @!method initialize(file:, block_ttl_days: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailBlocks::ImportCreateParams} for more details.
        #
        #   @param file [Pathname, StringIO, IO, String, Telnyx::FilePart] The CSV file (Plug.Upload). Missing/non-upload → 400.
        #
        #   @param block_ttl_days [Integer] TTL for imported `manual_block` rows; other reasons get `expires_at: null`. Inva
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
