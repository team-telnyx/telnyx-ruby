# typed: strong

module Telnyx
  module Models
    class ChannelZoneListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ChannelZoneListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::ChannelZoneListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::ChannelZoneListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::ChannelZoneListResponse::Data::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::ChannelZoneListResponse::Data],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ChannelZoneListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :channels

        # List of countries (in ISO 3166-2, capitalized) members of the billing channel
        # zone
        sig { returns(T::Array[String]) }
        attr_accessor :countries

        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(
            Telnyx::Models::ChannelZoneListResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # ISO 8601 formatted date of when the channel zone was created
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # ISO 8601 formatted date of when the channel zone was updated
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            channels: Integer,
            countries: T::Array[String],
            name: String,
            record_type:
              Telnyx::Models::ChannelZoneListResponse::Data::RecordType::OrSymbol,
            created_at: String,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          channels:,
          # List of countries (in ISO 3166-2, capitalized) members of the billing channel
          # zone
          countries:,
          name:,
          record_type:,
          # ISO 8601 formatted date of when the channel zone was created
          created_at: nil,
          # ISO 8601 formatted date of when the channel zone was updated
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              channels: Integer,
              countries: T::Array[String],
              name: String,
              record_type:
                Telnyx::Models::ChannelZoneListResponse::Data::RecordType::TaggedSymbol,
              created_at: String,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::ChannelZoneListResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHANNEL_ZONE =
            T.let(
              :channel_zone,
              Telnyx::Models::ChannelZoneListResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::ChannelZoneListResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
