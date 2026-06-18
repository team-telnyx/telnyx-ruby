# typed: strong

module Telnyx
  module Models
    module Enterprises
      class ReputationEnableParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Enterprises::ReputationEnableParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :enterprise_id

        # Id of the signed Letter of Authorization document, returned by the Telnyx
        # Documents API after upload (upload via `POST /v2/documents`; see
        # https://developers.telnyx.com/api/documents).
        sig { returns(String) }
        attr_accessor :loa_document_id

        # How often Telnyx refreshes the stored reputation data for this enterprise's
        # registered numbers.
        sig do
          returns(
            T.nilable(Telnyx::Enterprises::ReputationCheckFrequency::OrSymbol)
          )
        end
        attr_reader :check_frequency

        sig do
          params(
            check_frequency:
              Telnyx::Enterprises::ReputationCheckFrequency::OrSymbol
          ).void
        end
        attr_writer :check_frequency

        sig do
          params(
            enterprise_id: String,
            loa_document_id: String,
            check_frequency:
              Telnyx::Enterprises::ReputationCheckFrequency::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          enterprise_id:,
          # Id of the signed Letter of Authorization document, returned by the Telnyx
          # Documents API after upload (upload via `POST /v2/documents`; see
          # https://developers.telnyx.com/api/documents).
          loa_document_id:,
          # How often Telnyx refreshes the stored reputation data for this enterprise's
          # registered numbers.
          check_frequency: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              enterprise_id: String,
              loa_document_id: String,
              check_frequency:
                Telnyx::Enterprises::ReputationCheckFrequency::OrSymbol,
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
