# typed: strong

module Telnyx
  module Models
    class GlobalIPListResponse < Telnyx::Models::Record
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::GlobalIPListResponse, Telnyx::Internal::AnyHash)
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

      sig do
        params(
          description: String,
          ip_address: String,
          name: String,
          ports: T::Hash[Symbol, T.anything]
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
        ports: nil
      )
      end

      sig do
        override.returns(
          {
            description: String,
            ip_address: String,
            name: String,
            ports: T::Hash[Symbol, T.anything]
          }
        )
      end
      def to_hash
      end
    end
  end
end
