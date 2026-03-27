# typed: strong

module Telnyx
  module Models
    class ReputationPhoneNumberWithReputationData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ReputationPhoneNumberWithReputationData,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique identifier
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # When the number was associated
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # ID of the associated enterprise
      sig { returns(T.nilable(String)) }
      attr_reader :enterprise_id

      sig { params(enterprise_id: String).void }
      attr_writer :enterprise_id

      # Phone number in E.164 format
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # Reputation metrics
      sig { returns(T.nilable(Telnyx::ReputationData)) }
      attr_reader :reputation_data

      sig { params(reputation_data: Telnyx::ReputationData::OrHash).void }
      attr_writer :reputation_data

      # When the record was last updated
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          enterprise_id: String,
          phone_number: String,
          reputation_data: Telnyx::ReputationData::OrHash,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier
        id: nil,
        # When the number was associated
        created_at: nil,
        # ID of the associated enterprise
        enterprise_id: nil,
        # Phone number in E.164 format
        phone_number: nil,
        # Reputation metrics
        reputation_data: nil,
        # When the record was last updated
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            enterprise_id: String,
            phone_number: String,
            reputation_data: Telnyx::ReputationData,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
