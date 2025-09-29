# typed: strong

module Telnyx
  module Models
    class WebhookDeliveryListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::WebhookDeliveryListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[status][eq], filter[event_type], filter[webhook][contains],
      # filter[attempts][contains], filter[started_at][gte], filter[started_at][lte],
      # filter[finished_at][gte], filter[finished_at][lte]
      sig { returns(T.nilable(Telnyx::WebhookDeliveryListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::WebhookDeliveryListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::WebhookDeliveryListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::WebhookDeliveryListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          filter: Telnyx::WebhookDeliveryListParams::Filter::OrHash,
          page: Telnyx::WebhookDeliveryListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[status][eq], filter[event_type], filter[webhook][contains],
        # filter[attempts][contains], filter[started_at][gte], filter[started_at][lte],
        # filter[finished_at][gte], filter[finished_at][lte]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::WebhookDeliveryListParams::Filter,
            page: Telnyx::WebhookDeliveryListParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WebhookDeliveryListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::WebhookDeliveryListParams::Filter::Attempts)
          )
        end
        attr_reader :attempts

        sig do
          params(
            attempts:
              Telnyx::WebhookDeliveryListParams::Filter::Attempts::OrHash
          ).void
        end
        attr_writer :attempts

        # Return only webhook_deliveries matching the given value of `event_type`. Accepts
        # multiple values separated by a `,`.
        sig { returns(T.nilable(String)) }
        attr_reader :event_type

        sig { params(event_type: String).void }
        attr_writer :event_type

        sig do
          returns(
            T.nilable(Telnyx::WebhookDeliveryListParams::Filter::FinishedAt)
          )
        end
        attr_reader :finished_at

        sig do
          params(
            finished_at:
              Telnyx::WebhookDeliveryListParams::Filter::FinishedAt::OrHash
          ).void
        end
        attr_writer :finished_at

        sig do
          returns(
            T.nilable(Telnyx::WebhookDeliveryListParams::Filter::StartedAt)
          )
        end
        attr_reader :started_at

        sig do
          params(
            started_at:
              Telnyx::WebhookDeliveryListParams::Filter::StartedAt::OrHash
          ).void
        end
        attr_writer :started_at

        sig do
          returns(T.nilable(Telnyx::WebhookDeliveryListParams::Filter::Status))
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::WebhookDeliveryListParams::Filter::Status::OrHash
          ).void
        end
        attr_writer :status

        sig do
          returns(T.nilable(Telnyx::WebhookDeliveryListParams::Filter::Webhook))
        end
        attr_reader :webhook

        sig do
          params(
            webhook: Telnyx::WebhookDeliveryListParams::Filter::Webhook::OrHash
          ).void
        end
        attr_writer :webhook

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[status][eq], filter[event_type], filter[webhook][contains],
        # filter[attempts][contains], filter[started_at][gte], filter[started_at][lte],
        # filter[finished_at][gte], filter[finished_at][lte]
        sig do
          params(
            attempts:
              Telnyx::WebhookDeliveryListParams::Filter::Attempts::OrHash,
            event_type: String,
            finished_at:
              Telnyx::WebhookDeliveryListParams::Filter::FinishedAt::OrHash,
            started_at:
              Telnyx::WebhookDeliveryListParams::Filter::StartedAt::OrHash,
            status: Telnyx::WebhookDeliveryListParams::Filter::Status::OrHash,
            webhook: Telnyx::WebhookDeliveryListParams::Filter::Webhook::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          attempts: nil,
          # Return only webhook_deliveries matching the given value of `event_type`. Accepts
          # multiple values separated by a `,`.
          event_type: nil,
          finished_at: nil,
          started_at: nil,
          status: nil,
          webhook: nil
        )
        end

        sig do
          override.returns(
            {
              attempts: Telnyx::WebhookDeliveryListParams::Filter::Attempts,
              event_type: String,
              finished_at:
                Telnyx::WebhookDeliveryListParams::Filter::FinishedAt,
              started_at: Telnyx::WebhookDeliveryListParams::Filter::StartedAt,
              status: Telnyx::WebhookDeliveryListParams::Filter::Status,
              webhook: Telnyx::WebhookDeliveryListParams::Filter::Webhook
            }
          )
        end
        def to_hash
        end

        class Attempts < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WebhookDeliveryListParams::Filter::Attempts,
                Telnyx::Internal::AnyHash
              )
            end

          # Return only webhook_deliveries whose `attempts` component contains the given
          # text
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # Return only webhook_deliveries whose `attempts` component contains the given
            # text
            contains: nil
          )
          end

          sig { override.returns({ contains: String }) }
          def to_hash
          end
        end

        class FinishedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WebhookDeliveryListParams::Filter::FinishedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Return only webhook_deliveries whose delivery finished later than or at given
          # ISO 8601 datetime
          sig { returns(T.nilable(String)) }
          attr_reader :gte

          sig { params(gte: String).void }
          attr_writer :gte

          # Return only webhook_deliveries whose delivery finished earlier than or at given
          # ISO 8601 datetime
          sig { returns(T.nilable(String)) }
          attr_reader :lte

          sig { params(lte: String).void }
          attr_writer :lte

          sig { params(gte: String, lte: String).returns(T.attached_class) }
          def self.new(
            # Return only webhook_deliveries whose delivery finished later than or at given
            # ISO 8601 datetime
            gte: nil,
            # Return only webhook_deliveries whose delivery finished earlier than or at given
            # ISO 8601 datetime
            lte: nil
          )
          end

          sig { override.returns({ gte: String, lte: String }) }
          def to_hash
          end
        end

        class StartedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WebhookDeliveryListParams::Filter::StartedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Return only webhook_deliveries whose delivery started later than or at given ISO
          # 8601 datetime
          sig { returns(T.nilable(String)) }
          attr_reader :gte

          sig { params(gte: String).void }
          attr_writer :gte

          # Return only webhook_deliveries whose delivery started earlier than or at given
          # ISO 8601 datetime
          sig { returns(T.nilable(String)) }
          attr_reader :lte

          sig { params(lte: String).void }
          attr_writer :lte

          sig { params(gte: String, lte: String).returns(T.attached_class) }
          def self.new(
            # Return only webhook_deliveries whose delivery started later than or at given ISO
            # 8601 datetime
            gte: nil,
            # Return only webhook_deliveries whose delivery started earlier than or at given
            # ISO 8601 datetime
            lte: nil
          )
          end

          sig { override.returns({ gte: String, lte: String }) }
          def to_hash
          end
        end

        class Status < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WebhookDeliveryListParams::Filter::Status,
                Telnyx::Internal::AnyHash
              )
            end

          # Return only webhook_deliveries matching the given `status`
          sig do
            returns(
              T.nilable(
                Telnyx::WebhookDeliveryListParams::Filter::Status::Eq::OrSymbol
              )
            )
          end
          attr_reader :eq

          sig do
            params(
              eq:
                Telnyx::WebhookDeliveryListParams::Filter::Status::Eq::OrSymbol
            ).void
          end
          attr_writer :eq

          sig do
            params(
              eq:
                Telnyx::WebhookDeliveryListParams::Filter::Status::Eq::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Return only webhook_deliveries matching the given `status`
            eq: nil
          )
          end

          sig do
            override.returns(
              {
                eq:
                  Telnyx::WebhookDeliveryListParams::Filter::Status::Eq::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Return only webhook_deliveries matching the given `status`
          module Eq
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WebhookDeliveryListParams::Filter::Status::Eq
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DELIVERED =
              T.let(
                :delivered,
                Telnyx::WebhookDeliveryListParams::Filter::Status::Eq::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::WebhookDeliveryListParams::Filter::Status::Eq::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WebhookDeliveryListParams::Filter::Status::Eq::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Webhook < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WebhookDeliveryListParams::Filter::Webhook,
                Telnyx::Internal::AnyHash
              )
            end

          # Return only webhook deliveries whose `webhook` component contains the given text
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # Return only webhook deliveries whose `webhook` component contains the given text
            contains: nil
          )
          end

          sig { override.returns({ contains: String }) }
          def to_hash
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WebhookDeliveryListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load
          number: nil,
          # The size of the page
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end
