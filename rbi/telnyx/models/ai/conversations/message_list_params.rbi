# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class MessageListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::MessageListParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :conversation_id

          # The page number to retrieve.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_number

          sig { params(page_number: Integer).void }
          attr_writer :page_number

          # The number of messages to return per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          sig do
            params(
              conversation_id: String,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            conversation_id:,
            # The page number to retrieve.
            page_number: nil,
            # The number of messages to return per page.
            page_size: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                conversation_id: String,
                page_number: Integer,
                page_size: Integer,
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
