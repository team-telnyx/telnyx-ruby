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

          # Line 2 of the business address
          sig { returns(T.nilable(String)) }
          attr_reader :business_addr2

          sig { params(business_addr2: String).void }
          attr_writer :business_addr2

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
              business_addr2: String,
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
            # Line 2 of the business address
            business_addr2: nil,
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
                business_addr2: String,
                webhook_url: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
