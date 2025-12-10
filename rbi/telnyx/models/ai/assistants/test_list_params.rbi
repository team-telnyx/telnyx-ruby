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

          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          sig do
            returns(T.nilable(Telnyx::AI::Assistants::TestListParams::Page))
          end
          attr_reader :page

          sig do
            params(
              page: Telnyx::AI::Assistants::TestListParams::Page::OrHash
            ).void
          end
          attr_writer :page

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
              page: Telnyx::AI::Assistants::TestListParams::Page::OrHash,
              telnyx_conversation_channel: String,
              test_suite: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter tests by destination (phone number, webhook URL, etc.)
            destination: nil,
            # Consolidated page parameter (deepObject style). Originally: page[size],
            # page[number]
            page: nil,
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
                page: Telnyx::AI::Assistants::TestListParams::Page,
                telnyx_conversation_channel: String,
                test_suite: String,
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
                  Telnyx::AI::Assistants::TestListParams::Page,
                  Telnyx::Internal::AnyHash
                )
              end

            # Page number to retrieve (1-based indexing)
            sig { returns(T.nilable(Integer)) }
            attr_reader :number

            sig { params(number: Integer).void }
            attr_writer :number

            # Number of tests to return per page (1-100)
            sig { returns(T.nilable(Integer)) }
            attr_reader :size

            sig { params(size: Integer).void }
            attr_writer :size

            # Consolidated page parameter (deepObject style). Originally: page[size],
            # page[number]
            sig do
              params(number: Integer, size: Integer).returns(T.attached_class)
            end
            def self.new(
              # Page number to retrieve (1-based indexing)
              number: nil,
              # Number of tests to return per page (1-100)
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
  end
end
