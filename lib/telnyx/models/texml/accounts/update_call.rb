# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        class UpdateCall < Telnyx::Internal::Type::BaseModel
          # @!attribute fallback_method
          #   HTTP request type used for `FallbackUrl`.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::FallbackMethod, nil]
          optional :fallback_method,
                   enum: -> { Telnyx::Texml::Accounts::UpdateCall::FallbackMethod },
                   api_name: :FallbackMethod

          # @!attribute fallback_url
          #   A failover URL for which Telnyx will retrieve the TeXML call instructions if the
          #   Url is not responding.
          #
          #   @return [String, nil]
          optional :fallback_url, String, api_name: :FallbackUrl

          # @!attribute method_
          #   HTTP request type used for `Url`.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::Method, nil]
          optional :method_, enum: -> { Telnyx::Texml::Accounts::UpdateCall::Method }, api_name: :Method

          # @!attribute status
          #   The value to set the call status to. Setting the status to completed ends the
          #   call.
          #
          #   @return [String, nil]
          optional :status, String, api_name: :Status

          # @!attribute status_callback
          #   URL destination for Telnyx to send status callback events to for the call.
          #
          #   @return [String, nil]
          optional :status_callback, String, api_name: :StatusCallback

          # @!attribute status_callback_method
          #   HTTP request type used for `StatusCallback`.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::StatusCallbackMethod, nil]
          optional :status_callback_method,
                   enum: -> { Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod },
                   api_name: :StatusCallbackMethod

          # @!attribute texml
          #   TeXML to replace the current one with.
          #
          #   @return [String, nil]
          optional :texml, String, api_name: :Texml

          # @!attribute url
          #   The URL where TeXML will make a request to retrieve a new set of TeXML
          #   instructions to continue the call flow.
          #
          #   @return [String, nil]
          optional :url, String, api_name: :Url

          # @!method initialize(fallback_method: nil, fallback_url: nil, method_: nil, status: nil, status_callback: nil, status_callback_method: nil, texml: nil, url: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::UpdateCall} for more details.
          #
          #   @param fallback_method [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::FallbackMethod] HTTP request type used for `FallbackUrl`.
          #
          #   @param fallback_url [String] A failover URL for which Telnyx will retrieve the TeXML call instructions if the
          #
          #   @param method_ [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::Method] HTTP request type used for `Url`.
          #
          #   @param status [String] The value to set the call status to. Setting the status to completed ends the ca
          #
          #   @param status_callback [String] URL destination for Telnyx to send status callback events to for the call.
          #
          #   @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::StatusCallbackMethod] HTTP request type used for `StatusCallback`.
          #
          #   @param texml [String] TeXML to replace the current one with.
          #
          #   @param url [String] The URL where TeXML will make a request to retrieve a new set of TeXML instructi

          # HTTP request type used for `FallbackUrl`.
          #
          # @see Telnyx::Models::Texml::Accounts::UpdateCall#fallback_method
          module FallbackMethod
            extend Telnyx::Internal::Type::Enum

            GET = :GET
            POST = :POST

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # HTTP request type used for `Url`.
          #
          # @see Telnyx::Models::Texml::Accounts::UpdateCall#method_
          module Method
            extend Telnyx::Internal::Type::Enum

            GET = :GET
            POST = :POST

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # HTTP request type used for `StatusCallback`.
          #
          # @see Telnyx::Models::Texml::Accounts::UpdateCall#status_callback_method
          module StatusCallbackMethod
            extend Telnyx::Internal::Type::Enum

            GET = :GET
            POST = :POST

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
