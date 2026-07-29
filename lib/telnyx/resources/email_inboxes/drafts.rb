# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailInboxes
      # Create, list, retrieve, update, delete, and send unsent draft messages belonging
      # to an agent inbox.
      class Drafts
        # Creates an unsent draft in the inbox. Every field is optional — a draft is a
        # work-in-progress and may be saved incomplete. Send-time requirements (sender,
        # subject, at least one recipient) are enforced when the draft is sent, not when
        # it is created.
        #
        # Drafts are unbillable and emit no Email Detail Records until they are sent.
        #
        # @overload create(inbox_id, attachments: nil, bcc: nil, cc: nil, from_email: nil, from_name: nil, headers: nil, html: nil, html_body: nil, labels: nil, metadata: nil, reply_to: nil, subject: nil, tags: nil, text: nil, text_body: nil, to: nil, request_options: {})
        #
        # @param inbox_id [String] Email inbox UUID.
        #
        # @param attachments [Array<Object>]
        #
        # @param bcc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        # @param cc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        # @param from_email [String]
        #
        # @param from_name [String]
        #
        # @param headers [Hash{Symbol=>String}]
        #
        # @param html [String] Alias for `html_body`, matching the send endpoint.
        #
        # @param html_body [String]
        #
        # @param labels [Array<String>]
        #
        # @param metadata [Object]
        #
        # @param reply_to [String]
        #
        # @param subject [String]
        #
        # @param tags [Array<String>]
        #
        # @param text [String] Alias for `text_body`, matching the send endpoint.
        #
        # @param text_body [String]
        #
        # @param to [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::EmailDraftResponse]
        #
        # @see Telnyx::Models::EmailInboxes::DraftCreateParams
        def create(inbox_id, params = {})
          parsed, options = Telnyx::EmailInboxes::DraftCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["email_inboxes/%1$s/drafts", inbox_id],
            body: parsed,
            model: Telnyx::EmailInboxes::EmailDraftResponse,
            options: options
          )
        end

        # Returns a single draft. Drafts that have been sent remain retrievable, so the
        # exact content that was sent stays auditable.
        #
        # @overload retrieve(draft_id, inbox_id:, request_options: {})
        #
        # @param draft_id [String] Email draft UUID.
        #
        # @param inbox_id [String] Email inbox UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::EmailDraftResponse]
        #
        # @see Telnyx::Models::EmailInboxes::DraftRetrieveParams
        def retrieve(draft_id, params)
          parsed, options = Telnyx::EmailInboxes::DraftRetrieveParams.dump_request(params)
          inbox_id =
            parsed.delete(:inbox_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["email_inboxes/%1$s/drafts/%2$s", inbox_id, draft_id],
            model: Telnyx::EmailInboxes::EmailDraftResponse,
            options: options
          )
        end

        # Updates the supplied fields on a draft. `account_id` and `inbox_id` are
        # server-owned and ignored if present in the body, so a draft can never be moved
        # between accounts or inboxes.
        #
        # A draft that is being sent or has already been sent is immutable and returns 422
        # — modifying it would race with delivery or rewrite the record of what was
        # actually sent.
        #
        # @overload update(draft_id, inbox_id:, attachments: nil, bcc: nil, cc: nil, from_email: nil, from_name: nil, headers: nil, html: nil, html_body: nil, labels: nil, metadata: nil, reply_to: nil, subject: nil, tags: nil, text: nil, text_body: nil, to: nil, request_options: {})
        #
        # @param draft_id [String] Path param: Email draft UUID.
        #
        # @param inbox_id [String] Path param: Email inbox UUID.
        #
        # @param attachments [Array<Object>] Body param
        #
        # @param bcc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
        #
        # @param cc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
        #
        # @param from_email [String] Body param
        #
        # @param from_name [String] Body param
        #
        # @param headers [Hash{Symbol=>String}] Body param
        #
        # @param html [String] Body param: Alias for `html_body`, matching the send endpoint.
        #
        # @param html_body [String] Body param
        #
        # @param labels [Array<String>] Body param
        #
        # @param metadata [Object] Body param
        #
        # @param reply_to [String] Body param
        #
        # @param subject [String] Body param
        #
        # @param tags [Array<String>] Body param
        #
        # @param text [String] Body param: Alias for `text_body`, matching the send endpoint.
        #
        # @param text_body [String] Body param
        #
        # @param to [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::EmailDraftResponse]
        #
        # @see Telnyx::Models::EmailInboxes::DraftUpdateParams
        def update(draft_id, params)
          parsed, options = Telnyx::EmailInboxes::DraftUpdateParams.dump_request(params)
          inbox_id =
            parsed.delete(:inbox_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["email_inboxes/%1$s/drafts/%2$s", inbox_id, draft_id],
            body: parsed,
            model: Telnyx::EmailInboxes::EmailDraftResponse,
            options: options
          )
        end

        # Lists drafts newest first using stable cursor pagination. All access is scoped
        # to the authenticated account and the given inbox.
        #
        # @overload list(inbox_id, filter_status: nil, page_after: nil, page_size: nil, request_options: {})
        #
        # @param inbox_id [String] Email inbox UUID.
        #
        # @param filter_status [Symbol, Telnyx::Models::EmailInboxes::DraftListParams::FilterStatus] Restrict results to drafts in this state.
        #
        # @param page_after [String] Opaque cursor returned by the previous page.
        #
        # @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::DraftListResponse]
        #
        # @see Telnyx::Models::EmailInboxes::DraftListParams
        def list(inbox_id, params = {})
          parsed, options = Telnyx::EmailInboxes::DraftListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["email_inboxes/%1$s/drafts", inbox_id],
            query: query.transform_keys(
              filter_status: "filter[status]",
              page_after: "page[after]",
              page_size: "page[size]"
            ),
            model: Telnyx::Models::EmailInboxes::DraftListResponse,
            options: options
          )
        end

        # Permanently deletes an unsent draft. Drafts that are being sent or have been
        # sent cannot be deleted; sent drafts are retained for audit.
        #
        # @overload delete(draft_id, inbox_id:, request_options: {})
        #
        # @param draft_id [String] Email draft UUID.
        #
        # @param inbox_id [String] Email inbox UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::EmailInboxes::DraftDeleteParams
        def delete(draft_id, params)
          parsed, options = Telnyx::EmailInboxes::DraftDeleteParams.dump_request(params)
          inbox_id =
            parsed.delete(:inbox_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["email_inboxes/%1$s/drafts/%2$s", inbox_id, draft_id],
            model: NilClass,
            options: options
          )
        end

        # Identical to `PUT`; both apply a partial update to the supplied fields.
        #
        # @overload patch(draft_id, inbox_id:, attachments: nil, bcc: nil, cc: nil, from_email: nil, from_name: nil, headers: nil, html: nil, html_body: nil, labels: nil, metadata: nil, reply_to: nil, subject: nil, tags: nil, text: nil, text_body: nil, to: nil, request_options: {})
        #
        # @param draft_id [String] Path param: Email draft UUID.
        #
        # @param inbox_id [String] Path param: Email inbox UUID.
        #
        # @param attachments [Array<Object>] Body param
        #
        # @param bcc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
        #
        # @param cc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
        #
        # @param from_email [String] Body param
        #
        # @param from_name [String] Body param
        #
        # @param headers [Hash{Symbol=>String}] Body param
        #
        # @param html [String] Body param: Alias for `html_body`, matching the send endpoint.
        #
        # @param html_body [String] Body param
        #
        # @param labels [Array<String>] Body param
        #
        # @param metadata [Object] Body param
        #
        # @param reply_to [String] Body param
        #
        # @param subject [String] Body param
        #
        # @param tags [Array<String>] Body param
        #
        # @param text [String] Body param: Alias for `text_body`, matching the send endpoint.
        #
        # @param text_body [String] Body param
        #
        # @param to [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::EmailDraftResponse]
        #
        # @see Telnyx::Models::EmailInboxes::DraftPatchParams
        def patch(draft_id, params)
          parsed, options = Telnyx::EmailInboxes::DraftPatchParams.dump_request(params)
          inbox_id =
            parsed.delete(:inbox_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["email_inboxes/%1$s/drafts/%2$s", inbox_id, draft_id],
            body: parsed,
            model: Telnyx::EmailInboxes::EmailDraftResponse,
            options: options
          )
        end

        # Sends the draft through the standard send pipeline — the same domain resolution,
        # suppression, reputation, daily-quota, persistence and Detail Record behaviour as
        # `POST /v2/email_messages`. The response body is the created email message.
        #
        # If the draft has no explicit `from_email`, the inbox address is used.
        #
        # The draft is marked `sent` only after the send is accepted; a send rejected for
        # suppression, quota or reputation leaves the draft editable so it can be fixed
        # and retried. A draft that is already `sent` returns 422 rather than sending
        # twice.
        #
        # @overload send_(draft_id, inbox_id:, request_options: {})
        #
        # @param draft_id [String] Email draft UUID.
        #
        # @param inbox_id [String] Email inbox UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::EmailMessageResponse]
        #
        # @see Telnyx::Models::EmailInboxes::DraftSendParams
        def send_(draft_id, params)
          parsed, options = Telnyx::EmailInboxes::DraftSendParams.dump_request(params)
          inbox_id =
            parsed.delete(:inbox_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["email_inboxes/%1$s/drafts/%2$s/send", inbox_id, draft_id],
            model: Telnyx::EmailInboxes::EmailMessageResponse,
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
