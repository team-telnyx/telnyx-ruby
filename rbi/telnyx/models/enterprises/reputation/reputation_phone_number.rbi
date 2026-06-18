# typed: strong

module Telnyx
  module Models
    module Enterprises
      ReputationPhoneNumber = Reputation::ReputationPhoneNumber

      module Reputation
        class ReputationPhoneNumber < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :enterprise_id

          sig { params(enterprise_id: String).void }
          attr_writer :enterprise_id

          # E.164 with leading `+`.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # `null` until the first refresh has been collected for this number.
          sig { returns(T.nilable(Telnyx::ReputationData)) }
          attr_reader :reputation_data

          sig do
            params(
              reputation_data: T.nilable(Telnyx::ReputationData::OrHash)
            ).void
          end
          attr_writer :reputation_data

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

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
              reputation_data: T.nilable(Telnyx::ReputationData::OrHash),
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            created_at: nil,
            enterprise_id: nil,
            # E.164 with leading `+`.
            phone_number: nil,
            # `null` until the first refresh has been collected for this number.
            reputation_data: nil,
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
                reputation_data: T.nilable(Telnyx::ReputationData),
                updated_at: Time
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
