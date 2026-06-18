# typed: strong

module Telnyx
  module Models
    module Enterprises
      class ReputationUpdateFrequencyParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Enterprises::ReputationUpdateFrequencyParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :enterprise_id

        # How often Telnyx refreshes the stored reputation data for this enterprise's
        # registered numbers.
        sig { returns(Telnyx::Enterprises::ReputationCheckFrequency::OrSymbol) }
        attr_accessor :check_frequency

        sig do
          params(
            enterprise_id: String,
            check_frequency:
              Telnyx::Enterprises::ReputationCheckFrequency::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          enterprise_id:,
          # How often Telnyx refreshes the stored reputation data for this enterprise's
          # registered numbers.
          check_frequency:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              enterprise_id: String,
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
