# typed: strong

module Telnyx
  module Resources
    class PhoneNumbers
      class Jobs
        # Retrieve a phone numbers job
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::JobRetrieveResponse)
        end
        def retrieve(
          # Identifies the Phone Numbers Job.
          id,
          request_options: {}
        )
        end

        # Lists the phone numbers jobs
        sig do
          params(
            filter: Telnyx::PhoneNumbers::JobListParams::Filter::OrHash,
            page: Telnyx::PhoneNumbers::JobListParams::Page::OrHash,
            sort: Telnyx::PhoneNumbers::JobListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultPagination[
              Telnyx::PhoneNumbers::PhoneNumbersJob
            ]
          )
        end
        def list(
          # Consolidated filter parameter (deepObject style). Originally: filter[type]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          sort: nil,
          request_options: {}
        )
        end

        # Creates a new background job to delete a batch of numbers. At most one thousand
        # numbers can be updated per API call.
        sig do
          params(
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::JobDeleteBatchResponse)
        end
        def delete_batch(phone_numbers:, request_options: {})
        end

        # Creates a new background job to update a batch of numbers. At most one thousand
        # numbers can be updated per API call. At least one of the updateable fields must
        # be submitted. IMPORTANT: You must either specify filters (using the filter
        # parameters) or specific phone numbers (using the phone_numbers parameter in the
        # request body). If you specify filters, ALL phone numbers that match the given
        # filters (up to 1000 at a time) will be updated. If you want to update only
        # specific numbers, you must use the phone_numbers parameter in the request body.
        # When using the phone_numbers parameter, ensure you follow the correct format as
        # shown in the example (either phone number IDs or phone numbers in E164 format).
        sig do
          params(
            phone_numbers: T::Array[String],
            filter: Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::OrHash,
            billing_group_id: String,
            connection_id: String,
            customer_reference: String,
            deletion_lock_enabled: T::Boolean,
            external_pin: String,
            hd_voice_enabled: T::Boolean,
            tags: T::Array[String],
            voice: Telnyx::PhoneNumbers::UpdateVoiceSettings::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::JobUpdateBatchResponse)
        end
        def update_batch(
          # Body param: Array of phone number ids and/or phone numbers in E164 format to
          # update. This parameter is required if no filter parameters are provided. If you
          # want to update specific numbers rather than all numbers matching a filter, you
          # must use this parameter. Each item must be either a valid phone number ID or a
          # phone number in E164 format (e.g., '+13127367254').
          phone_numbers:,
          # Query param: Consolidated filter parameter (deepObject style). Originally:
          # filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
          # filter[status], filter[voice.connection_name],
          # filter[voice.usage_payment_method], filter[billing_group_id],
          # filter[emergency_address_id], filter[customer_reference]
          filter: nil,
          # Body param: Identifies the billing group associated with the phone number.
          billing_group_id: nil,
          # Body param: Identifies the connection associated with the phone number.
          connection_id: nil,
          # Body param: A customer reference string for customer look ups.
          customer_reference: nil,
          # Body param: Indicates whether to enable or disable the deletion lock on each
          # phone number. When enabled, this prevents the phone number from being deleted
          # via the API or Telnyx portal.
          deletion_lock_enabled: nil,
          # Body param: If someone attempts to port your phone number away from Telnyx and
          # your phone number has an external PIN set, we will attempt to verify that you
          # provided the correct external PIN to the winning carrier. Note that not all
          # carriers cooperate with this security mechanism.
          external_pin: nil,
          # Body param: Indicates whether to enable or disable HD Voice on each phone
          # number. HD Voice is a paid feature and may not be available for all phone
          # numbers, more details about it can be found in the Telnyx support documentation.
          hd_voice_enabled: nil,
          # Body param: A list of user-assigned tags to help organize phone numbers.
          tags: nil,
          # Body param:
          voice: nil,
          request_options: {}
        )
        end

        # Creates a background job to update the emergency settings of a collection of
        # phone numbers. At most one thousand numbers can be updated per API call.
        sig do
          params(
            emergency_enabled: T::Boolean,
            phone_numbers: T::Array[String],
            emergency_address_id: T.nilable(String),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PhoneNumbers::JobUpdateEmergencySettingsBatchResponse
          )
        end
        def update_emergency_settings_batch(
          # Indicates whether to enable or disable emergency services on the numbers.
          emergency_enabled:,
          phone_numbers:,
          # Identifies the address to be used with emergency services. Required if
          # emergency_enabled is true, must be null or omitted if emergency_enabled is
          # false.
          emergency_address_id: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
