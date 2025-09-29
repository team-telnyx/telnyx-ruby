# typed: strong

module Telnyx
  module Models
    class NumberOrderPhoneNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NumberOrderPhoneNumberListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[country_code]
      sig do
        returns(T.nilable(Telnyx::NumberOrderPhoneNumberListParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::NumberOrderPhoneNumberListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::NumberOrderPhoneNumberListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[country_code]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::NumberOrderPhoneNumberListParams::Filter,
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
              Telnyx::NumberOrderPhoneNumberListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Country code of the order phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[country_code]
        sig { params(country_code: String).returns(T.attached_class) }
        def self.new(
          # Country code of the order phone number.
          country_code: nil
        )
        end

        sig { override.returns({ country_code: String }) }
        def to_hash
        end
      end
    end
  end
end
