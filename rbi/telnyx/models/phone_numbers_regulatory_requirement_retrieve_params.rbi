# typed: strong

module Telnyx
  module Models
    class PhoneNumbersRegulatoryRequirementRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PhoneNumbersRegulatoryRequirementRetrieveParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[phone_number]
      sig do
        returns(
          T.nilable(
            Telnyx::PhoneNumbersRegulatoryRequirementRetrieveParams::Filter
          )
        )
      end
      attr_reader :filter

      sig do
        params(
          filter:
            Telnyx::PhoneNumbersRegulatoryRequirementRetrieveParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig do
        params(
          filter:
            Telnyx::PhoneNumbersRegulatoryRequirementRetrieveParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter:
              Telnyx::PhoneNumbersRegulatoryRequirementRetrieveParams::Filter,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbersRegulatoryRequirementRetrieveParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Record type phone number/ phone numbers
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number]
        sig { params(phone_number: String).returns(T.attached_class) }
        def self.new(
          # Record type phone number/ phone numbers
          phone_number: nil
        )
        end

        sig { override.returns({ phone_number: String }) }
        def to_hash
        end
      end
    end
  end
end
