# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # @see Telnyx::Resources::MessagingTollfree::Verification::Requests#retrieve
        class VerificationRequestStatus < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute additional_information
          #
          #   @return [String]
          required :additional_information, String, api_name: :additionalInformation

          # @!attribute business_addr1
          #
          #   @return [String]
          required :business_addr1, String, api_name: :businessAddr1

          # @!attribute business_city
          #
          #   @return [String]
          required :business_city, String, api_name: :businessCity

          # @!attribute business_contact_email
          #
          #   @return [String]
          required :business_contact_email, String, api_name: :businessContactEmail

          # @!attribute business_contact_first_name
          #
          #   @return [String]
          required :business_contact_first_name, String, api_name: :businessContactFirstName

          # @!attribute business_contact_last_name
          #
          #   @return [String]
          required :business_contact_last_name, String, api_name: :businessContactLastName

          # @!attribute business_contact_phone
          #
          #   @return [String]
          required :business_contact_phone, String, api_name: :businessContactPhone

          # @!attribute business_name
          #
          #   @return [String]
          required :business_name, String, api_name: :businessName

          # @!attribute business_state
          #
          #   @return [String]
          required :business_state, String, api_name: :businessState

          # @!attribute business_zip
          #
          #   @return [String]
          required :business_zip, String, api_name: :businessZip

          # @!attribute corporate_website
          #
          #   @return [String]
          required :corporate_website, String, api_name: :corporateWebsite

          # @!attribute isv_reseller
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
          #
          #   @return [String]
          required :opt_in_workflow, String, api_name: :optInWorkflow

          # @!attribute opt_in_workflow_image_urls
          #
          #   @return [Array<Telnyx::Models::MessagingTollfree::Verification::URL>]
          required :opt_in_workflow_image_urls,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::URL] },
                   api_name: :optInWorkflowImageURLs

          # @!attribute phone_numbers
          #
          #   @return [Array<Telnyx::Models::MessagingTollfree::Verification::TfPhoneNumber>]
          required :phone_numbers,
                   -> {
                     Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::TfPhoneNumber]
                   },
                   api_name: :phoneNumbers

          # @!attribute production_message_content
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
          #
          #   @return [String]
          required :use_case_summary, String, api_name: :useCaseSummary

          # @!attribute verification_status
          #   Tollfree verification status
          #
          #   @return [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationStatus]
          required :verification_status,
                   enum: -> { Telnyx::MessagingTollfree::Verification::TfVerificationStatus },
                   api_name: :verificationStatus

          # @!attribute age_gated_content
          #
          #   @return [Boolean, nil]
          optional :age_gated_content, Telnyx::Internal::Type::Boolean, api_name: :ageGatedContent

          # @!attribute business_addr2
          #
          #   @return [String, nil]
          optional :business_addr2, String, api_name: :businessAddr2

          # @!attribute business_registration_country
          #
          #   @return [String, nil]
          optional :business_registration_country, String, api_name: :businessRegistrationCountry

          # @!attribute business_registration_number
          #
          #   @return [String, nil]
          optional :business_registration_number, String, api_name: :businessRegistrationNumber

          # @!attribute business_registration_type
          #
          #   @return [String, nil]
          optional :business_registration_type, String, api_name: :businessRegistrationType

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute doing_business_as
          #
          #   @return [String, nil]
          optional :doing_business_as, String, api_name: :doingBusinessAs

          # @!attribute entity_type
          #   Business entity classification
          #
          #   @return [Symbol, Telnyx::Models::MessagingTollfree::Verification::VerificationRequestStatus::EntityType, nil]
          optional :entity_type,
                   enum: -> {
                     Telnyx::MessagingTollfree::Verification::VerificationRequestStatus::EntityType
                   },
                   api_name: :entityType

          # @!attribute help_message_response
          #
          #   @return [String, nil]
          optional :help_message_response, String, api_name: :helpMessageResponse

          # @!attribute opt_in_confirmation_response
          #
          #   @return [String, nil]
          optional :opt_in_confirmation_response, String, api_name: :optInConfirmationResponse

          # @!attribute opt_in_keywords
          #
          #   @return [String, nil]
          optional :opt_in_keywords, String, api_name: :optInKeywords

          # @!attribute privacy_policy_url
          #
          #   @return [String, nil]
          optional :privacy_policy_url, String, api_name: :privacyPolicyURL

          # @!attribute reason
          #
          #   @return [String, nil]
          optional :reason, String

          # @!attribute terms_and_condition_url
          #
          #   @return [String, nil]
          optional :terms_and_condition_url, String, api_name: :termsAndConditionURL

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time, api_name: :updatedAt

          # @!attribute webhook_url
          #
          #   @return [String, nil]
          optional :webhook_url, String, api_name: :webhookUrl

          # @!method initialize(id:, additional_information:, business_addr1:, business_city:, business_contact_email:, business_contact_first_name:, business_contact_last_name:, business_contact_phone:, business_name:, business_state:, business_zip:, corporate_website:, isv_reseller:, message_volume:, opt_in_workflow:, opt_in_workflow_image_urls:, phone_numbers:, production_message_content:, use_case:, use_case_summary:, verification_status:, age_gated_content: nil, business_addr2: nil, business_registration_country: nil, business_registration_number: nil, business_registration_type: nil, created_at: nil, doing_business_as: nil, entity_type: nil, help_message_response: nil, opt_in_confirmation_response: nil, opt_in_keywords: nil, privacy_policy_url: nil, reason: nil, terms_and_condition_url: nil, updated_at: nil, webhook_url: nil)
          #   A verification request and its status, suitable for returning to users
          #
          #   @param id [String]
          #
          #   @param additional_information [String]
          #
          #   @param business_addr1 [String]
          #
          #   @param business_city [String]
          #
          #   @param business_contact_email [String]
          #
          #   @param business_contact_first_name [String]
          #
          #   @param business_contact_last_name [String]
          #
          #   @param business_contact_phone [String]
          #
          #   @param business_name [String]
          #
          #   @param business_state [String]
          #
          #   @param business_zip [String]
          #
          #   @param corporate_website [String]
          #
          #   @param isv_reseller [String]
          #
          #   @param message_volume [Symbol, Telnyx::Models::MessagingTollfree::Verification::Volume] Message Volume Enums
          #
          #   @param opt_in_workflow [String]
          #
          #   @param opt_in_workflow_image_urls [Array<Telnyx::Models::MessagingTollfree::Verification::URL>]
          #
          #   @param phone_numbers [Array<Telnyx::Models::MessagingTollfree::Verification::TfPhoneNumber>]
          #
          #   @param production_message_content [String]
          #
          #   @param use_case [Symbol, Telnyx::Models::MessagingTollfree::Verification::UseCaseCategories] Tollfree usecase categories
          #
          #   @param use_case_summary [String]
          #
          #   @param verification_status [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationStatus] Tollfree verification status
          #
          #   @param age_gated_content [Boolean]
          #
          #   @param business_addr2 [String]
          #
          #   @param business_registration_country [String]
          #
          #   @param business_registration_number [String]
          #
          #   @param business_registration_type [String]
          #
          #   @param created_at [Time]
          #
          #   @param doing_business_as [String]
          #
          #   @param entity_type [Symbol, Telnyx::Models::MessagingTollfree::Verification::VerificationRequestStatus::EntityType] Business entity classification
          #
          #   @param help_message_response [String]
          #
          #   @param opt_in_confirmation_response [String]
          #
          #   @param opt_in_keywords [String]
          #
          #   @param privacy_policy_url [String]
          #
          #   @param reason [String]
          #
          #   @param terms_and_condition_url [String]
          #
          #   @param updated_at [Time]
          #
          #   @param webhook_url [String]

          # Business entity classification
          #
          # @see Telnyx::Models::MessagingTollfree::Verification::VerificationRequestStatus#entity_type
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

      VerificationRequestStatus = Verification::VerificationRequestStatus
    end
  end
end
