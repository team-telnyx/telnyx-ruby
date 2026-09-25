# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfileIngestParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::ProfileIngestParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :namespace

            sig { returns(String) }
            attr_accessor :profile_id

            # The session's messages, in whatever shape your framework produces. Any JSON
            # value but null is accepted and stored whole, as long as it holds something to
            # remember: a body with no content anywhere in it -- `{}`, `[]`, `""`,
            # `{"messages": []}` -- is a 422.
            sig do
              returns(
                Telnyx::AI::Memory::Namespaces::ProfileIngestParams::Body::Variants
              )
            end
            attr_accessor :body

            # Names the session. Re-ingesting the same session replaces what it held and keeps
            # its `source_id`. Omit it to have one derived from the content and returned. No
            # whitespace, control characters, or any of / \ # ? %.
            sig { returns(T.nilable(String)) }
            attr_accessor :session_id

            sig do
              params(
                namespace: String,
                profile_id: String,
                body:
                  Telnyx::AI::Memory::Namespaces::ProfileIngestParams::Body::Variants,
                session_id: T.nilable(String),
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              namespace:,
              profile_id:,
              # The session's messages, in whatever shape your framework produces. Any JSON
              # value but null is accepted and stored whole, as long as it holds something to
              # remember: a body with no content anywhere in it -- `{}`, `[]`, `""`,
              # `{"messages": []}` -- is a 422.
              body:,
              # Names the session. Re-ingesting the same session replaces what it held and keeps
              # its `source_id`. Omit it to have one derived from the content and returned. No
              # whitespace, control characters, or any of / \ # ? %.
              session_id: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  namespace: String,
                  profile_id: String,
                  body:
                    Telnyx::AI::Memory::Namespaces::ProfileIngestParams::Body::Variants,
                  session_id: T.nilable(String),
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end

            # The session's messages, in whatever shape your framework produces. Any JSON
            # value but null is accepted and stored whole, as long as it holds something to
            # remember: a body with no content anywhere in it -- `{}`, `[]`, `""`,
            # `{"messages": []}` -- is a 422.
            module Body
              extend Telnyx::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    T::Hash[Symbol, T.anything],
                    Telnyx::AI::Memory::Namespaces::ProfileIngestParams::Body::UnionMember1::Variants
                  )
                end

              module UnionMember1
                extend Telnyx::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(T::Array[T.anything], String, Float, T::Boolean)
                  end

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Memory::Namespaces::ProfileIngestParams::Body::UnionMember1::Variants
                    ]
                  )
                end
                def self.variants
                end

                UnionMember0Array =
                  T.let(
                    Telnyx::Internal::Type::ArrayOf[
                      Telnyx::Internal::Type::Unknown
                    ],
                    Telnyx::Internal::Type::Converter
                  )
              end

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::Memory::Namespaces::ProfileIngestParams::Body::Variants
                  ]
                )
              end
              def self.variants
              end

              UnionMember0Map =
                T.let(
                  Telnyx::Internal::Type::HashOf[
                    Telnyx::Internal::Type::Unknown
                  ],
                  Telnyx::Internal::Type::Converter
                )
            end
          end
        end
      end
    end
  end
end
