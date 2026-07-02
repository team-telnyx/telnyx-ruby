# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Kvs
        # @see Telnyx::Resources::Storage::Kvs::Keys#list
        class KeyListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute cursor
          #   Opaque pagination cursor from a previous response's `meta.cursor`.
          #
          #   @return [String, nil]
          optional :cursor, String

          # @!attribute limit
          #   Maximum number of keys to return. Values above 1000 are treated as 1000.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute prefix
          #   Return only keys that start with this prefix.
          #
          #   @return [String, nil]
          optional :prefix, String

          # @!method initialize(id:, cursor: nil, limit: nil, prefix: nil, request_options: {})
          #   @param id [String]
          #
          #   @param cursor [String] Opaque pagination cursor from a previous response's `meta.cursor`.
          #
          #   @param limit [Integer] Maximum number of keys to return. Values above 1000 are treated as 1000.
          #
          #   @param prefix [String] Return only keys that start with this prefix.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
