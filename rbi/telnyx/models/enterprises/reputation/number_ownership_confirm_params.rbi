# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberOwnershipConfirmParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::NumberOwnershipConfirmParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          sig { returns(String) }
          attr_accessor :phone_number

          # `true` confirms you still own the number. `false` reports that you no longer own
          # it and removes it from Number Reputation.
          sig { returns(T::Boolean) }
          attr_accessor :still_own

          # Optional id of an uploaded document supporting the confirmation.
          sig { returns(T.nilable(String)) }
          attr_reader :evidence_document_id

          sig { params(evidence_document_id: String).void }
          attr_writer :evidence_document_id

          sig do
            params(
              enterprise_id: String,
              phone_number: String,
              still_own: T::Boolean,
              evidence_document_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            enterprise_id:,
            phone_number:,
            # `true` confirms you still own the number. `false` reports that you no longer own
            # it and removes it from Number Reputation.
            still_own:,
            # Optional id of an uploaded document supporting the confirmation.
            evidence_document_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                enterprise_id: String,
                phone_number: String,
                still_own: T::Boolean,
                evidence_document_id: String,
                request_options: Telnyx::RequestOptions
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
