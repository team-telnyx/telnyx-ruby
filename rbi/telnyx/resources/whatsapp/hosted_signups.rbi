# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      class HostedSignups
        # Create a time-limited onboarding URL on the Telnyx-hosted Embedded Signup page
        # for a Tech Provider's end customer. Set `signup_type` to `coexistence` to launch
        # Meta's WhatsApp Business app coexistence flow instead of standard Cloud API
        # onboarding.
        sig do
          params(
            app_id: String,
            expires_at: Time,
            signup_type:
              Telnyx::Whatsapp::HostedSignupCreateParams::SignupType::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Whatsapp::HostedSignupCreateResponse)
        end
        def create(
          # Meta App ID linked to the Telnyx account or its manager account. The app must be
          # enabled.
          app_id:,
          # When the onboarding URL expires, in RFC 3339 format. Must be in the future and
          # at most 3 days ahead. Defaults to 24 hours after creation.
          expires_at: nil,
          # Onboarding flow the hosted page launches. Use `coexistence` for a number that
          # remains active in the WhatsApp Business app.
          signup_type: nil,
          request_options: {}
        )
        end

        # Retrieve a hosted signup and its onboarding URL.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse)
        end
        def retrieve(
          # Hosted signup ID returned when the hosted signup was created
          id,
          request_options: {}
        )
        end

        # List hosted signups created by the account, newest first. Expired hosted signups
        # are included.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Whatsapp::HostedSignupListResponse
            ]
          )
        end
        def list(page_number: nil, page_size: nil, request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
