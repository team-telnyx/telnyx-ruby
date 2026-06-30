# typed: strong

module Telnyx
  module Models
    module Dir
      class ReferenceCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::ReferenceCreateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :dir_id

        # Exactly two business references.
        sig { returns(T::Array[Telnyx::Dir::ReferenceInput]) }
        attr_accessor :business_references

        # One reference supplied at submit. The reference type is implied by the field
        # that carries it (business_references vs financial_reference).
        sig { returns(Telnyx::Dir::ReferenceInput) }
        attr_reader :financial_reference

        sig do
          params(financial_reference: Telnyx::Dir::ReferenceInput::OrHash).void
        end
        attr_writer :financial_reference

        sig do
          params(
            dir_id: String,
            business_references: T::Array[Telnyx::Dir::ReferenceInput::OrHash],
            financial_reference: Telnyx::Dir::ReferenceInput::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dir_id:,
          # Exactly two business references.
          business_references:,
          # One reference supplied at submit. The reference type is implied by the field
          # that carries it (business_references vs financial_reference).
          financial_reference:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dir_id: String,
              business_references: T::Array[Telnyx::Dir::ReferenceInput],
              financial_reference: Telnyx::Dir::ReferenceInput,
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
