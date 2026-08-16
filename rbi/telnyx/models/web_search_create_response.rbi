# typed: strong

module Telnyx
  module Models
    class WebSearchCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WebSearchCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::WebSearchCreateResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::WebSearchCreateResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::WebSearchCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::WebSearchCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WebSearchCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::Models::WebSearchCreateResponse::Data::Results)
          )
        end
        attr_reader :results

        sig do
          params(
            results:
              Telnyx::Models::WebSearchCreateResponse::Data::Results::OrHash
          ).void
        end
        attr_writer :results

        sig do
          params(
            results:
              Telnyx::Models::WebSearchCreateResponse::Data::Results::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results: nil)
        end

        sig do
          override.returns(
            { results: Telnyx::Models::WebSearchCreateResponse::Data::Results }
          )
        end
        def to_hash
        end

        class Results < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::WebSearchCreateResponse::Data::Results,
                Telnyx::Internal::AnyHash
              )
            end

          # Web search results.
          sig { returns(T::Array[Telnyx::WebSearchResult]) }
          attr_accessor :web

          # News search results. Present only when the query surfaces news results.
          sig { returns(T.nilable(T::Array[Telnyx::WebSearchResult])) }
          attr_reader :news

          sig { params(news: T::Array[Telnyx::WebSearchResult::OrHash]).void }
          attr_writer :news

          sig do
            params(
              web: T::Array[Telnyx::WebSearchResult::OrHash],
              news: T::Array[Telnyx::WebSearchResult::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Web search results.
            web:,
            # News search results. Present only when the query surfaces news results.
            news: nil
          )
          end

          sig do
            override.returns(
              {
                web: T::Array[Telnyx::WebSearchResult],
                news: T::Array[Telnyx::WebSearchResult]
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
