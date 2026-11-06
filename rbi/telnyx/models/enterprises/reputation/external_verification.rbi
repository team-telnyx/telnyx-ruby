# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class ReputationExternalVerification < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::ReputationExternalVerification,
                Telnyx::Internal::AnyHash
              )
            end

          # The ownership-proof documents on file.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :document_ids

          sig { params(document_ids: T::Array[String]).void }
          attr_writer :document_ids

          sig { returns(T.nilable(String)) }
          attr_reader :enterprise_id

          sig { params(enterprise_id: String).void }
          attr_writer :enterprise_id

          # The phone numbers you listed with the documents.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :phone_numbers

          sig { params(phone_numbers: T::Array[String]).void }
          attr_writer :phone_numbers

          # Why the proof was rejected. Set only when `status` is `rejected`.
          sig { returns(T.nilable(String)) }
          attr_accessor :rejection_reason

          # Review state of the ownership proof that allows adding phone numbers hosted with
          # another provider.
          sig do
            returns(
              T.nilable(
                Telnyx::Enterprises::Reputation::ExternalVerificationStatus::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Enterprises::Reputation::ExternalVerificationStatus::OrSymbol
            ).void
          end
          attr_writer :status

          sig { returns(T.nilable(Time)) }
          attr_accessor :reviewed_at

          sig { returns(T.nilable(Time)) }
          attr_accessor :submitted_at

          sig do
            params(
              document_ids: T::Array[String],
              enterprise_id: String,
              phone_numbers: T::Array[String],
              rejection_reason: T.nilable(String),
              reviewed_at: T.nilable(Time),
              status:
                Telnyx::Enterprises::Reputation::ExternalVerificationStatus::OrSymbol,
              submitted_at: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            # The ownership-proof documents on file.
            document_ids: nil,
            enterprise_id: nil,
            # The phone numbers you listed with the documents.
            phone_numbers: nil,
            # Why the proof was rejected. Set only when `status` is `rejected`.
            rejection_reason: nil,
            reviewed_at: nil,
            # Review state of the ownership proof that allows adding phone numbers hosted with
            # another provider.
            status: nil,
            submitted_at: nil
          )
          end

          sig do
            override.returns(
              {
                document_ids: T::Array[String],
                enterprise_id: String,
                phone_numbers: T::Array[String],
                rejection_reason: T.nilable(String),
                reviewed_at: T.nilable(Time),
                status:
                  Telnyx::Enterprises::Reputation::ExternalVerificationStatus::TaggedSymbol,
                submitted_at: T.nilable(Time)
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
