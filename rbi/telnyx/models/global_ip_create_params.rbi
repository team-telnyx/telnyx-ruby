# typed: strong

module Telnyx
  module Models
    class GlobalIPCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::GlobalIPCreateParams, Telnyx::Internal::AnyHash)
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

      sig do
        params(
          description: String,
          name: String,
          ports: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A user specified description for the address.
        description: nil,
        # A user specified name for the address.
        name: nil,
        # A Global IP ports grouped by protocol code.
        ports: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: String,
            name: String,
            ports: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
