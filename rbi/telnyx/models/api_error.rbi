# typed: strong

module Telnyx
  module Models
    class APIError < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::APIError, Telnyx::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :code

      sig { returns(String) }
      attr_accessor :title

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :meta

      sig { params(meta: T::Hash[Symbol, T.anything]).void }
      attr_writer :meta

      sig { returns(T.nilable(Telnyx::APIError::Source)) }
      attr_reader :source

      sig { params(source: Telnyx::APIError::Source::OrHash).void }
      attr_writer :source

      sig do
        params(
          code: String,
          title: String,
          description: String,
          meta: T::Hash[Symbol, T.anything],
          source: Telnyx::APIError::Source::OrHash
        ).returns(T.attached_class)
      end
      def self.new(code:, title:, description: nil, meta: nil, source: nil)
      end

      sig do
        override.returns(
          {
            code: String,
            title: String,
            description: String,
            meta: T::Hash[Symbol, T.anything],
            source: Telnyx::APIError::Source
          }
        )
      end
      def to_hash
      end

      class Source < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::APIError::Source, Telnyx::Internal::AnyHash)
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
