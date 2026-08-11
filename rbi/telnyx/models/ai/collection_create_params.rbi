# typed: strong

module Telnyx
  module Models
    module AI
      class CollectionCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::CollectionCreateParams, Telnyx::Internal::AnyHash)
          end

        # Human-readable collection name.
        sig { returns(String) }
        attr_accessor :name

        # Optional description.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Optional retrieval settings.
        sig do
          returns(T.nilable(Telnyx::AI::Collections::RetrievalSettingsWrapper))
        end
        attr_reader :settings

        sig do
          params(
            settings: Telnyx::AI::Collections::RetrievalSettingsWrapper::OrHash
          ).void
        end
        attr_writer :settings

        # Optional slug (unique per organization). Derived from `name` when omitted.
        sig { returns(T.nilable(String)) }
        attr_reader :slug

        sig { params(slug: String).void }
        attr_writer :slug

        # Optional sources to attach at creation time.
        sig do
          returns(T.nilable(T::Array[Telnyx::AI::Collections::SourceRequest]))
        end
        attr_reader :sources

        sig do
          params(
            sources: T::Array[Telnyx::AI::Collections::SourceRequest::OrHash]
          ).void
        end
        attr_writer :sources

        sig do
          params(
            name: String,
            description: String,
            settings: Telnyx::AI::Collections::RetrievalSettingsWrapper::OrHash,
            slug: String,
            sources: T::Array[Telnyx::AI::Collections::SourceRequest::OrHash],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Human-readable collection name.
          name:,
          # Optional description.
          description: nil,
          # Optional retrieval settings.
          settings: nil,
          # Optional slug (unique per organization). Derived from `name` when omitted.
          slug: nil,
          # Optional sources to attach at creation time.
          sources: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              description: String,
              settings: Telnyx::AI::Collections::RetrievalSettingsWrapper,
              slug: String,
              sources: T::Array[Telnyx::AI::Collections::SourceRequest],
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
