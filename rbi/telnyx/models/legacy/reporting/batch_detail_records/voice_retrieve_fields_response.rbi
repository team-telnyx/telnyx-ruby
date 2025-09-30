# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class VoiceRetrieveFieldsResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveFieldsResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Cost and billing related information
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :billing

            sig { params(billing: T::Array[String]).void }
            attr_writer :billing

            # Fields related to call interaction and basic call information
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :interaction_data

            sig { params(interaction_data: T::Array[String]).void }
            attr_writer :interaction_data

            # Geographic and routing information for phone numbers
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :number_information

            sig { params(number_information: T::Array[String]).void }
            attr_writer :number_information

            # Technical telephony and call control information
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :telephony_data

            sig { params(telephony_data: T::Array[String]).void }
            attr_writer :telephony_data

            # Available CDR report fields grouped by category
            sig do
              params(
                billing: T::Array[String],
                interaction_data: T::Array[String],
                number_information: T::Array[String],
                telephony_data: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # Cost and billing related information
              billing: nil,
              # Fields related to call interaction and basic call information
              interaction_data: nil,
              # Geographic and routing information for phone numbers
              number_information: nil,
              # Technical telephony and call control information
              telephony_data: nil
            )
            end

            sig do
              override.returns(
                {
                  billing: T::Array[String],
                  interaction_data: T::Array[String],
                  number_information: T::Array[String],
                  telephony_data: T::Array[String]
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
end
