# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      VerificationRequestStatus = Verification::VerificationRequestStatus

      module Verification
        class VerificationRequestStatus < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingTollfree::Verification::VerificationRequestStatus,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :additional_information

          sig { returns(String) }
          attr_accessor :business_addr1

          sig { returns(String) }
          attr_accessor :business_city

          sig { returns(String) }
          attr_accessor :business_contact_email

          sig { returns(String) }
          attr_accessor :business_contact_first_name

          sig { returns(String) }
          attr_accessor :business_contact_last_name

          sig { returns(String) }
          attr_accessor :business_contact_phone

          sig { returns(String) }
          attr_accessor :business_name

          sig { returns(String) }
          attr_accessor :business_state

          sig { returns(String) }
          attr_accessor :business_zip

          sig { returns(String) }
          attr_accessor :corporate_website

          sig { returns(String) }
          attr_accessor :isv_reseller

          # Message Volume Enums
          sig do
            returns(
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          end
          attr_accessor :message_volume

          sig { returns(String) }
          attr_accessor :opt_in_workflow

          sig do
            returns(T::Array[Telnyx::MessagingTollfree::Verification::URL])
          end
          attr_accessor :opt_in_workflow_image_urls

          sig do
            returns(
              T::Array[Telnyx::MessagingTollfree::Verification::TfPhoneNumber]
            )
          end
          attr_accessor :phone_numbers

          sig { returns(String) }
          attr_accessor :production_message_content

          # Tollfree usecase categories
          sig do
            returns(
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          end
          attr_accessor :use_case

          sig { returns(String) }
          attr_accessor :use_case_summary

          # Tollfree verification status
          sig do
            returns(
              Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol
            )
          end
          attr_accessor :verification_status

          sig { returns(T.nilable(String)) }
          attr_reader :business_addr2

          sig { params(business_addr2: String).void }
          attr_writer :business_addr2

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_reader :reason

          sig { params(reason: String).void }
          attr_writer :reason

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig { returns(T.nilable(String)) }
          attr_reader :webhook_url

          sig { params(webhook_url: String).void }
          attr_writer :webhook_url

          # A verification request and its status, suitable for returning to users
          sig do
            params(
              id: String,
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
              verification_status:
                Telnyx::MessagingTollfree::Verification::TfVerificationStatus::OrSymbol,
              business_addr2: String,
              created_at: Time,
              reason: String,
              updated_at: Time,
              webhook_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            additional_information:,
            business_addr1:,
            business_city:,
            business_contact_email:,
            business_contact_first_name:,
            business_contact_last_name:,
            business_contact_phone:,
            business_name:,
            business_state:,
            business_zip:,
            corporate_website:,
            isv_reseller:,
            # Message Volume Enums
            message_volume:,
            opt_in_workflow:,
            opt_in_workflow_image_urls:,
            phone_numbers:,
            production_message_content:,
            # Tollfree usecase categories
            use_case:,
            use_case_summary:,
            # Tollfree verification status
            verification_status:,
            business_addr2: nil,
            created_at: nil,
            reason: nil,
            updated_at: nil,
            webhook_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
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
                  Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol,
                opt_in_workflow: String,
                opt_in_workflow_image_urls:
                  T::Array[Telnyx::MessagingTollfree::Verification::URL],
                phone_numbers:
                  T::Array[
                    Telnyx::MessagingTollfree::Verification::TfPhoneNumber
                  ],
                production_message_content: String,
                use_case:
                  Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol,
                use_case_summary: String,
                verification_status:
                  Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol,
                business_addr2: String,
                created_at: Time,
                reason: String,
                updated_at: Time,
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
