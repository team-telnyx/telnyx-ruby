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
            T.nilable(
              Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::OrSymbol
            )
          )
        end
        attr_reader :check_frequency

        sig do
          params(
            check_frequency:
              Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::OrSymbol
          ).void
        end
        attr_writer :check_frequency

        sig do
          params(
            enterprise_id: String,
            loa_document_id: String,
            check_frequency:
              Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::OrSymbol,
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
                Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # How often Telnyx refreshes the stored reputation data for this enterprise's
        # registered numbers.
        module CheckFrequency
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Enterprises::ReputationEnableParams::CheckFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS_DAILY =
            T.let(
              :business_daily,
              Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::TaggedSymbol
            )
          DAILY =
            T.let(
              :daily,
              Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :weekly,
              Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::TaggedSymbol
            )
          BIWEEKLY =
            T.let(
              :biweekly,
              Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::TaggedSymbol
            )
          NEVER =
            T.let(
              :never,
              Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
