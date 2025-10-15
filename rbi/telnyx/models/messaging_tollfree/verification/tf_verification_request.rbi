# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class TfVerificationRequest < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingTollfree::Verification::TfVerificationRequest,
                Telnyx::Internal::AnyHash
              )
            end

          # Any additional information
          sig { returns(String) }
          attr_accessor :additional_information

          # Line 1 of the business address
          sig { returns(String) }
          attr_accessor :business_addr1

          # The city of the business address; the first letter should be capitalized
          sig { returns(String) }
          attr_accessor :business_city

          # The email address of the business contact
          sig { returns(String) }
          attr_accessor :business_contact_email

          # First name of the business contact; there are no specific requirements on
          # formatting
          sig { returns(String) }
          attr_accessor :business_contact_first_name

          # Last name of the business contact; there are no specific requirements on
          # formatting
          sig { returns(String) }
          attr_accessor :business_contact_last_name

          # The phone number of the business contact in E.164 format
          sig { returns(String) }
          attr_accessor :business_contact_phone

          # Name of the business; there are no specific formatting requirements
          sig { returns(String) }
          attr_accessor :business_name

          # The full name of the state (not the 2 letter code) of the business address; the
          # first letter should be capitalized
          sig { returns(String) }
          attr_accessor :business_state

          # The ZIP code of the business address
          sig { returns(String) }
          attr_accessor :business_zip

          # A URL, including the scheme, pointing to the corporate website
          sig { returns(String) }
          attr_accessor :corporate_website

          # ISV name
          sig { returns(String) }
          attr_accessor :isv_reseller

          # Message Volume Enums
          sig do
            returns(Telnyx::MessagingTollfree::Verification::Volume::OrSymbol)
          end
          attr_accessor :message_volume

          # Human-readable description of how end users will opt into receiving messages
          # from the given phone numbers
          sig { returns(String) }
          attr_accessor :opt_in_workflow

          # Images showing the opt-in workflow
          sig do
            returns(T::Array[Telnyx::MessagingTollfree::Verification::URL])
          end
          attr_accessor :opt_in_workflow_image_urls

          # The phone numbers to request the verification of
          sig do
            returns(
              T::Array[Telnyx::MessagingTollfree::Verification::TfPhoneNumber]
            )
          end
          attr_accessor :phone_numbers

          # An example of a message that will be sent from the given phone numbers
          sig { returns(String) }
          attr_accessor :production_message_content

          # Tollfree usecase categories
          sig do
            returns(
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::OrSymbol
            )
          end
          attr_accessor :use_case

          # Human-readable summary of the desired use-case
          sig { returns(String) }
          attr_accessor :use_case_summary

          # Indicates if messaging content requires age gating (e.g., 18+). Defaults to
          # false if not provided.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :age_gated_content

          sig { params(age_gated_content: T::Boolean).void }
          attr_writer :age_gated_content

          # Line 2 of the business address
          sig { returns(T.nilable(String)) }
          attr_reader :business_addr2

          sig { params(business_addr2: String).void }
          attr_writer :business_addr2

          # ISO 3166-1 alpha-2 country code of the issuing business authority. Must be
          # exactly 2 letters. Automatically converted to uppercase. Required from
          # January 2026.
          sig { returns(T.nilable(String)) }
          attr_accessor :business_registration_country

          # Official business registration number (e.g., Employer Identification Number
          # (EIN) in the U.S.). Required from January 2026.
          sig { returns(T.nilable(String)) }
          attr_accessor :business_registration_number

          # Type of business registration being provided. Required from January 2026.
          sig { returns(T.nilable(String)) }
          attr_accessor :business_registration_type

          # Doing Business As (DBA) name if different from legal name
          sig { returns(T.nilable(String)) }
          attr_accessor :doing_business_as

          # Business entity classification
          sig do
            returns(
              T.nilable(
                Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType::OrSymbol
              )
            )
          end
          attr_accessor :entity_type

          # The message returned when users text 'HELP'
          sig { returns(T.nilable(String)) }
          attr_accessor :help_message_response

          # Message sent to users confirming their opt-in to receive messages
          sig { returns(T.nilable(String)) }
          attr_accessor :opt_in_confirmation_response

          # Keywords used to collect and process consumer opt-ins
          sig { returns(T.nilable(String)) }
          attr_accessor :opt_in_keywords

          # URL pointing to the business's privacy policy. Plain string, no URL format
          # validation.
          sig { returns(T.nilable(String)) }
          attr_accessor :privacy_policy_url

          # URL pointing to the business's terms and conditions. Plain string, no URL format
          # validation.
          sig { returns(T.nilable(String)) }
          attr_accessor :terms_and_condition_url

          # URL that should receive webhooks relating to this verification request
          sig { returns(T.nilable(String)) }
          attr_reader :webhook_url

          sig { params(webhook_url: String).void }
          attr_writer :webhook_url

          # The body of a tollfree verification request
          sig do
            params(
              additional_information: String,
              business_addr1: String,
              business_city: String,
              business_contact_email: String,
              business_contact_first_name: String,
              business_contact_last_name: String,
              business_contact_phone: String,
              business_name: String,
              business_state: String,
              business_zip: String,
              corporate_website: String,
              isv_reseller: String,
              message_volume:
                Telnyx::MessagingTollfree::Verification::Volume::OrSymbol,
              opt_in_workflow: String,
              opt_in_workflow_image_urls:
                T::Array[Telnyx::MessagingTollfree::Verification::URL::OrHash],
              phone_numbers:
                T::Array[
                  Telnyx::MessagingTollfree::Verification::TfPhoneNumber::OrHash
                ],
              production_message_content: String,
              use_case:
                Telnyx::MessagingTollfree::Verification::UseCaseCategories::OrSymbol,
              use_case_summary: String,
              age_gated_content: T::Boolean,
              business_addr2: String,
              business_registration_country: T.nilable(String),
              business_registration_number: T.nilable(String),
              business_registration_type: T.nilable(String),
              doing_business_as: T.nilable(String),
              entity_type:
                T.nilable(
                  Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType::OrSymbol
                ),
              help_message_response: T.nilable(String),
              opt_in_confirmation_response: T.nilable(String),
              opt_in_keywords: T.nilable(String),
              privacy_policy_url: T.nilable(String),
              terms_and_condition_url: T.nilable(String),
              webhook_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Any additional information
            additional_information:,
            # Line 1 of the business address
            business_addr1:,
            # The city of the business address; the first letter should be capitalized
            business_city:,
            # The email address of the business contact
            business_contact_email:,
            # First name of the business contact; there are no specific requirements on
            # formatting
            business_contact_first_name:,
            # Last name of the business contact; there are no specific requirements on
            # formatting
            business_contact_last_name:,
            # The phone number of the business contact in E.164 format
            business_contact_phone:,
            # Name of the business; there are no specific formatting requirements
            business_name:,
            # The full name of the state (not the 2 letter code) of the business address; the
            # first letter should be capitalized
            business_state:,
            # The ZIP code of the business address
            business_zip:,
            # A URL, including the scheme, pointing to the corporate website
            corporate_website:,
            # ISV name
            isv_reseller:,
            # Message Volume Enums
            message_volume:,
            # Human-readable description of how end users will opt into receiving messages
            # from the given phone numbers
            opt_in_workflow:,
            # Images showing the opt-in workflow
            opt_in_workflow_image_urls:,
            # The phone numbers to request the verification of
            phone_numbers:,
            # An example of a message that will be sent from the given phone numbers
            production_message_content:,
            # Tollfree usecase categories
            use_case:,
            # Human-readable summary of the desired use-case
            use_case_summary:,
            # Indicates if messaging content requires age gating (e.g., 18+). Defaults to
            # false if not provided.
            age_gated_content: nil,
            # Line 2 of the business address
            business_addr2: nil,
            # ISO 3166-1 alpha-2 country code of the issuing business authority. Must be
            # exactly 2 letters. Automatically converted to uppercase. Required from
            # January 2026.
            business_registration_country: nil,
            # Official business registration number (e.g., Employer Identification Number
            # (EIN) in the U.S.). Required from January 2026.
            business_registration_number: nil,
            # Type of business registration being provided. Required from January 2026.
            business_registration_type: nil,
            # Doing Business As (DBA) name if different from legal name
            doing_business_as: nil,
            # Business entity classification
            entity_type: nil,
            # The message returned when users text 'HELP'
            help_message_response: nil,
            # Message sent to users confirming their opt-in to receive messages
            opt_in_confirmation_response: nil,
            # Keywords used to collect and process consumer opt-ins
            opt_in_keywords: nil,
            # URL pointing to the business's privacy policy. Plain string, no URL format
            # validation.
            privacy_policy_url: nil,
            # URL pointing to the business's terms and conditions. Plain string, no URL format
            # validation.
            terms_and_condition_url: nil,
            # URL that should receive webhooks relating to this verification request
            webhook_url: nil
          )
          end

          sig do
            override.returns(
              {
                additional_information: String,
                business_addr1: String,
                business_city: String,
                business_contact_email: String,
                business_contact_first_name: String,
                business_contact_last_name: String,
                business_contact_phone: String,
                business_name: String,
                business_state: String,
                business_zip: String,
                corporate_website: String,
                isv_reseller: String,
                message_volume:
                  Telnyx::MessagingTollfree::Verification::Volume::OrSymbol,
                opt_in_workflow: String,
                opt_in_workflow_image_urls:
                  T::Array[Telnyx::MessagingTollfree::Verification::URL],
                phone_numbers:
                  T::Array[
                    Telnyx::MessagingTollfree::Verification::TfPhoneNumber
                  ],
                production_message_content: String,
                use_case:
                  Telnyx::MessagingTollfree::Verification::UseCaseCategories::OrSymbol,
                use_case_summary: String,
                age_gated_content: T::Boolean,
                business_addr2: String,
                business_registration_country: T.nilable(String),
                business_registration_number: T.nilable(String),
                business_registration_type: T.nilable(String),
                doing_business_as: T.nilable(String),
                entity_type:
                  T.nilable(
                    Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType::OrSymbol
                  ),
                help_message_response: T.nilable(String),
                opt_in_confirmation_response: T.nilable(String),
                opt_in_keywords: T.nilable(String),
                privacy_policy_url: T.nilable(String),
                terms_and_condition_url: T.nilable(String),
                webhook_url: String
              }
            )
          end
          def to_hash
          end

          # Business entity classification
          module EntityType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SOLE_PROPRIETOR =
              T.let(
                :SOLE_PROPRIETOR,
                Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType::TaggedSymbol
              )
            PRIVATE_PROFIT =
              T.let(
                :PRIVATE_PROFIT,
                Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType::TaggedSymbol
              )
            PUBLIC_PROFIT =
              T.let(
                :PUBLIC_PROFIT,
                Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType::TaggedSymbol
              )
            NON_PROFIT =
              T.let(
                :NON_PROFIT,
                Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType::TaggedSymbol
              )
            GOVERNMENT =
              T.let(
                :GOVERNMENT,
                Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::MessagingTollfree::Verification::TfVerificationRequest::EntityType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
