# typed: strong

module Telnyx
  module Models
    module PhoneNumberBlocks
      class JobError < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumberBlocks::JobError,
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

        sig { returns(T.nilable(Telnyx::PhoneNumberBlocks::JobError::Meta)) }
        attr_reader :meta

        sig do
          params(meta: Telnyx::PhoneNumberBlocks::JobError::Meta::OrHash).void
        end
        attr_writer :meta

        sig { returns(T.nilable(Telnyx::PhoneNumberBlocks::JobError::Source)) }
        attr_reader :source

        sig do
          params(
            source: Telnyx::PhoneNumberBlocks::JobError::Source::OrHash
          ).void
        end
        attr_writer :source

        sig do
          params(
            code: String,
            title: String,
            detail: String,
            meta: Telnyx::PhoneNumberBlocks::JobError::Meta::OrHash,
            source: Telnyx::PhoneNumberBlocks::JobError::Source::OrHash
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
              meta: Telnyx::PhoneNumberBlocks::JobError::Meta,
              source: Telnyx::PhoneNumberBlocks::JobError::Source
            }
          )
        end
        def to_hash
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumberBlocks::JobError::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          # URL with additional information on the error.
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig { params(url: String).returns(T.attached_class) }
          def self.new(
            # URL with additional information on the error.
            url: nil
          )
          end

          sig { override.returns({ url: String }) }
          def to_hash
          end
        end

        class Source < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumberBlocks::JobError::Source,
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
            params(parameter: String, pointer: String).returns(T.attached_class)
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
