# typed: strong

module Telnyx
  module Models
    class NumbersError73c9788e53 < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NumbersError73c9788e53, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      sig { returns(T.nilable(String)) }
      attr_reader :detail

      sig { params(detail: String).void }
      attr_writer :detail

      sig { returns(T.nilable(Telnyx::NumbersError73c9788e53::Meta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::NumbersError73c9788e53::Meta::OrHash).void }
      attr_writer :meta

      sig { returns(T.nilable(Telnyx::NumbersError73c9788e53::Source)) }
      attr_reader :source

      sig do
        params(source: Telnyx::NumbersError73c9788e53::Source::OrHash).void
      end
      attr_writer :source

      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      sig do
        params(
          code: String,
          detail: String,
          meta: Telnyx::NumbersError73c9788e53::Meta::OrHash,
          source: Telnyx::NumbersError73c9788e53::Source::OrHash,
          title: String
        ).returns(T.attached_class)
      end
      def self.new(code: nil, detail: nil, meta: nil, source: nil, title: nil)
      end

      sig do
        override.returns(
          {
            code: String,
            detail: String,
            meta: Telnyx::NumbersError73c9788e53::Meta,
            source: Telnyx::NumbersError73c9788e53::Source,
            title: String
          }
        )
      end
      def to_hash
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NumbersError73c9788e53::Meta,
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
              Telnyx::NumbersError73c9788e53::Source,
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
