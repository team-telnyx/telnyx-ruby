# typed: strong

module Telnyx
  module Models
    module WebSearch
      class ResearchCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WebSearch::ResearchCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The research question or topic.
        sig { returns(String) }
        attr_accessor :query

        # When `true`, the research runs asynchronously. The response returns a `task_id`
        # immediately instead of waiting for the result. Poll
        # `GET /web_search/research/{task_id}` to check status.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :background

        sig { params(background: T::Boolean).void }
        attr_writer :background

        # Maximum number of sources to use.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_sources

        sig { params(max_sources: Integer).void }
        attr_writer :max_sources

        # Research depth level. `lite` is fastest, `deep` is most thorough.
        sig do
          returns(
            T.nilable(
              Telnyx::WebSearch::ResearchCreateParams::ResearchEffort::OrSymbol
            )
          )
        end
        attr_reader :research_effort

        sig do
          params(
            research_effort:
              Telnyx::WebSearch::ResearchCreateParams::ResearchEffort::OrSymbol
          ).void
        end
        attr_writer :research_effort

        sig do
          params(
            query: String,
            background: T::Boolean,
            max_sources: Integer,
            research_effort:
              Telnyx::WebSearch::ResearchCreateParams::ResearchEffort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The research question or topic.
          query:,
          # When `true`, the research runs asynchronously. The response returns a `task_id`
          # immediately instead of waiting for the result. Poll
          # `GET /web_search/research/{task_id}` to check status.
          background: nil,
          # Maximum number of sources to use.
          max_sources: nil,
          # Research depth level. `lite` is fastest, `deep` is most thorough.
          research_effort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              query: String,
              background: T::Boolean,
              max_sources: Integer,
              research_effort:
                Telnyx::WebSearch::ResearchCreateParams::ResearchEffort::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Research depth level. `lite` is fastest, `deep` is most thorough.
        module ResearchEffort
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::WebSearch::ResearchCreateParams::ResearchEffort
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LITE =
            T.let(
              :lite,
              Telnyx::WebSearch::ResearchCreateParams::ResearchEffort::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Telnyx::WebSearch::ResearchCreateParams::ResearchEffort::TaggedSymbol
            )
          DEEP =
            T.let(
              :deep,
              Telnyx::WebSearch::ResearchCreateParams::ResearchEffort::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::WebSearch::ResearchCreateParams::ResearchEffort::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
