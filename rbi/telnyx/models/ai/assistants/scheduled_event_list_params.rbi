# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class ScheduledEventListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::ScheduledEventListParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::AI::Assistants::ConversationChannelType::OrSymbol
              )
            )
          end
          attr_reader :conversation_channel

          sig do
            params(
              conversation_channel:
                Telnyx::AI::Assistants::ConversationChannelType::OrSymbol
            ).void
          end
          attr_writer :conversation_channel

          sig { returns(T.nilable(Time)) }
          attr_reader :from_date

          sig { params(from_date: Time).void }
          attr_writer :from_date

          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          sig do
            returns(
              T.nilable(Telnyx::AI::Assistants::ScheduledEventListParams::Page)
            )
          end
          attr_reader :page

          sig do
            params(
              page:
                Telnyx::AI::Assistants::ScheduledEventListParams::Page::OrHash
            ).void
          end
          attr_writer :page

          sig { returns(T.nilable(Time)) }
          attr_reader :to_date

          sig { params(to_date: Time).void }
          attr_writer :to_date

          sig do
            params(
              conversation_channel:
                Telnyx::AI::Assistants::ConversationChannelType::OrSymbol,
              from_date: Time,
              page:
                Telnyx::AI::Assistants::ScheduledEventListParams::Page::OrHash,
              to_date: Time,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            conversation_channel: nil,
            from_date: nil,
            # Consolidated page parameter (deepObject style). Originally: page[size],
            # page[number]
            page: nil,
            to_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                conversation_channel:
                  Telnyx::AI::Assistants::ConversationChannelType::OrSymbol,
                from_date: Time,
                page: Telnyx::AI::Assistants::ScheduledEventListParams::Page,
                to_date: Time,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Page < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::ScheduledEventListParams::Page,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :number

            sig { params(number: Integer).void }
            attr_writer :number

            sig { returns(T.nilable(Integer)) }
            attr_reader :size

            sig { params(size: Integer).void }
            attr_writer :size

            # Consolidated page parameter (deepObject style). Originally: page[size],
            # page[number]
            sig do
              params(number: Integer, size: Integer).returns(T.attached_class)
            end
            def self.new(number: nil, size: nil)
            end

            sig { override.returns({ number: Integer, size: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
