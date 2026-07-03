# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Kvs
        # @see Telnyx::Resources::Storage::Kvs::Keys#list
        class KeyListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute key
          #
          #   @return [String, nil]
          optional :key, String

          # @!attribute size_bytes
          #   Size of the stored value in bytes.
          #
          #   @return [Integer, nil]
          optional :size_bytes, Integer

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!method initialize(key: nil, size_bytes: nil, updated_at: nil)
          #   @param key [String]
          #
          #   @param size_bytes [Integer] Size of the stored value in bytes.
          #
          #   @param updated_at [Time]
        end
      end
    end
  end
end
