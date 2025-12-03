# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class TestListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::TestListParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter tests by destination (phone number, webhook URL, etc.)
          sig { returns(T.nilable(String)) }
          attr_reader :destination

          sig { params(destination: String).void }
          attr_writer :destination

          sig { returns(T.nilable(Integer)) }
          attr_reader :page_number

          sig { params(page_number: Integer).void }
          attr_writer :page_number

          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          # Filter tests by communication channel (e.g., 'web_chat', 'sms')
          sig { returns(T.nilable(String)) }
          attr_reader :telnyx_conversation_channel

          sig { params(telnyx_conversation_channel: String).void }
          attr_writer :telnyx_conversation_channel

          # Filter tests by test suite name
          sig { returns(T.nilable(String)) }
          attr_reader :test_suite

          sig { params(test_suite: String).void }
          attr_writer :test_suite

          sig do
            params(
              destination: String,
              page_number: Integer,
              page_size: Integer,
              telnyx_conversation_channel: String,
              test_suite: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter tests by destination (phone number, webhook URL, etc.)
            destination: nil,
            page_number: nil,
            page_size: nil,
            # Filter tests by communication channel (e.g., 'web_chat', 'sms')
            telnyx_conversation_channel: nil,
            # Filter tests by test suite name
            test_suite: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                destination: String,
                page_number: Integer,
                page_size: Integer,
                telnyx_conversation_channel: String,
                test_suite: String,
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
