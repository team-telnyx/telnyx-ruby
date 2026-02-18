# typed: strong

module Telnyx
  module Models
    class GlobalIPListResponse < Telnyx::Internal::Type::BaseModel
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

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # The Global IP address.
      sig { returns(T.nilable(String)) }
      attr_reader :ip_address

      sig { params(ip_address: String).void }
      attr_writer :ip_address

      sig do
        params(
          id: String,
          created_at: String,
          record_type: String,
          updated_at: String,
          description: String,
          ip_address: String,
          name: String,
          ports: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil,
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
            id: String,
            created_at: String,
            record_type: String,
            updated_at: String,
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
