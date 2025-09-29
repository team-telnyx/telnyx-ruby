# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightGroupRetrieveInsightGroupsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::InsightGroupRetrieveInsightGroupsParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Consolidated page parameter (deepObject style). Originally: page[number],
          # page[size]
          sig do
            returns(
              T.nilable(
                Telnyx::AI::Conversations::InsightGroupRetrieveInsightGroupsParams::Page
              )
            )
          end
          attr_reader :page

          sig do
            params(
              page:
                Telnyx::AI::Conversations::InsightGroupRetrieveInsightGroupsParams::Page::OrHash
            ).void
          end
          attr_writer :page

          sig do
            params(
              page:
                Telnyx::AI::Conversations::InsightGroupRetrieveInsightGroupsParams::Page::OrHash,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Consolidated page parameter (deepObject style). Originally: page[number],
            # page[size]
            page: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                page:
                  Telnyx::AI::Conversations::InsightGroupRetrieveInsightGroupsParams::Page,
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
                  Telnyx::AI::Conversations::InsightGroupRetrieveInsightGroupsParams::Page,
                  Telnyx::Internal::AnyHash
                )
              end

            # Page number (0-based)
            sig { returns(T.nilable(Integer)) }
            attr_reader :number

            sig { params(number: Integer).void }
            attr_writer :number

            # Number of items per page
            sig { returns(T.nilable(Integer)) }
            attr_reader :size

            sig { params(size: Integer).void }
            attr_writer :size

            # Consolidated page parameter (deepObject style). Originally: page[number],
            # page[size]
            sig do
              params(number: Integer, size: Integer).returns(T.attached_class)
            end
            def self.new(
              # Page number (0-based)
              number: nil,
              # Number of items per page
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
