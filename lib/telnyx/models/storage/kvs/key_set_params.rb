# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Kvs
        # @see Telnyx::Resources::Storage::Kvs::Keys#set
        class KeySetParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute key
          #
          #   @return [String]
          required :key, String

          # @!attribute body
          #   Raw value bytes, stored verbatim.
          #
          #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
          required :body, Telnyx::Internal::Type::FileInput

          # @!attribute ttl_secs
          #   Time-to-live in seconds. When set, the key expires and is deleted after this
          #   duration. Requires a namespace provisioned with TTL support; namespaces without
          #   it return a `409`.
          #
          #   @return [Integer, nil]
          optional :ttl_secs, Integer

          # @!method initialize(id:, key:, body:, ttl_secs: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Storage::Kvs::KeySetParams} for more details.
          #
          #   @param id [String]
          #
          #   @param key [String]
          #
          #   @param body [Pathname, StringIO, IO, String, Telnyx::FilePart] Raw value bytes, stored verbatim.
          #
          #   @param ttl_secs [Integer] Time-to-live in seconds. When set, the key expires and is deleted after this dur
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
