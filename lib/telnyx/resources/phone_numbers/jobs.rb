# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumbers
      class Jobs
        # Retrieve a phone numbers job
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the Phone Numbers Job.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::JobRetrieveResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::JobRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["phone_numbers/jobs/%1$s", id],
            model: Telnyx::Models::PhoneNumbers::JobRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::JobListParams} for more details.
        #
        # Lists the phone numbers jobs
        #
        # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::PhoneNumbers::JobListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type]
        #
        # @param page [Telnyx::Models::PhoneNumbers::JobListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param sort [Symbol, Telnyx::Models::PhoneNumbers::JobListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::JobListResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::JobListParams
        def list(params = {})
          parsed, options = Telnyx::PhoneNumbers::JobListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "phone_numbers/jobs",
            query: parsed,
            model: Telnyx::Models::PhoneNumbers::JobListResponse,
            options: options
          )
        end

        # Creates a new background job to delete a batch of numbers. At most one thousand
        # numbers can be updated per API call.
        #
        # @overload delete_batch(phone_numbers:, request_options: {})
        #
        # @param phone_numbers [Array<String>]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::JobDeleteBatchResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::JobDeleteBatchParams
        def delete_batch(params)
          parsed, options = Telnyx::PhoneNumbers::JobDeleteBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "phone_numbers/jobs/delete_phone_numbers",
            body: parsed,
            model: Telnyx::Models::PhoneNumbers::JobDeleteBatchResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::JobUpdateBatchParams} for more details.
        #
        # Creates a new background job to update a batch of numbers. At most one thousand
        # numbers can be updated per API call. At least one of the updateable fields must
        # be submitted. IMPORTANT: You must either specify filters (using the filter
        # parameters) or specific phone numbers (using the phone_numbers parameter in the
        # request body). If you specify filters, ALL phone numbers that match the given
        # filters (up to 1000 at a time) will be updated. If you want to update only
        # specific numbers, you must use the phone_numbers parameter in the request body.
        # When using the phone_numbers parameter, ensure you follow the correct format as
        # shown in the example (either phone number IDs or phone numbers in E164 format).
        #
        # @overload update_batch(phone_numbers:, filter: nil, billing_group_id: nil, connection_id: nil, customer_reference: nil, deletion_lock_enabled: nil, external_pin: nil, hd_voice_enabled: nil, tags: nil, voice: nil, request_options: {})
        #
        # @param phone_numbers [Array<String>] Body param: Array of phone number ids and/or phone numbers in E164 format to upd
        #
        # @param filter [Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter] Query param: Consolidated filter parameter (deepObject style). Originally: filte
        #
        # @param billing_group_id [String] Body param: Identifies the billing group associated with the phone number.
        #
        # @param connection_id [String] Body param: Identifies the connection associated with the phone number.
        #
        # @param customer_reference [String] Body param: A customer reference string for customer look ups.
        #
        # @param deletion_lock_enabled [Boolean] Body param: Indicates whether to enable or disable the deletion lock on each pho
        #
        # @param external_pin [String] Body param: If someone attempts to port your phone number away from Telnyx and y
        #
        # @param hd_voice_enabled [Boolean] Body param: Indicates whether to enable or disable HD Voice on each phone number
        #
        # @param tags [Array<String>] Body param: A list of user-assigned tags to help organize phone numbers.
        #
        # @param voice [Telnyx::Models::PhoneNumbers::UpdateVoiceSettings] Body param:
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::JobUpdateBatchResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::JobUpdateBatchParams
        def update_batch(params)
          parsed, options = Telnyx::PhoneNumbers::JobUpdateBatchParams.dump_request(params)
          query_params = [:filter]
          @client.request(
            method: :post,
            path: "phone_numbers/jobs/update_phone_numbers",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Telnyx::Models::PhoneNumbers::JobUpdateBatchResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::JobUpdateEmergencySettingsBatchParams} for more
        # details.
        #
        # Creates a background job to update the emergency settings of a collection of
        # phone numbers. At most one thousand numbers can be updated per API call.
        #
        # @overload update_emergency_settings_batch(emergency_enabled:, phone_numbers:, emergency_address_id: nil, request_options: {})
        #
        # @param emergency_enabled [Boolean] Indicates whether to enable or disable emergency services on the numbers.
        #
        # @param phone_numbers [Array<String>]
        #
        # @param emergency_address_id [String, nil] Identifies the address to be used with emergency services. Required if emergency
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::JobUpdateEmergencySettingsBatchResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::JobUpdateEmergencySettingsBatchParams
        def update_emergency_settings_batch(params)
          parsed, options = Telnyx::PhoneNumbers::JobUpdateEmergencySettingsBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "phone_numbers/jobs/update_emergency_settings",
            body: parsed,
            model: Telnyx::Models::PhoneNumbers::JobUpdateEmergencySettingsBatchResponse,
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
