# typed: strong

module Telnyx
  module Models
    class NetworkListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::NetworkListResponse, Telnyx::Internal::AnyHash)
        end

      sig do
        returns(T.nilable(T::Array[Telnyx::Models::NetworkListResponse::Data]))
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::NetworkListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::NetworkListResponse::Data::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::NetworkListResponse::Data],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Models::Record
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NetworkListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # A user specified name for the network.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(name: String, record_type: String).returns(T.attached_class)
        end
        def self.new(
          # A user specified name for the network.
          name: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig { override.returns({ name: String, record_type: String }) }
        def to_hash
        end
      end
    end
  end
end
