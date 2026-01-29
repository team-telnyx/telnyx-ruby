# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumberBlocks
      class Jobs
        # Retrieves a phone number blocks job
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the Phone Number Blocks Job.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumberBlocks::JobRetrieveResponse]
        #
        # @see Telnyx::Models::PhoneNumberBlocks::JobRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["phone_number_blocks/jobs/%1$s", id],
            model: Telnyx::Models::PhoneNumberBlocks::JobRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumberBlocks::JobListParams} for more details.
        #
        # Lists the phone number blocks jobs
        #
        # @overload list(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::PhoneNumberBlocks::JobListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type], filt
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param sort [Symbol, Telnyx::Models::PhoneNumberBlocks::JobListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::PhoneNumberBlocks::Job>]
        #
        # @see Telnyx::Models::PhoneNumberBlocks::JobListParams
        def list(params = {})
          parsed, options = Telnyx::PhoneNumberBlocks::JobListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "phone_number_blocks/jobs",
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::PhoneNumberBlocks::Job,
            options: options
          )
        end

        # Creates a new background job to delete all the phone numbers associated with the
        # given block. We will only consider the phone number block as deleted after all
        # phone numbers associated with it are removed, so multiple executions of this job
        # may be necessary in case some of the phone numbers present errors during the
        # deletion process.
        #
        # @overload delete_phone_number_block(phone_number_block_id:, request_options: {})
        #
        # @param phone_number_block_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumberBlocks::JobDeletePhoneNumberBlockResponse]
        #
        # @see Telnyx::Models::PhoneNumberBlocks::JobDeletePhoneNumberBlockParams
        def delete_phone_number_block(params)
          parsed, options = Telnyx::PhoneNumberBlocks::JobDeletePhoneNumberBlockParams.dump_request(params)
          @client.request(
            method: :post,
            path: "phone_number_blocks/jobs/delete_phone_number_block",
            body: parsed,
            model: Telnyx::Models::PhoneNumberBlocks::JobDeletePhoneNumberBlockResponse,
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
