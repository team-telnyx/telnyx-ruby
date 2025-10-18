# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingTollfree
      class Verification
        class Requests
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::MessagingTollfree::Verification::RequestCreateParams} for more
          # details.
          #
          # Submit a new tollfree verification request
          #
          # @overload create(additional_information:, business_addr1:, business_city:, business_contact_email:, business_contact_first_name:, business_contact_last_name:, business_contact_phone:, business_name:, business_state:, business_zip:, corporate_website:, isv_reseller:, message_volume:, opt_in_workflow:, opt_in_workflow_image_urls:, phone_numbers:, production_message_content:, use_case:, use_case_summary:, age_gated_content: nil, business_addr2: nil, business_registration_country: nil, business_registration_number: nil, business_registration_type: nil, doing_business_as: nil, entity_type: nil, help_message_response: nil, opt_in_confirmation_response: nil, opt_in_keywords: nil, privacy_policy_url: nil, terms_and_condition_url: nil, webhook_url: nil, request_options: {})
          #
          # @param additional_information [String] Any additional information
          #
          # @param business_addr1 [String] Line 1 of the business address
          #
          # @param business_city [String] The city of the business address; the first letter should be capitalized
          #
          # @param business_contact_email [String] The email address of the business contact
          #
          # @param business_contact_first_name [String] First name of the business contact; there are no specific requirements on format
          #
          # @param business_contact_last_name [String] Last name of the business contact; there are no specific requirements on formatt
          #
          # @param business_contact_phone [String] The phone number of the business contact in E.164 format
          #
          # @param business_name [String] Name of the business; there are no specific formatting requirements
          #
          # @param business_state [String] The full name of the state (not the 2 letter code) of the business address; the
          #
          # @param business_zip [String] The ZIP code of the business address
          #
          # @param corporate_website [String] A URL, including the scheme, pointing to the corporate website
          #
          # @param isv_reseller [String] ISV name
          #
          # @param message_volume [Symbol, Telnyx::Models::MessagingTollfree::Verification::Volume] Message Volume Enums
          #
          # @param opt_in_workflow [String] Human-readable description of how end users will opt into receiving messages fro
          #
          # @param opt_in_workflow_image_urls [Array<Telnyx::Models::MessagingTollfree::Verification::URL>] Images showing the opt-in workflow
          #
          # @param phone_numbers [Array<Telnyx::Models::MessagingTollfree::Verification::TfPhoneNumber>] The phone numbers to request the verification of
          #
          # @param production_message_content [String] An example of a message that will be sent from the given phone numbers
          #
          # @param use_case [Symbol, Telnyx::Models::MessagingTollfree::Verification::UseCaseCategories] Tollfree usecase categories
          #
          # @param use_case_summary [String] Human-readable summary of the desired use-case
          #
          # @param age_gated_content [Boolean] Indicates if messaging content requires age gating (e.g., 18+). Defaults to fals
          #
          # @param business_addr2 [String] Line 2 of the business address
          #
          # @param business_registration_country [String, nil] ISO 3166-1 alpha-2 country code of the issuing business authority. Must be exact
          #
          # @param business_registration_number [String, nil] Official business registration number (e.g., Employer Identification Number (EIN
          #
          # @param business_registration_type [String, nil] Type of business registration being provided. Required from January 2026.
          #
          # @param doing_business_as [String, nil] Doing Business As (DBA) name if different from legal name
          #
          # @param entity_type [Symbol, Telnyx::Models::MessagingTollfree::Verification::TollFreeVerificationEntityType, nil] Business entity classification
          #
          # @param help_message_response [String, nil] The message returned when users text 'HELP'
          #
          # @param opt_in_confirmation_response [String, nil] Message sent to users confirming their opt-in to receive messages
          #
          # @param opt_in_keywords [String, nil] Keywords used to collect and process consumer opt-ins
          #
          # @param privacy_policy_url [String, nil] URL pointing to the business's privacy policy. Plain string, no URL format valid
          #
          # @param terms_and_condition_url [String, nil] URL pointing to the business's terms and conditions. Plain string, no URL format
          #
          # @param webhook_url [String] URL that should receive webhooks relating to this verification request
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::MessagingTollfree::Verification::VerificationRequestEgress]
          #
          # @see Telnyx::Models::MessagingTollfree::Verification::RequestCreateParams
          def create(params)
            parsed, options = Telnyx::MessagingTollfree::Verification::RequestCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "messaging_tollfree/verification/requests",
              body: parsed,
              model: Telnyx::MessagingTollfree::Verification::VerificationRequestEgress,
              options: options
            )
          end

          # Get a single verification request by its ID.
          #
          # @overload retrieve(id, request_options: {})
          #
          # @param id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::MessagingTollfree::Verification::VerificationRequestStatus]
          #
          # @see Telnyx::Models::MessagingTollfree::Verification::RequestRetrieveParams
          def retrieve(id, params = {})
            @client.request(
              method: :get,
              path: ["messaging_tollfree/verification/requests/%1$s", id],
              model: Telnyx::MessagingTollfree::Verification::VerificationRequestStatus,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::MessagingTollfree::Verification::RequestUpdateParams} for more
          # details.
          #
          # Update an existing tollfree verification request. This is particularly useful
          # when there are pending customer actions to be taken.
          #
          # @overload update(id, additional_information:, business_addr1:, business_city:, business_contact_email:, business_contact_first_name:, business_contact_last_name:, business_contact_phone:, business_name:, business_state:, business_zip:, corporate_website:, isv_reseller:, message_volume:, opt_in_workflow:, opt_in_workflow_image_urls:, phone_numbers:, production_message_content:, use_case:, use_case_summary:, age_gated_content: nil, business_addr2: nil, business_registration_country: nil, business_registration_number: nil, business_registration_type: nil, doing_business_as: nil, entity_type: nil, help_message_response: nil, opt_in_confirmation_response: nil, opt_in_keywords: nil, privacy_policy_url: nil, terms_and_condition_url: nil, webhook_url: nil, request_options: {})
          #
          # @param id [String]
          #
          # @param additional_information [String] Any additional information
          #
          # @param business_addr1 [String] Line 1 of the business address
          #
          # @param business_city [String] The city of the business address; the first letter should be capitalized
          #
          # @param business_contact_email [String] The email address of the business contact
          #
          # @param business_contact_first_name [String] First name of the business contact; there are no specific requirements on format
          #
          # @param business_contact_last_name [String] Last name of the business contact; there are no specific requirements on formatt
          #
          # @param business_contact_phone [String] The phone number of the business contact in E.164 format
          #
          # @param business_name [String] Name of the business; there are no specific formatting requirements
          #
          # @param business_state [String] The full name of the state (not the 2 letter code) of the business address; the
          #
          # @param business_zip [String] The ZIP code of the business address
          #
          # @param corporate_website [String] A URL, including the scheme, pointing to the corporate website
          #
          # @param isv_reseller [String] ISV name
          #
          # @param message_volume [Symbol, Telnyx::Models::MessagingTollfree::Verification::Volume] Message Volume Enums
          #
          # @param opt_in_workflow [String] Human-readable description of how end users will opt into receiving messages fro
          #
          # @param opt_in_workflow_image_urls [Array<Telnyx::Models::MessagingTollfree::Verification::URL>] Images showing the opt-in workflow
          #
          # @param phone_numbers [Array<Telnyx::Models::MessagingTollfree::Verification::TfPhoneNumber>] The phone numbers to request the verification of
          #
          # @param production_message_content [String] An example of a message that will be sent from the given phone numbers
          #
          # @param use_case [Symbol, Telnyx::Models::MessagingTollfree::Verification::UseCaseCategories] Tollfree usecase categories
          #
          # @param use_case_summary [String] Human-readable summary of the desired use-case
          #
          # @param age_gated_content [Boolean] Indicates if messaging content requires age gating (e.g., 18+). Defaults to fals
          #
          # @param business_addr2 [String] Line 2 of the business address
          #
          # @param business_registration_country [String, nil] ISO 3166-1 alpha-2 country code of the issuing business authority. Must be exact
          #
          # @param business_registration_number [String, nil] Official business registration number (e.g., Employer Identification Number (EIN
          #
          # @param business_registration_type [String, nil] Type of business registration being provided. Required from January 2026.
          #
          # @param doing_business_as [String, nil] Doing Business As (DBA) name if different from legal name
          #
          # @param entity_type [Symbol, Telnyx::Models::MessagingTollfree::Verification::TollFreeVerificationEntityType, nil] Business entity classification
          #
          # @param help_message_response [String, nil] The message returned when users text 'HELP'
          #
          # @param opt_in_confirmation_response [String, nil] Message sent to users confirming their opt-in to receive messages
          #
          # @param opt_in_keywords [String, nil] Keywords used to collect and process consumer opt-ins
          #
          # @param privacy_policy_url [String, nil] URL pointing to the business's privacy policy. Plain string, no URL format valid
          #
          # @param terms_and_condition_url [String, nil] URL pointing to the business's terms and conditions. Plain string, no URL format
          #
          # @param webhook_url [String] URL that should receive webhooks relating to this verification request
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::MessagingTollfree::Verification::VerificationRequestEgress]
          #
          # @see Telnyx::Models::MessagingTollfree::Verification::RequestUpdateParams
          def update(id, params)
            parsed, options = Telnyx::MessagingTollfree::Verification::RequestUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["messaging_tollfree/verification/requests/%1$s", id],
              body: parsed,
              model: Telnyx::MessagingTollfree::Verification::VerificationRequestEgress,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::MessagingTollfree::Verification::RequestListParams} for more
          # details.
          #
          # Get a list of previously-submitted tollfree verification requests
          #
          # @overload list(page:, page_size:, date_end: nil, date_start: nil, phone_number: nil, status: nil, request_options: {})
          #
          # @param page [Integer]
          #
          # @param page_size [Integer]
          #
          # @param date_end [Time]
          #
          # @param date_start [Time]
          #
          # @param phone_number [String]
          #
          # @param status [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationStatus] Tollfree verification status
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::MessagingTollfree::Verification::RequestListResponse]
          #
          # @see Telnyx::Models::MessagingTollfree::Verification::RequestListParams
          def list(params)
            parsed, options = Telnyx::MessagingTollfree::Verification::RequestListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "messaging_tollfree/verification/requests",
              query: parsed,
              model: Telnyx::Models::MessagingTollfree::Verification::RequestListResponse,
              options: options
            )
          end

          # Delete a verification request
          #
          # A request may only be deleted when when the request is in the "rejected" state.
          #
          # - `HTTP 200`: request successfully deleted
          # - `HTTP 400`: request exists but can't be deleted (i.e. not rejected)
          # - `HTTP 404`: request unknown or already deleted
          #
          # @overload delete(id, request_options: {})
          #
          # @param id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::MessagingTollfree::Verification::RequestDeleteParams
          def delete(id, params = {})
            @client.request(
              method: :delete,
              path: ["messaging_tollfree/verification/requests/%1$s", id],
              model: Telnyx::Internal::Type::Unknown,
              options: params[:request_options]
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
