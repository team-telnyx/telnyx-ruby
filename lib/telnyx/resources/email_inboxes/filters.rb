# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailInboxes
      # Create and manage agent inboxes, retrieve inbound messages and threads, and
      # reply to or forward messages.
      class Filters
        # Adds entries to either the allowlist or blocklist. The operation is an
        # idempotent set union: entries already present remain unchanged.
        #
        # @overload create(inbox_id, entries:, type:, request_options: {})
        #
        # @param inbox_id [String] Email inbox UUID.
        #
        # @param entries [Array<String>]
        #
        # @param type [Symbol, Telnyx::Models::EmailInboxes::MutateInboxFiltersRequest::Type] The list to change.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::FilterCreateResponse]
        #
        # @see Telnyx::Models::EmailInboxes::FilterCreateParams
        def create(inbox_id, params)
          parsed, options = Telnyx::EmailInboxes::FilterCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["email_inboxes/%1$s/filters", inbox_id],
            body: parsed,
            model: Telnyx::Models::EmailInboxes::FilterCreateResponse,
            options: options
          )
        end

        # Returns the inbox's sender allowlist and blocklist. Entries are normalized to
        # lowercase. A blocklist match takes precedence over an allowlist match; when both
        # lists are empty, all senders are accepted.
        #
        # @overload list(inbox_id, request_options: {})
        #
        # @param inbox_id [String] Email inbox UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::FilterListResponse]
        #
        # @see Telnyx::Models::EmailInboxes::FilterListParams
        def list(inbox_id, params = {})
          @client.request(
            method: :get,
            path: ["email_inboxes/%1$s/filters", inbox_id],
            model: Telnyx::Models::EmailInboxes::FilterListResponse,
            options: params[:request_options]
          )
        end

        # Removes entries from either the allowlist or blocklist. The operation is
        # idempotent: removing an entry that is not present still returns the current
        # filter lists.
        #
        # @overload delete_all(inbox_id, entries:, type:, request_options: {})
        #
        # @param inbox_id [String] Email inbox UUID.
        #
        # @param entries [Array<String>]
        #
        # @param type [Symbol, Telnyx::Models::EmailInboxes::MutateInboxFiltersRequest::Type] The list to change.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::FilterDeleteAllResponse]
        #
        # @see Telnyx::Models::EmailInboxes::FilterDeleteAllParams
        def delete_all(inbox_id, params)
          parsed, options = Telnyx::EmailInboxes::FilterDeleteAllParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["email_inboxes/%1$s/filters", inbox_id],
            body: parsed,
            model: Telnyx::Models::EmailInboxes::FilterDeleteAllResponse,
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
