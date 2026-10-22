# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      class HostedSignups
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Whatsapp::HostedSignupCreateParams} for more details.
        #
        # Create a time-limited onboarding URL on the Telnyx-hosted Embedded Signup page
        # for a Tech Provider's end customer. Set `signup_type` to `coexistence` to launch
        # Meta's WhatsApp Business app coexistence flow instead of standard Cloud API
        # onboarding.
        #
        # @overload create(app_id:, expires_at: nil, signup_type: nil, request_options: {})
        #
        # @param app_id [String] Meta App ID linked to the Telnyx account. The app must be enabled.
        #
        # @param expires_at [Time] When the onboarding URL expires, in RFC 3339 format. Must be in the future and a
        #
        # @param signup_type [Symbol, Telnyx::Models::Whatsapp::HostedSignupCreateParams::SignupType] Onboarding flow the hosted page launches. Use `coexistence` for a number that re
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Whatsapp::HostedSignupCreateResponse]
        #
        # @see Telnyx::Models::Whatsapp::HostedSignupCreateParams
        def create(params)
          parsed, options = Telnyx::Whatsapp::HostedSignupCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "whatsapp/hosted_signups",
            body: parsed,
            model: Telnyx::Models::Whatsapp::HostedSignupCreateResponse,
            options: options
          )
        end

        # Retrieve a hosted signup and its onboarding URL.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Hosted signup ID returned when the hosted signup was created
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse]
        #
        # @see Telnyx::Models::Whatsapp::HostedSignupRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["whatsapp/hosted_signups/%1$s", id],
            model: Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse,
            options: params[:request_options]
          )
        end

        # List hosted signups created by the account, newest first. Expired hosted signups
        # are included.
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer]
        # @param page_size [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Whatsapp::HostedSignupListResponse>]
        #
        # @see Telnyx::Models::Whatsapp::HostedSignupListParams
        def list(params = {})
          parsed, options = Telnyx::Whatsapp::HostedSignupListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "whatsapp/hosted_signups",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Whatsapp::HostedSignupListResponse,
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
