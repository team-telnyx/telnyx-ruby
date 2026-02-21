# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AlphanumericSenderIDs#create
    class AlphanumericSenderIDCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute alphanumeric_sender_id
      #   The alphanumeric sender ID string.
      #
      #   @return [String]
      required :alphanumeric_sender_id, String

      # @!attribute messaging_profile_id
      #   The messaging profile to associate the sender ID with.
      #
      #   @return [String]
      required :messaging_profile_id, String

      # @!attribute us_long_code_fallback
      #   A US long code number to use as fallback when sending to US destinations.
      #
      #   @return [String, nil]
      optional :us_long_code_fallback, String

      # @!method initialize(alphanumeric_sender_id:, messaging_profile_id:, us_long_code_fallback: nil, request_options: {})
      #   @param alphanumeric_sender_id [String] The alphanumeric sender ID string.
      #
      #   @param messaging_profile_id [String] The messaging profile to associate the sender ID with.
      #
      #   @param us_long_code_fallback [String] A US long code number to use as fallback when sending to US destinations.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
