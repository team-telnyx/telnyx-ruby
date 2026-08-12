# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class AgentConsentConfiguration < Telnyx::Internal::Type::BaseModel
        # @!attribute call_to_action
        #
        #   @return [String]
        required :call_to_action, String

        # @!attribute double_opt_in
        #
        #   @return [Boolean]
        required :double_opt_in, Telnyx::Internal::Type::Boolean

        # @!attribute help_response
        #
        #   @return [String]
        required :help_response, String

        # @!attribute opt_in_message
        #
        #   @return [String]
        required :opt_in_message, String

        # @!attribute opt_in_methods
        #
        #   @return [Array<Telnyx::Models::Rcs::AgentConsentConfiguration::OptInMethod>]
        required :opt_in_methods,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::AgentConsentConfiguration::OptInMethod] }

        # @!attribute opt_out_response
        #
        #   @return [String]
        required :opt_out_response, String

        # @!attribute call_to_action_media_url
        #   Required when an opt-in method is `WEBSITE` or `MOBILE_APP`.
        #
        #   @return [String, nil]
        optional :call_to_action_media_url, String, nil?: true

        # @!attribute call_to_action_url
        #   Required when an opt-in method is `WEBSITE`.
        #
        #   @return [String, nil]
        optional :call_to_action_url, String, nil?: true

        # @!attribute double_opt_in_message
        #   Required when double_opt_in is true.
        #
        #   @return [String, nil]
        optional :double_opt_in_message, String, nil?: true

        # @!method initialize(call_to_action:, double_opt_in:, help_response:, opt_in_message:, opt_in_methods:, opt_out_response:, call_to_action_media_url: nil, call_to_action_url: nil, double_opt_in_message: nil)
        #   @param call_to_action [String]
        #
        #   @param double_opt_in [Boolean]
        #
        #   @param help_response [String]
        #
        #   @param opt_in_message [String]
        #
        #   @param opt_in_methods [Array<Telnyx::Models::Rcs::AgentConsentConfiguration::OptInMethod>]
        #
        #   @param opt_out_response [String]
        #
        #   @param call_to_action_media_url [String, nil] Required when an opt-in method is `WEBSITE` or `MOBILE_APP`.
        #
        #   @param call_to_action_url [String, nil] Required when an opt-in method is `WEBSITE`.
        #
        #   @param double_opt_in_message [String, nil] Required when double_opt_in is true.

        class OptInMethod < Telnyx::Internal::Type::BaseModel
          # @!attribute method_type
          #
          #   @return [Symbol, Telnyx::Models::Rcs::AgentConsentConfiguration::OptInMethod::MethodType]
          required :method_type, enum: -> { Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType }

          # @!attribute description
          #   Required when method_type is `OTHER`.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!method initialize(method_type:, description: nil)
          #   @param method_type [Symbol, Telnyx::Models::Rcs::AgentConsentConfiguration::OptInMethod::MethodType]
          #
          #   @param description [String, nil] Required when method_type is `OTHER`.

          # @see Telnyx::Models::Rcs::AgentConsentConfiguration::OptInMethod#method_type
          module MethodType
            extend Telnyx::Internal::Type::Enum

            SMS = :SMS
            WEBSITE = :WEBSITE
            MOBILE_APP = :MOBILE_APP
            QR_CODE = :QR_CODE
            SALE_POINT = :SALE_POINT
            OTHER = :OTHER

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
