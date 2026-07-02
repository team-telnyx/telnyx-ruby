# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Kvs
        # @see Telnyx::Resources::Storage::Kvs::Keys#list
        class KeyListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::Storage::Kvs::KeyListResponse::Data>, nil]
          optional :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Storage::Kvs::KeyListResponse::Data] }

          # @!attribute meta
          #
          #   @return [Telnyx::Models::Storage::Kvs::KeyListResponse::Meta, nil]
          optional :meta, -> { Telnyx::Models::Storage::Kvs::KeyListResponse::Meta }

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!method initialize(data: nil, meta: nil, record_type: nil)
          #   @param data [Array<Telnyx::Models::Storage::Kvs::KeyListResponse::Data>]
          #   @param meta [Telnyx::Models::Storage::Kvs::KeyListResponse::Meta]
          #   @param record_type [String]

          class Data < Telnyx::Internal::Type::BaseModel
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

          # @see Telnyx::Models::Storage::Kvs::KeyListResponse#meta
          class Meta < Telnyx::Internal::Type::BaseModel
            # @!attribute cursor
            #   Opaque cursor for the next page; pass it back as the `cursor` query parameter.
            #   Omitted when there are no further results.
            #
            #   @return [String, nil]
            optional :cursor, String

            # @!attribute has_more
            #   Whether more results are available on a following page.
            #
            #   @return [Boolean, nil]
            optional :has_more, Telnyx::Internal::Type::Boolean

            # @!method initialize(cursor: nil, has_more: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Storage::Kvs::KeyListResponse::Meta} for more details.
            #
            #   @param cursor [String] Opaque cursor for the next page; pass it back as the `cursor` query parameter. O
            #
            #   @param has_more [Boolean] Whether more results are available on a following page.
          end
        end
      end
    end
  end
end
