# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class ExternalVerificationCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::ExternalVerificationCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          # Ids of uploaded documents (Documents API) proving the enterprise owns its phone
          # numbers hosted with another provider, for example a carrier invoice or account
          # statement.
          sig { returns(T::Array[String]) }
          attr_accessor :document_ids

          # Optional. The phone numbers hosted with another provider that the documents
          # cover, in E.164 format. Shown to the reviewer to match the documents to your
          # numbers; you can still add numbers that are not listed here, and each is checked
          # on its own.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :phone_numbers

          sig { params(phone_numbers: T::Array[String]).void }
          attr_writer :phone_numbers

          sig do
            params(
              enterprise_id: String,
              document_ids: T::Array[String],
              phone_numbers: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            enterprise_id:,
            # Ids of uploaded documents (Documents API) proving the enterprise owns its phone
            # numbers hosted with another provider, for example a carrier invoice or account
            # statement.
            document_ids:,
            # Optional. The phone numbers hosted with another provider that the documents
            # cover, in E.164 format. Shown to the reviewer to match the documents to your
            # numbers; you can still add numbers that are not listed here, and each is checked
            # on its own.
            phone_numbers: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                enterprise_id: String,
                document_ids: T::Array[String],
                phone_numbers: T::Array[String],
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
