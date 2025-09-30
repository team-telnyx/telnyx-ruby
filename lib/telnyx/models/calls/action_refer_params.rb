# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#refer
      class ActionReferParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute sip_address
        #   The SIP URI to which the call will be referred to.
        #
        #   @return [String]
        required :sip_address, String

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid execution of duplicate commands. Telnyx will ignore
        #   subsequent commands with the same `command_id` as one that has already been
        #   executed.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute custom_headers
        #   Custom headers to be added to the SIP INVITE.
        #
        #   @return [Array<Telnyx::Models::CustomSipHeader>, nil]
        optional :custom_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CustomSipHeader] }

        # @!attribute sip_auth_password
        #   SIP Authentication password used for SIP challenges.
        #
        #   @return [String, nil]
        optional :sip_auth_password, String

        # @!attribute sip_auth_username
        #   SIP Authentication username used for SIP challenges.
        #
        #   @return [String, nil]
        optional :sip_auth_username, String

        # @!attribute sip_headers
        #   SIP headers to be added to the request. Currently only User-to-User header is
        #   supported.
        #
        #   @return [Array<Telnyx::Models::SipHeader>, nil]
        optional :sip_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SipHeader] }

        # @!method initialize(sip_address:, client_state: nil, command_id: nil, custom_headers: nil, sip_auth_password: nil, sip_auth_username: nil, sip_headers: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionReferParams} for more details.
        #
        #   @param sip_address [String] The SIP URI to which the call will be referred to.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
        #
        #   @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers to be added to the SIP INVITE.
        #
        #   @param sip_auth_password [String] SIP Authentication password used for SIP challenges.
        #
        #   @param sip_auth_username [String] SIP Authentication username used for SIP challenges.
        #
        #   @param sip_headers [Array<Telnyx::Models::SipHeader>] SIP headers to be added to the request. Currently only User-to-User header is su
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
