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

          sig { returns(String) }
          attr_accessor :assistant_id

          # Filter results by conversation channel.
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

          # Start of the date range filter (inclusive, ISO 8601).
          sig { returns(T.nilable(Time)) }
          attr_reader :from_date

          sig { params(from_date: Time).void }
          attr_writer :from_date

          sig { returns(T.nilable(Integer)) }
          attr_reader :page_number

          sig { params(page_number: Integer).void }
          attr_writer :page_number

          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          # End of the date range filter (inclusive, ISO 8601).
          sig { returns(T.nilable(Time)) }
          attr_reader :to_date

          sig { params(to_date: Time).void }
          attr_writer :to_date

          sig do
            params(
              assistant_id: String,
              conversation_channel:
                Telnyx::AI::Assistants::ConversationChannelType::OrSymbol,
              from_date: Time,
              page_number: Integer,
              page_size: Integer,
              to_date: Time,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            assistant_id:,
            # Filter results by conversation channel.
            conversation_channel: nil,
            # Start of the date range filter (inclusive, ISO 8601).
            from_date: nil,
            page_number: nil,
            page_size: nil,
            # End of the date range filter (inclusive, ISO 8601).
            to_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                conversation_channel:
                  Telnyx::AI::Assistants::ConversationChannelType::OrSymbol,
                from_date: Time,
                page_number: Integer,
                page_size: Integer,
                to_date: Time,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
