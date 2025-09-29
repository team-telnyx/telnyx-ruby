# typed: strong

module Telnyx
  module Models
    class SubNumberOrderRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SubNumberOrderRetrieveParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[include_phone_numbers]
      sig { returns(T.nilable(Telnyx::SubNumberOrderRetrieveParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::SubNumberOrderRetrieveParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::SubNumberOrderRetrieveParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[include_phone_numbers]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::SubNumberOrderRetrieveParams::Filter,
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
              Telnyx::SubNumberOrderRetrieveParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Include the first 50 phone number objects in the results
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_phone_numbers

        sig { params(include_phone_numbers: T::Boolean).void }
        attr_writer :include_phone_numbers

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[include_phone_numbers]
        sig do
          params(include_phone_numbers: T::Boolean).returns(T.attached_class)
        end
        def self.new(
          # Include the first 50 phone number objects in the results
          include_phone_numbers: nil
        )
        end

        sig { override.returns({ include_phone_numbers: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
