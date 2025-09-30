# typed: strong

module Telnyx
  module Models
    module Actions
      class RegisterCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Actions::RegisterCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Successfully registered SIM cards.
        sig { returns(T.nilable(T::Array[Telnyx::SimpleSimCard])) }
        attr_reader :data

        sig { params(data: T::Array[Telnyx::SimpleSimCard::OrHash]).void }
        attr_writer :data

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::Actions::RegisterCreateResponse::Error]
            )
          )
        end
        attr_reader :errors

        sig do
          params(
            errors:
              T::Array[
                Telnyx::Models::Actions::RegisterCreateResponse::Error::OrHash
              ]
          ).void
        end
        attr_writer :errors

        sig do
          params(
            data: T::Array[Telnyx::SimpleSimCard::OrHash],
            errors:
              T::Array[
                Telnyx::Models::Actions::RegisterCreateResponse::Error::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Successfully registered SIM cards.
          data: nil,
          errors: nil
        )
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::SimpleSimCard],
              errors:
                T::Array[Telnyx::Models::Actions::RegisterCreateResponse::Error]
            }
          )
        end
        def to_hash
        end

        class Error < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Actions::RegisterCreateResponse::Error,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :code

          sig { returns(String) }
          attr_accessor :title

          sig { returns(T.nilable(String)) }
          attr_reader :detail

          sig { params(detail: String).void }
          attr_writer :detail

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :meta

          sig { params(meta: T::Hash[Symbol, T.anything]).void }
          attr_writer :meta

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Actions::RegisterCreateResponse::Error::Source
              )
            )
          end
          attr_reader :source

          sig do
            params(
              source:
                Telnyx::Models::Actions::RegisterCreateResponse::Error::Source::OrHash
            ).void
          end
          attr_writer :source

          sig do
            params(
              code: String,
              title: String,
              detail: String,
              meta: T::Hash[Symbol, T.anything],
              source:
                Telnyx::Models::Actions::RegisterCreateResponse::Error::Source::OrHash
            ).returns(T.attached_class)
          end
          def self.new(code:, title:, detail: nil, meta: nil, source: nil)
          end

          sig do
            override.returns(
              {
                code: String,
                title: String,
                detail: String,
                meta: T::Hash[Symbol, T.anything],
                source:
                  Telnyx::Models::Actions::RegisterCreateResponse::Error::Source
              }
            )
          end
          def to_hash
          end

          class Source < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Actions::RegisterCreateResponse::Error::Source,
                  Telnyx::Internal::AnyHash
                )
              end

            # Indicates which query parameter caused the error.
            sig { returns(T.nilable(String)) }
            attr_reader :parameter

            sig { params(parameter: String).void }
            attr_writer :parameter

            # JSON pointer (RFC6901) to the offending entity.
            sig { returns(T.nilable(String)) }
            attr_reader :pointer

            sig { params(pointer: String).void }
            attr_writer :pointer

            sig do
              params(parameter: String, pointer: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Indicates which query parameter caused the error.
              parameter: nil,
              # JSON pointer (RFC6901) to the offending entity.
              pointer: nil
            )
            end

            sig { override.returns({ parameter: String, pointer: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
