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

        # New frequency for refreshing reputation data
        sig do
          returns(
            Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::OrSymbol
          )
        end
        attr_accessor :check_frequency

        sig do
          params(
            enterprise_id: String,
            check_frequency:
              Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          enterprise_id:,
          # New frequency for refreshing reputation data
          check_frequency:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              enterprise_id: String,
              check_frequency:
                Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # New frequency for refreshing reputation data
        module CheckFrequency
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS_DAILY =
            T.let(
              :business_daily,
              Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::TaggedSymbol
            )
          DAILY =
            T.let(
              :daily,
              Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :weekly,
              Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::TaggedSymbol
            )
          BIWEEKLY =
            T.let(
              :biweekly,
              Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::TaggedSymbol
            )
          NEVER =
            T.let(
              :never,
              Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::TaggedSymbol
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
