# typed: strong

module Telnyx
  module Models
    module WebSearch
      class ResearchCitation < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WebSearch::ResearchCitation,
              Telnyx::Internal::AnyHash
            )
          end

        # Title of the source page.
        sig { returns(String) }
        attr_accessor :title

        # Source URL.
        sig { returns(String) }
        attr_accessor :url

        # Relevant excerpt from the source (if available).
        sig { returns(T.nilable(String)) }
        attr_reader :snippet

        sig { params(snippet: String).void }
        attr_writer :snippet

        sig do
          params(title: String, url: String, snippet: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Title of the source page.
          title:,
          # Source URL.
          url:,
          # Relevant excerpt from the source (if available).
          snippet: nil
        )
        end

        sig do
          override.returns({ title: String, url: String, snippet: String })
        end
        def to_hash
        end
      end
    end
  end
end
