# typed: strong

module Telnyx
  module Models
    class IntegrationSecret < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::IntegrationSecret, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :identifier

      sig { returns(String) }
      attr_accessor :record_type

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          identifier: String,
          record_type: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(id:, created_at:, identifier:, record_type:, updated_at: nil)
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            identifier: String,
            record_type: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
