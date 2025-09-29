# typed: strong

module Telnyx
  module Models
    class GlobalIPCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::GlobalIPCreateResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::GlobalIPCreateResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::GlobalIPCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::Models::GlobalIPCreateResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Models::Record
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::GlobalIPCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # A user specified description for the address.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # A user specified name for the address.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # A Global IP ports grouped by protocol code.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :ports

        sig { params(ports: T::Hash[Symbol, T.anything]).void }
        attr_writer :ports

        # The Global IP address.
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            description: String,
            ip_address: String,
            name: String,
            ports: T::Hash[Symbol, T.anything],
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A user specified description for the address.
          description: nil,
          # The Global IP address.
          ip_address: nil,
          # A user specified name for the address.
          name: nil,
          # A Global IP ports grouped by protocol code.
          ports: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              description: String,
              ip_address: String,
              name: String,
              ports: T::Hash[Symbol, T.anything],
              record_type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
