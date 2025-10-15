# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class TfVerificationRequest < Telnyx::Internal::Type::BaseModel
          # @!attribute additional_information
          #   Any additional information
          #
          #   @return [String]
          required :additional_information, String, api_name: :additionalInformation

          # @!attribute business_addr1
          #   Line 1 of the business address
          #
          #   @return [String]
          required :business_addr1, String, api_name: :businessAddr1

          # @!attribute business_city
          #   The city of the business address; the first letter should be capitalized
          #
          #   @return [String]
          required :business_city, String, api_name: :businessCity

          # @!attribute business_contact_email
          #   The email address of the business contact
          #
          #   @return [String]
          required :business_contact_email, String, api_name: :businessContactEmail

          # @!attribute business_contact_first_name
          #   First name of the business contact; there are no specific requirements on
          #   formatting
          #
          #   @return [String]
          required :business_contact_first_name, String, api_name: :businessContactFirstName

          # @!attribute business_contact_last_name
          #   Last name of the business contact; there are no specific requirements on
          #   formatting
          #
          #   @return [String]
          required :business_contact_last_name, String, api_name: :businessContactLastName

          # @!attribute business_contact_phone
          #   The phone number of the business contact in E.164 format
          #
          #   @return [String]
          required :business_contact_phone, String, api_name: :businessContactPhone

          # @!attribute business_name
          #   Name of the business; there are no specific formatting requirements
          #
          #   @return [String]
          required :business_name, String, api_name: :businessName

          # @!attribute business_state
          #   The full name of the state (not the 2 letter code) of the business address; the
          #   first letter should be capitalized
          #
          #   @return [String]
          required :business_state, String, api_name: :businessState

          # @!attribute business_zip
          #   The ZIP code of the business address
          #
          #   @return [String]
          required :business_zip, String, api_name: :businessZip

          # @!attribute corporate_website
          #   A URL, including the scheme, pointing to the corporate website
          #
          #   @return [String]
          required :corporate_website, String, api_name: :corporateWebsite

          # @!attribute isv_reseller
          #   ISV name
          #
          #   @return [String]
          required :isv_reseller, String, api_name: :isvReseller

          # @!attribute message_volume
          #   Message Volume Enums
          #
          #   @return [Symbol, Telnyx::Models::MessagingTollfree::Verification::Volume]
          required :message_volume,
                   enum: -> { Telnyx::MessagingTollfree::Verification::Volume },
                   api_name: :messageVolume

          # @!attribute opt_in_workflow
          #   Human-readable description of how end users will opt into receiving messages
          #   from the given phone numbers
          #
          #   @return [String]
          required :opt_in_workflow, String, api_name: :optInWorkflow

          # @!attribute opt_in_workflow_image_urls
          #   Images showing the opt-in workflow
          #
          #   @return [Array<Telnyx::Models::MessagingTollfree::Verification::URL>]
          required :opt_in_workflow_image_urls,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::URL] },
                   api_name: :optInWorkflowImageURLs

          # @!attribute phone_numbers
          #   The phone numbers to request the verification of
          #
          #   @return [Array<Telnyx::Models::MessagingTollfree::Verification::TfPhoneNumber>]
          required :phone_numbers,
                   -> {
                     Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::TfPhoneNumber]
                   },
                   api_name: :phoneNumbers

          # @!attribute production_message_content
          #   An example of a message that will be sent from the given phone numbers
          #
          #   @return [String]
          required :production_message_content, String, api_name: :productionMessageContent

          # @!attribute use_case
          #   Tollfree usecase categories
          #
          #   @return [Symbol, Telnyx::Models::MessagingTollfree::Verification::UseCaseCategories]
          required :use_case,
                   enum: -> { Telnyx::MessagingTollfree::Verification::UseCaseCategories },
                   api_name: :useCase

          # @!attribute use_case_summary
          #   Human-readable summary of the desired use-case
          #
          #   @return [String]
          required :use_case_summary, String, api_name: :useCaseSummary

          # @!attribute age_gated_content
          #   Indicates if messaging content requires age gating (e.g., 18+). Defaults to
          #   false if not provided.
          #
          #   @return [Boolean, nil]
          optional :age_gated_content, Telnyx::Internal::Type::Boolean, api_name: :ageGatedContent

          # @!attribute business_addr2
          #   Line 2 of the business address
          #
          #   @return [String, nil]
          optional :business_addr2, String, api_name: :businessAddr2

          # @!attribute business_registration_country
          #   ISO 3166-1 alpha-2 country code of the issuing business authority. Must be
          #   exactly 2 letters. Automatically converted to uppercase. Required from
          #   January 2026.
          #
          #   @return [String, nil]
          optional :business_registration_country, String, api_name: :businessRegistrationCountry, nil?: true

          # @!attribute business_registration_number
          #   Official business registration number (e.g., Employer Identification Number
          #   (EIN) in the U.S.). Required from January 2026.
          #
          #   @return [String, nil]
          optional :business_registration_number, String, api_name: :businessRegistrationNumber, nil?: true

          # @!attribute business_registration_type
          #   Type of business registration being provided. Required from January 2026.
          #
          #   @return [String, nil]
          optional :business_registration_type, String, api_name: :businessRegistrationType, nil?: true

          # @!attribute doing_business_as
          #   Doing Business As (DBA) name if different from legal name
          #
          #   @return [String, nil]
          optional :doing_business_as, String, api_name: :doingBusinessAs, nil?: true

          # @!attribute entity_type
          #   Business entity classification
          #
          #   @return [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationRequest::EntityType, nil]
          optional :entity_type,
                   enum: -> { Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType },
                   api_name: :entityType,
                   nil?: true

          # @!attribute help_message_response
          #   The message returned when users text 'HELP'
          #
          #   @return [String, nil]
          optional :help_message_response, String, api_name: :helpMessageResponse, nil?: true

          # @!attribute opt_in_confirmation_response
          #   Message sent to users confirming their opt-in to receive messages
          #
          #   @return [String, nil]
          optional :opt_in_confirmation_response, String, api_name: :optInConfirmationResponse, nil?: true

          # @!attribute opt_in_keywords
          #   Keywords used to collect and process consumer opt-ins
          #
          #   @return [String, nil]
          optional :opt_in_keywords, String, api_name: :optInKeywords, nil?: true

          # @!attribute privacy_policy_url
          #   URL pointing to the business's privacy policy. Plain string, no URL format
          #   validation.
          #
          #   @return [String, nil]
          optional :privacy_policy_url, String, api_name: :privacyPolicyURL, nil?: true

          # @!attribute terms_and_condition_url
          #   URL pointing to the business's terms and conditions. Plain string, no URL format
          #   validation.
          #
          #   @return [String, nil]
          optional :terms_and_condition_url, String, api_name: :termsAndConditionURL, nil?: true

          # @!attribute webhook_url
          #   URL that should receive webhooks relating to this verification request
          #
          #   @return [String, nil]
          optional :webhook_url, String, api_name: :webhookUrl

          # @!method initialize(additional_information:, business_addr1:, business_city:, business_contact_email:, business_contact_first_name:, business_contact_last_name:, business_contact_phone:, business_name:, business_state:, business_zip:, corporate_website:, isv_reseller:, message_volume:, opt_in_workflow:, opt_in_workflow_image_urls:, phone_numbers:, production_message_content:, use_case:, use_case_summary:, age_gated_content: nil, business_addr2: nil, business_registration_country: nil, business_registration_number: nil, business_registration_type: nil, doing_business_as: nil, entity_type: nil, help_message_response: nil, opt_in_confirmation_response: nil, opt_in_keywords: nil, privacy_policy_url: nil, terms_and_condition_url: nil, webhook_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MessagingTollfree::Verification::TfVerificationRequest} for
          #   more details.
          #
          #   The body of a tollfree verification request
          #
          #   @param additional_information [String] Any additional information
          #
          #   @param business_addr1 [String] Line 1 of the business address
          #
          #   @param business_city [String] The city of the business address; the first letter should be capitalized
          #
          #   @param business_contact_email [String] The email address of the business contact
          #
          #   @param business_contact_first_name [String] First name of the business contact; there are no specific requirements on format
          #
          #   @param business_contact_last_name [String] Last name of the business contact; there are no specific requirements on formatt
          #
          #   @param business_contact_phone [String] The phone number of the business contact in E.164 format
          #
          #   @param business_name [String] Name of the business; there are no specific formatting requirements
          #
          #   @param business_state [String] The full name of the state (not the 2 letter code) of the business address; the
          #
          #   @param business_zip [String] The ZIP code of the business address
          #
          #   @param corporate_website [String] A URL, including the scheme, pointing to the corporate website
          #
          #   @param isv_reseller [String] ISV name
          #
          #   @param message_volume [Symbol, Telnyx::Models::MessagingTollfree::Verification::Volume] Message Volume Enums
          #
          #   @param opt_in_workflow [String] Human-readable description of how end users will opt into receiving messages fro
          #
          #   @param opt_in_workflow_image_urls [Array<Telnyx::Models::MessagingTollfree::Verification::URL>] Images showing the opt-in workflow
          #
          #   @param phone_numbers [Array<Telnyx::Models::MessagingTollfree::Verification::TfPhoneNumber>] The phone numbers to request the verification of
          #
          #   @param production_message_content [String] An example of a message that will be sent from the given phone numbers
          #
          #   @param use_case [Symbol, Telnyx::Models::MessagingTollfree::Verification::UseCaseCategories] Tollfree usecase categories
          #
          #   @param use_case_summary [String] Human-readable summary of the desired use-case
          #
          #   @param age_gated_content [Boolean] Indicates if messaging content requires age gating (e.g., 18+). Defaults to fals
          #
          #   @param business_addr2 [String] Line 2 of the business address
          #
          #   @param business_registration_country [String, nil] ISO 3166-1 alpha-2 country code of the issuing business authority. Must be exact
          #
          #   @param business_registration_number [String, nil] Official business registration number (e.g., Employer Identification Number (EIN
          #
          #   @param business_registration_type [String, nil] Type of business registration being provided. Required from January 2026.
          #
          #   @param doing_business_as [String, nil] Doing Business As (DBA) name if different from legal name
          #
          #   @param entity_type [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationRequest::EntityType, nil] Business entity classification
          #
          #   @param help_message_response [String, nil] The message returned when users text 'HELP'
          #
          #   @param opt_in_confirmation_response [String, nil] Message sent to users confirming their opt-in to receive messages
          #
          #   @param opt_in_keywords [String, nil] Keywords used to collect and process consumer opt-ins
          #
          #   @param privacy_policy_url [String, nil] URL pointing to the business's privacy policy. Plain string, no URL format valid
          #
          #   @param terms_and_condition_url [String, nil] URL pointing to the business's terms and conditions. Plain string, no URL format
          #
          #   @param webhook_url [String] URL that should receive webhooks relating to this verification request

          # Business entity classification
          #
          # @see Telnyx::Models::MessagingTollfree::Verification::TfVerificationRequest#entity_type
          module EntityType
            extend Telnyx::Internal::Type::Enum

            SOLE_PROPRIETOR = :SOLE_PROPRIETOR
            PRIVATE_PROFIT = :PRIVATE_PROFIT
            PUBLIC_PROFIT = :PUBLIC_PROFIT
            NON_PROFIT = :NON_PROFIT
            GOVERNMENT = :GOVERNMENT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
