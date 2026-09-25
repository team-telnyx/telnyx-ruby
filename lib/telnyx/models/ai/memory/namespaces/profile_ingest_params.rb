# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#ingest
          class ProfileIngestParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute namespace
            #
            #   @return [String]
            required :namespace, String

            # @!attribute profile_id
            #
            #   @return [String]
            required :profile_id, String

            # @!attribute body
            #   The session's messages, in whatever shape your framework produces. Any JSON
            #   value but null is accepted and stored whole, as long as it holds something to
            #   remember: a body with no content anywhere in it -- `{}`, `[]`, `""`,
            #   `{"messages": []}` -- is a 422.
            #
            #   @return [Hash{Symbol=>Object}, Array<Object>, String, Float, Boolean]
            required :body, union: -> { Telnyx::AI::Memory::Namespaces::ProfileIngestParams::Body }

            # @!attribute session_id
            #   Names the session. Re-ingesting the same session replaces what it held and keeps
            #   its `source_id`. Omit it to have one derived from the content and returned. No
            #   whitespace, control characters, or any of / \ # ? %.
            #
            #   @return [String, nil]
            optional :session_id, String, nil?: true

            # @!method initialize(namespace:, profile_id:, body:, session_id: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Memory::Namespaces::ProfileIngestParams} for more details.
            #
            #   @param namespace [String]
            #
            #   @param profile_id [String]
            #
            #   @param body [Hash{Symbol=>Object}, Array<Object>, String, Float, Boolean] The session's messages, in whatever shape your framework produces. Any JSON valu
            #
            #   @param session_id [String, nil] Names the session. Re-ingesting the same session replaces what it held and keeps
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            # The session's messages, in whatever shape your framework produces. Any JSON
            # value but null is accepted and stored whole, as long as it holds something to
            # remember: a body with no content anywhere in it -- `{}`, `[]`, `""`,
            # `{"messages": []}` -- is a 422.
            module Body
              extend Telnyx::Internal::Type::Union

              variant -> { Telnyx::Models::AI::Memory::Namespaces::ProfileIngestParams::Body::UnionMember0Map }

              variant union: -> { Telnyx::AI::Memory::Namespaces::ProfileIngestParams::Body::UnionMember1 }

              module UnionMember1
                extend Telnyx::Internal::Type::Union

                variant -> { Telnyx::Models::AI::Memory::Namespaces::ProfileIngestParams::Body::UnionMember1::UnionMember0Array }

                variant String

                variant Float

                variant Telnyx::Internal::Type::Boolean

                # @!method self.variants
                #   @return [Array(Array<Object>, String, Float, Boolean)]

                # @type [Telnyx::Internal::Type::Converter]
                UnionMember0Array = Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]
              end

              # @!method self.variants
              #   @return [Array(Hash{Symbol=>Object}, Array<Object>, String, Float, Boolean)]

              # @type [Telnyx::Internal::Type::Converter]
              UnionMember0Map = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]
            end
          end
        end
      end
    end
  end
end
