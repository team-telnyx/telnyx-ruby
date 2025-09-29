# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCards#retrieve
    class SimCardRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute include_pin_puk_codes
      #   When set to true, includes the PIN and PUK codes in the response. These codes
      #   are used for SIM card security and unlocking purposes. Available for both
      #   physical SIM cards and eSIMs.
      #
      #   @return [Boolean, nil]
      optional :include_pin_puk_codes, Telnyx::Internal::Type::Boolean

      # @!attribute include_sim_card_group
      #   It includes the associated SIM card group object in the response when present.
      #
      #   @return [Boolean, nil]
      optional :include_sim_card_group, Telnyx::Internal::Type::Boolean

      # @!method initialize(include_pin_puk_codes: nil, include_sim_card_group: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SimCardRetrieveParams} for more details.
      #
      #   @param include_pin_puk_codes [Boolean] When set to true, includes the PIN and PUK codes in the response. These codes ar
      #
      #   @param include_sim_card_group [Boolean] It includes the associated SIM card group object in the response when present.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
