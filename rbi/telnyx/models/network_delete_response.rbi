# typed: strong

module Telnyx
  module Models
    class NetworkDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NetworkDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::NetworkDeleteResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::NetworkDeleteResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::NetworkDeleteResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::Models::NetworkDeleteResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Models::Record
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NetworkDeleteResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # A user specified name for the network.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(name: String).returns(T.attached_class) }
        def self.new(
          # A user specified name for the network.
          name: nil
        )
        end

        sig { override.returns({ name: String }) }
        def to_hash
        end
      end
    end
  end
end
