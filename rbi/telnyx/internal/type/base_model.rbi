# typed: strong

module Telnyx
  module Internal
    module Type
      class BaseModel
        extend Telnyx::Internal::Type::Converter
        extend Telnyx::Internal::Util::SorbetRuntimeSupport

        abstract!

        KnownField =
          T.type_alias do
            {
              mode: T.nilable(Symbol),
              required: T::Boolean,
              nilable: T::Boolean
            }
          end

        OrHash =
          T.type_alias do
            T.any(Telnyx::Internal::Type::BaseModel, Telnyx::Internal::AnyHash)
          end

        class << self
          # @api private
          #
          # Assumes superclass fields are totally defined before fields are accessed /
          # defined on subclasses.
          sig { params(child: T.self_type).void }
          def inherited(child)
          end

          # @api private
          sig do
            returns(
              T::Hash[
                Symbol,
                T.all(
                  Telnyx::Internal::Type::BaseModel::KnownField,
                  {
                    type_fn:
                      T.proc.returns(Telnyx::Internal::Type::Converter::Input)
                  }
                )
              ]
            )
          end
          def known_fields
          end

          # @api private
          sig do
            returns(
              T::Hash[
                Symbol,
                T.all(
                  Telnyx::Internal::Type::BaseModel::KnownField,
                  { type: Telnyx::Internal::Type::Converter::Input }
                )
              ]
            )
          end
          def fields
          end

          # @api private
          sig do
            params(
              name_sym: Symbol,
              required: T::Boolean,
              type_info:
                T.any(
                  {
                    const:
                      T.nilable(
                        T.any(NilClass, T::Boolean, Integer, Float, Symbol)
                      ),
                    enum:
                      T.nilable(
                        T.proc.returns(Telnyx::Internal::Type::Converter::Input)
                      ),
                    union:
                      T.nilable(
                        T.proc.returns(Telnyx::Internal::Type::Converter::Input)
                      ),
                    api_name: Symbol,
                    nil?: T::Boolean
                  },
                  T.proc.returns(Telnyx::Internal::Type::Converter::Input),
                  Telnyx::Internal::Type::Converter::Input
                ),
              spec: Telnyx::Internal::AnyHash
            ).void
          end
          private def add_field(name_sym, required:, type_info:, spec:)
          end

          # @api private
          sig do
            params(
              name_sym: Symbol,
              type_info:
                T.any(
                  Telnyx::Internal::AnyHash,
                  T.proc.returns(Telnyx::Internal::Type::Converter::Input),
                  Telnyx::Internal::Type::Converter::Input
                ),
              spec: Telnyx::Internal::AnyHash
            ).void
          end
          def required(name_sym, type_info, spec = {})
          end

          # @api private
          sig do
            params(
              name_sym: Symbol,
              type_info:
                T.any(
                  Telnyx::Internal::AnyHash,
                  T.proc.returns(Telnyx::Internal::Type::Converter::Input),
                  Telnyx::Internal::Type::Converter::Input
                ),
              spec: Telnyx::Internal::AnyHash
            ).void
          end
          def optional(name_sym, type_info, spec = {})
          end

          # @api private
          #
          # `request_only` attributes not excluded from `.#coerce` when receiving responses
          # even if well behaved servers should not send them
          sig { params(blk: T.proc.void).void }
          private def request_only(&blk)
          end

          # @api private
          #
          # `response_only` attributes are omitted from `.#dump` when making requests
          sig { params(blk: T.proc.void).void }
          private def response_only(&blk)
          end

          sig { params(other: T.anything).returns(T::Boolean) }
          def ==(other)
          end

          sig { returns(Integer) }
          def hash
          end
        end

        sig { params(other: T.anything).returns(T::Boolean) }
        def ==(other)
        end

        sig { returns(Integer) }
        def hash
        end

        class << self
          # @api private
          sig do
            override
              .params(
                value:
                  T.any(
                    Telnyx::Internal::Type::BaseModel,
                    T::Hash[T.anything, T.anything],
                    T.anything
                  ),
                state: Telnyx::Internal::Type::Converter::CoerceState
              )
              .returns(T.any(T.attached_class, T.anything))
          end
          def coerce(value, state:)
          end

          # @api private
          sig do
            override
              .params(
                value: T.any(T.attached_class, T.anything),
                state: Telnyx::Internal::Type::Converter::DumpState
              )
              .returns(T.any(T::Hash[T.anything, T.anything], T.anything))
          end
          def dump(value, state:)
          end

          # @api private
          sig { returns(T.anything) }
          def to_sorbet_type
          end
        end

        class << self
          # @api private
          sig do
            params(
              model: Telnyx::Internal::Type::BaseModel,
              convert: T::Boolean
            ).returns(Telnyx::Internal::AnyHash)
          end
          def recursively_to_h(model, convert:)
          end
        end

        # Returns the raw value associated with the given key, if found. Otherwise, nil is
        # returned.
        #
        # It is valid to lookup keys that are not in the API spec, for example to access
        # undocumented features. This method does not parse response data into
        # higher-level types. Lookup by anything other than a Symbol is an ArgumentError.
        sig { params(key: Symbol).returns(T.nilable(T.anything)) }
        def [](key)
        end

        # Returns a Hash of the data underlying this object. O(1)
        #
        # Keys are Symbols and values are the raw values from the response. The return
        # value indicates which values were ever set on the object. i.e. there will be a
        # key in this hash if they ever were, even if the set value was nil.
        #
        # This method is not recursive. The returned value is shared by the object, so it
        # should not be mutated.
        sig { overridable.returns(Telnyx::Internal::AnyHash) }
        def to_h
        end

        # Returns a Hash of the data underlying this object. O(1)
        #
        # Keys are Symbols and values are the raw values from the response. The return
        # value indicates which values were ever set on the object. i.e. there will be a
        # key in this hash if they ever were, even if the set value was nil.
        #
        # This method is not recursive. The returned value is shared by the object, so it
        # should not be mutated.
        sig { overridable.returns(Telnyx::Internal::AnyHash) }
        def to_hash
        end

        # In addition to the behaviour of `#to_h`, this method will recursively call
        # `#to_h` on nested models.
        sig { overridable.returns(Telnyx::Internal::AnyHash) }
        def deep_to_h
        end

        sig do
          params(keys: T.nilable(T::Array[Symbol])).returns(
            Telnyx::Internal::AnyHash
          )
        end
        def deconstruct_keys(keys)
        end

        sig { params(a: T.anything).returns(String) }
        def to_json(*a)
        end

        sig { params(a: T.anything).returns(String) }
        def to_yaml(*a)
        end

        # Create a new instance of a model.
        sig do
          params(data: T.any(T::Hash[Symbol, T.anything], T.self_type)).returns(
            T.attached_class
          )
        end
        def self.new(data = {})
        end

        class << self
          # @api private
          sig { params(depth: Integer).returns(String) }
          def inspect(depth: 0)
          end
        end

        sig { returns(String) }
        def to_s
        end

        # @api private
        sig { returns(String) }
        def inspect
        end
      end
    end
  end
end
