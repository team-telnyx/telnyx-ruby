# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Calls
          class Siprec
            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonParams} for more
            # details.
            #
            # Updates siprec session identified by siprec_sid.
            #
            # @overload siprec_sid_json(siprec_sid, account_sid:, call_sid:, status: nil, request_options: {})
            #
            # @param siprec_sid [String] Path param: The SiprecSid that uniquely identifies the Sip Recording.
            #
            # @param account_sid [String] Path param: The id of the account the resource belongs to.
            #
            # @param call_sid [String] Path param: The CallSid that identifies the call to update.
            #
            # @param status [Symbol, Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonParams::Status] Body param: The new status of the resource. Specifying `stopped` will end the si
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse]
            #
            # @see Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonParams
            def siprec_sid_json(siprec_sid, params)
              parsed, options = Telnyx::Texml::Accounts::Calls::SiprecSiprecSidJsonParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              call_sid =
                parsed.delete(:call_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["texml/Accounts/%1$s/Calls/%2$s/Siprec/%3$s.json", account_sid, call_sid, siprec_sid],
                headers: {"content-type" => "application/x-www-form-urlencoded"},
                body: parsed,
                model: Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [Telnyx::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
