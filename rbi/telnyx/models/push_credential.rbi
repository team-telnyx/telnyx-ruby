# typed: strong

module Telnyx
  module Models
    class PushCredential < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PushCredential, Telnyx::Internal::AnyHash)
        end

      # Unique identifier of a push credential
      sig { returns(String) }
      attr_accessor :id

      # Alias to uniquely identify a credential
      sig { returns(String) }
      attr_accessor :alias_

      # Apple certificate for sending push notifications. For iOS only
      sig { returns(String) }
      attr_accessor :certificate

      # ISO 8601 timestamp when the room was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Apple private key for a given certificate for sending push notifications. For
      # iOS only
      sig { returns(String) }
      attr_accessor :private_key

      # Google server key for sending push notifications. For Android only
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :project_account_json_file

      # Type of mobile push credential. Either <code>ios</code> or <code>android</code>
      sig { returns(String) }
      attr_accessor :type

      # ISO 8601 timestamp when the room was updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :record_type

      sig do
        params(
          id: String,
          alias_: String,
          certificate: String,
          created_at: Time,
          private_key: String,
          project_account_json_file: T::Hash[Symbol, T.anything],
          record_type: String,
          type: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of a push credential
        id:,
        # Alias to uniquely identify a credential
        alias_:,
        # Apple certificate for sending push notifications. For iOS only
        certificate:,
        # ISO 8601 timestamp when the room was created
        created_at:,
        # Apple private key for a given certificate for sending push notifications. For
        # iOS only
        private_key:,
        # Google server key for sending push notifications. For Android only
        project_account_json_file:,
        record_type:,
        # Type of mobile push credential. Either <code>ios</code> or <code>android</code>
        type:,
        # ISO 8601 timestamp when the room was updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            alias_: String,
            certificate: String,
            created_at: Time,
            private_key: String,
            project_account_json_file: T::Hash[Symbol, T.anything],
            record_type: String,
            type: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
