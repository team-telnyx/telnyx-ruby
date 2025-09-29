# typed: strong

module Telnyx
  module Models
    class PortingListUkCarriersResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PortingListUkCarriersResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::PortingListUkCarriersResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::PortingListUkCarriersResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::PortingListUkCarriersResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::PortingListUkCarriersResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingListUkCarriersResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the UK carrier.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Alternative CUPIDs of the carrier.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :alternative_cupids

        sig { params(alternative_cupids: T::Array[String]).void }
        attr_writer :alternative_cupids

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The CUPID of the carrier. This is a 3 digit number code that identifies the
        # carrier in the UK.
        sig { returns(T.nilable(String)) }
        attr_reader :cupid

        sig { params(cupid: String).void }
        attr_writer :cupid

        # The name of the carrier.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            alternative_cupids: T::Array[String],
            created_at: Time,
            cupid: String,
            name: String,
            record_type: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the UK carrier.
          id: nil,
          # Alternative CUPIDs of the carrier.
          alternative_cupids: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # The CUPID of the carrier. This is a 3 digit number code that identifies the
          # carrier in the UK.
          cupid: nil,
          # The name of the carrier.
          name: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              alternative_cupids: T::Array[String],
              created_at: Time,
              cupid: String,
              name: String,
              record_type: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
