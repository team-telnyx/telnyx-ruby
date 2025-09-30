# typed: strong

module Telnyx
  module Models
    class WirelessRetrieveRegionsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WirelessRetrieveRegionsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::WirelessRetrieveRegionsResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::WirelessRetrieveRegionsResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::WirelessRetrieveRegionsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::WirelessRetrieveRegionsResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WirelessRetrieveRegionsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The unique code of the region.
        sig { returns(String) }
        attr_accessor :code

        # The name of the region.
        sig { returns(String) }
        attr_accessor :name

        # Timestamp when the region was inserted.
        sig { returns(T.nilable(Time)) }
        attr_reader :inserted_at

        sig { params(inserted_at: Time).void }
        attr_writer :inserted_at

        # Timestamp when the region was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            code: String,
            name: String,
            inserted_at: Time,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique code of the region.
          code:,
          # The name of the region.
          name:,
          # Timestamp when the region was inserted.
          inserted_at: nil,
          # Timestamp when the region was last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            { code: String, name: String, inserted_at: Time, updated_at: Time }
          )
        end
        def to_hash
        end
      end
    end
  end
end
