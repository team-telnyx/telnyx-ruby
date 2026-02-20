# typed: strong

module Telnyx
  module Models
    class TelephonyCredential < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::TelephonyCredential, Telnyx::Internal::AnyHash)
        end

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO-8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Defaults to false
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :expired

      sig { params(expired: T::Boolean).void }
      attr_writer :expired

      # ISO-8601 formatted date indicating when the resource will expire.
      sig { returns(T.nilable(String)) }
      attr_reader :expires_at

      sig { params(expires_at: String).void }
      attr_writer :expires_at

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # Identifies the resource this credential is associated with.
      sig { returns(T.nilable(String)) }
      attr_reader :resource_id

      sig { params(resource_id: String).void }
      attr_writer :resource_id

      # The randomly generated SIP password for the credential.
      sig { returns(T.nilable(String)) }
      attr_reader :sip_password

      sig { params(sip_password: String).void }
      attr_writer :sip_password

      # The randomly generated SIP username for the credential.
      sig { returns(T.nilable(String)) }
      attr_reader :sip_username

      sig { params(sip_username: String).void }
      attr_writer :sip_username

      # ISO-8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # Identifies the user this credential is associated with.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          id: String,
          created_at: String,
          expired: T::Boolean,
          expires_at: String,
          name: String,
          record_type: String,
          resource_id: String,
          sip_password: String,
          sip_username: String,
          updated_at: String,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # ISO-8601 formatted date indicating when the resource was created.
        created_at: nil,
        # Defaults to false
        expired: nil,
        # ISO-8601 formatted date indicating when the resource will expire.
        expires_at: nil,
        name: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Identifies the resource this credential is associated with.
        resource_id: nil,
        # The randomly generated SIP password for the credential.
        sip_password: nil,
        # The randomly generated SIP username for the credential.
        sip_username: nil,
        # ISO-8601 formatted date indicating when the resource was updated.
        updated_at: nil,
        # Identifies the user this credential is associated with.
        user_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            expired: T::Boolean,
            expires_at: String,
            name: String,
            record_type: String,
            resource_id: String,
            sip_password: String,
            sip_username: String,
            updated_at: String,
            user_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
