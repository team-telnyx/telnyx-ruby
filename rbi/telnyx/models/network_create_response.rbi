# typed: strong

module Telnyx
  module Models
    class NetworkCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NetworkCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::NetworkCreateResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::NetworkCreateResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::NetworkCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::Models::NetworkCreateResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Models::Record
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NetworkCreateResponse::Data,
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
