# typed: strong

module Telnyx
  module Resources
    class MessagingTollfree
      class Verification
        class Requests
          # Submit a new tollfree verification request
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
              webhook_url: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::MessagingTollfree::Verification::VerificationRequestEgress
            )
          end
          def create(
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
            webhook_url: nil,
            request_options: {}
          )
          end

          # Get a single verification request by its ID.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::MessagingTollfree::Verification::VerificationRequestStatus
            )
          end
          def retrieve(id, request_options: {})
          end

          # Update an existing tollfree verification request. This is particularly useful
          # when there are pending customer actions to be taken.
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
              business_addr2: String,
              webhook_url: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::MessagingTollfree::Verification::VerificationRequestEgress
            )
          end
          def update(
            id,
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
            webhook_url: nil,
            request_options: {}
          )
          end

          # Get a list of previously-submitted tollfree verification requests
          sig do
            params(
              page: Integer,
              page_size: Integer,
              date_end: Time,
              date_start: Time,
              phone_number: String,
              status:
                Telnyx::MessagingTollfree::Verification::TfVerificationStatus::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::MessagingTollfree::Verification::RequestListResponse
            )
          end
          def list(
            page:,
            # Request this many records per page
            #
            #         This value is automatically clamped if the provided value is too large.
            page_size:,
            date_end: nil,
            date_start: nil,
            phone_number: nil,
            # Tollfree verification status
            status: nil,
            request_options: {}
          )
          end

          # Delete a verification request
          #
          # A request may only be deleted when when the request is in the "rejected" state.
          #
          # - `HTTP 200`: request successfully deleted
          # - `HTTP 400`: request exists but can't be deleted (i.e. not rejected)
          # - `HTTP 404`: request unknown or already deleted
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def delete(id, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
