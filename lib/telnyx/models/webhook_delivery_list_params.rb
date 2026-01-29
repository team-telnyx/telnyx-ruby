# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WebhookDeliveries#list
    class WebhookDeliveryListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[status][eq], filter[event_type], filter[webhook][contains],
      #   filter[attempts][contains], filter[started_at][gte], filter[started_at][lte],
      #   filter[finished_at][gte], filter[finished_at][lte]
      #
      #   @return [Telnyx::Models::WebhookDeliveryListParams::Filter, nil]
      optional :filter, -> { Telnyx::WebhookDeliveryListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::WebhookDeliveryListParams::Page, nil]
      optional :page, -> { Telnyx::WebhookDeliveryListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WebhookDeliveryListParams} for more details.
      #
      #   @param filter [Telnyx::Models::WebhookDeliveryListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status][eq]
      #
      #   @param page [Telnyx::Models::WebhookDeliveryListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute attempts
        #
        #   @return [Telnyx::Models::WebhookDeliveryListParams::Filter::Attempts, nil]
        optional :attempts, -> { Telnyx::WebhookDeliveryListParams::Filter::Attempts }

        # @!attribute event_type
        #   Return only webhook_deliveries matching the given value of `event_type`. Accepts
        #   multiple values separated by a `,`.
        #
        #   @return [String, nil]
        optional :event_type, String

        # @!attribute finished_at
        #
        #   @return [Telnyx::Models::WebhookDeliveryListParams::Filter::FinishedAt, nil]
        optional :finished_at, -> { Telnyx::WebhookDeliveryListParams::Filter::FinishedAt }

        # @!attribute started_at
        #
        #   @return [Telnyx::Models::WebhookDeliveryListParams::Filter::StartedAt, nil]
        optional :started_at, -> { Telnyx::WebhookDeliveryListParams::Filter::StartedAt }

        # @!attribute status
        #
        #   @return [Telnyx::Models::WebhookDeliveryListParams::Filter::Status, nil]
        optional :status, -> { Telnyx::WebhookDeliveryListParams::Filter::Status }

        # @!attribute webhook
        #
        #   @return [Telnyx::Models::WebhookDeliveryListParams::Filter::Webhook, nil]
        optional :webhook, -> { Telnyx::WebhookDeliveryListParams::Filter::Webhook }

        # @!method initialize(attempts: nil, event_type: nil, finished_at: nil, started_at: nil, status: nil, webhook: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::WebhookDeliveryListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[status][eq], filter[event_type], filter[webhook][contains],
        #   filter[attempts][contains], filter[started_at][gte], filter[started_at][lte],
        #   filter[finished_at][gte], filter[finished_at][lte]
        #
        #   @param attempts [Telnyx::Models::WebhookDeliveryListParams::Filter::Attempts]
        #
        #   @param event_type [String] Return only webhook_deliveries matching the given value of `event_type`. Accepts
        #
        #   @param finished_at [Telnyx::Models::WebhookDeliveryListParams::Filter::FinishedAt]
        #
        #   @param started_at [Telnyx::Models::WebhookDeliveryListParams::Filter::StartedAt]
        #
        #   @param status [Telnyx::Models::WebhookDeliveryListParams::Filter::Status]
        #
        #   @param webhook [Telnyx::Models::WebhookDeliveryListParams::Filter::Webhook]

        # @see Telnyx::Models::WebhookDeliveryListParams::Filter#attempts
        class Attempts < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   Return only webhook_deliveries whose `attempts` component contains the given
          #   text
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::WebhookDeliveryListParams::Filter::Attempts} for more details.
          #
          #   @param contains [String] Return only webhook_deliveries whose `attempts` component contains the given tex
        end

        # @see Telnyx::Models::WebhookDeliveryListParams::Filter#finished_at
        class FinishedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #   Return only webhook_deliveries whose delivery finished later than or at given
          #   ISO 8601 datetime
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lte
          #   Return only webhook_deliveries whose delivery finished earlier than or at given
          #   ISO 8601 datetime
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(gte: nil, lte: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::WebhookDeliveryListParams::Filter::FinishedAt} for more
          #   details.
          #
          #   @param gte [String] Return only webhook_deliveries whose delivery finished later than or at given IS
          #
          #   @param lte [String] Return only webhook_deliveries whose delivery finished earlier than or at given
        end

        # @see Telnyx::Models::WebhookDeliveryListParams::Filter#started_at
        class StartedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #   Return only webhook_deliveries whose delivery started later than or at given ISO
          #   8601 datetime
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lte
          #   Return only webhook_deliveries whose delivery started earlier than or at given
          #   ISO 8601 datetime
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(gte: nil, lte: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::WebhookDeliveryListParams::Filter::StartedAt} for more details.
          #
          #   @param gte [String] Return only webhook_deliveries whose delivery started later than or at given ISO
          #
          #   @param lte [String] Return only webhook_deliveries whose delivery started earlier than or at given I
        end

        # @see Telnyx::Models::WebhookDeliveryListParams::Filter#status
        class Status < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Return only webhook_deliveries matching the given `status`
          #
          #   @return [Symbol, Telnyx::Models::WebhookDeliveryListParams::Filter::Status::Eq, nil]
          optional :eq, enum: -> { Telnyx::WebhookDeliveryListParams::Filter::Status::Eq }

          # @!method initialize(eq: nil)
          #   @param eq [Symbol, Telnyx::Models::WebhookDeliveryListParams::Filter::Status::Eq] Return only webhook_deliveries matching the given `status`

          # Return only webhook_deliveries matching the given `status`
          #
          # @see Telnyx::Models::WebhookDeliveryListParams::Filter::Status#eq
          module Eq
            extend Telnyx::Internal::Type::Enum

            DELIVERED = :delivered
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::WebhookDeliveryListParams::Filter#webhook
        class Webhook < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   Return only webhook deliveries whose `webhook` component contains the given text
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::WebhookDeliveryListParams::Filter::Webhook} for more details.
          #
          #   @param contains [String] Return only webhook deliveries whose `webhook` component contains the given text
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
