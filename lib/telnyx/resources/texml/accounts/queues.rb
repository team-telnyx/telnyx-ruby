# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Queues
          # Creates a new queue resource.
          #
          # @overload create(account_sid, friendly_name: nil, max_size: nil, request_options: {})
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param friendly_name [String] A human readable name for the queue.
          #
          # @param max_size [Integer] The maximum size of the queue.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::QueueCreateResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::QueueCreateParams
          def create(account_sid, params = {})
            parsed, options = Telnyx::Texml::Accounts::QueueCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["texml/Accounts/%1$s/Queues", account_sid],
              headers: {"content-type" => "application/x-www-form-urlencoded"},
              body: parsed,
              model: Telnyx::Models::Texml::Accounts::QueueCreateResponse,
              options: options
            )
          end

          # Returns a queue resource.
          #
          # @overload retrieve(queue_sid, account_sid:, request_options: {})
          #
          # @param queue_sid [String] The QueueSid that identifies the call queue.
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::QueueRetrieveResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::QueueRetrieveParams
          def retrieve(queue_sid, params)
            parsed, options = Telnyx::Texml::Accounts::QueueRetrieveParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["texml/Accounts/%1$s/Queues/%2$s", account_sid, queue_sid],
              model: Telnyx::Models::Texml::Accounts::QueueRetrieveResponse,
              options: options
            )
          end

          # Updates a queue resource.
          #
          # @overload update(queue_sid, account_sid:, max_size: nil, request_options: {})
          #
          # @param queue_sid [String] Path param: The QueueSid that identifies the call queue.
          #
          # @param account_sid [String] Path param: The id of the account the resource belongs to.
          #
          # @param max_size [Integer] Body param: The maximum size of the queue.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::QueueUpdateResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::QueueUpdateParams
          def update(queue_sid, params)
            parsed, options = Telnyx::Texml::Accounts::QueueUpdateParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["texml/Accounts/%1$s/Queues/%2$s", account_sid, queue_sid],
              headers: {"content-type" => "application/x-www-form-urlencoded"},
              body: parsed,
              model: Telnyx::Models::Texml::Accounts::QueueUpdateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Texml::Accounts::QueueListParams} for more details.
          #
          # Lists queue resources.
          #
          # @overload list(account_sid, date_created: nil, date_updated: nil, page: nil, page_size: nil, page_token: nil, request_options: {})
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param date_created [String] Filters conferences by the creation date. Expected format is YYYY-MM-DD. Also ac
          #
          # @param date_updated [String] Filters conferences by the time they were last updated. Expected format is YYYY-
          #
          # @param page [Integer] The number of the page to be displayed, zero-indexed, should be used in conjucti
          #
          # @param page_size [Integer] The number of records to be displayed on a page
          #
          # @param page_token [String] Used to request the next page of results.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::QueueListResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::QueueListParams
          def list(account_sid, params = {})
            parsed, options = Telnyx::Texml::Accounts::QueueListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["texml/Accounts/%1$s/Queues", account_sid],
              query: parsed.transform_keys(
                date_created: "DateCreated",
                date_updated: "DateUpdated",
                page: "Page",
                page_size: "PageSize",
                page_token: "PageToken"
              ),
              model: Telnyx::Models::Texml::Accounts::QueueListResponse,
              options: options
            )
          end

          # Delete a queue resource.
          #
          # @overload delete(queue_sid, account_sid:, request_options: {})
          #
          # @param queue_sid [String] The QueueSid that identifies the call queue.
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::Texml::Accounts::QueueDeleteParams
          def delete(queue_sid, params)
            parsed, options = Telnyx::Texml::Accounts::QueueDeleteParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["texml/Accounts/%1$s/Queues/%2$s", account_sid, queue_sid],
              model: NilClass,
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
end
