# typed: strong

module Telnyx
  module Models
    class NetworkRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NetworkRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::NetworkRetrieveResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::NetworkRetrieveResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::NetworkRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::NetworkRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Models::Record
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NetworkRetrieveResponse::Data,
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
