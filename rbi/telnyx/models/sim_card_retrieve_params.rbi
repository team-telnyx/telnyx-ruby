# typed: strong

module Telnyx
  module Models
    class SimCardRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardRetrieveParams, Telnyx::Internal::AnyHash)
        end

      # When set to true, includes the PIN and PUK codes in the response. These codes
      # are used for SIM card security and unlocking purposes. Available for both
      # physical SIM cards and eSIMs.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_pin_puk_codes

      sig { params(include_pin_puk_codes: T::Boolean).void }
      attr_writer :include_pin_puk_codes

      # It includes the associated SIM card group object in the response when present.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_sim_card_group

      sig { params(include_sim_card_group: T::Boolean).void }
      attr_writer :include_sim_card_group

      sig do
        params(
          include_pin_puk_codes: T::Boolean,
          include_sim_card_group: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # When set to true, includes the PIN and PUK codes in the response. These codes
        # are used for SIM card security and unlocking purposes. Available for both
        # physical SIM cards and eSIMs.
        include_pin_puk_codes: nil,
        # It includes the associated SIM card group object in the response when present.
        include_sim_card_group: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include_pin_puk_codes: T::Boolean,
            include_sim_card_group: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
