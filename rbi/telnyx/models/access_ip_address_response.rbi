# typed: strong

module Telnyx
  module Models
    class AccessIPAddressResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::AccessIPAddressResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :ip_address

      sig { returns(String) }
      attr_accessor :source

      # An enumeration.
      sig { returns(Telnyx::CloudflareSyncStatus::TaggedSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          ip_address: String,
          source: String,
          status: Telnyx::CloudflareSyncStatus::OrSymbol,
          user_id: String,
          created_at: Time,
          description: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        ip_address:,
        source:,
        # An enumeration.
        status:,
        user_id:,
        created_at: nil,
        description: nil,
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ip_address: String,
            source: String,
            status: Telnyx::CloudflareSyncStatus::TaggedSymbol,
            user_id: String,
            created_at: Time,
            description: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
