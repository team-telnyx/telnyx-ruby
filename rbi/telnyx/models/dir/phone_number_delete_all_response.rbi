# typed: strong

module Telnyx
  module Models
    module Dir
      class PhoneNumberDeleteAllResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Dir::PhoneNumberDeleteAllResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Phone numbers that were successfully soft-deleted. Bare E.164 strings.
        sig { returns(T::Array[String]) }
        attr_accessor :data

        sig { returns(Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta) }
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        # Bulk-delete partial-success response. `data` is the list of phone numbers that
        # were soft-deleted. `meta.errors` holds per-number failures (e.g. number not
        # associated with this DIR). When EVERY number in the request fails, the endpoint
        # instead returns 400 with the canonical Telnyx error envelope and `data`/`meta`
        # are absent.
        sig do
          params(
            data: T::Array[String],
            meta:
              Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Phone numbers that were successfully soft-deleted. Bare E.164 strings.
          data:,
          meta:
        )
        end

        sig do
          override.returns(
            {
              data: T::Array[String],
              meta: Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta
            }
          )
        end
        def to_hash
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          # Per-number failures that did not block the call. Each entry has `phone_number`,
          # `code`, `title`, `detail`.
          sig do
            returns(
              T::Array[
                Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::Error
              ]
            )
          end
          attr_accessor :errors

          sig do
            params(
              errors:
                T::Array[
                  Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::Error::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Per-number failures that did not block the call. Each entry has `phone_number`,
            # `code`, `title`, `detail`.
            errors:
          )
          end

          sig do
            override.returns(
              {
                errors:
                  T::Array[
                    Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::Error
                  ]
              }
            )
          end
          def to_hash
          end

          class Error < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::Error,
                  Telnyx::Internal::AnyHash
                )
              end

            # Stable per-number error code. Currently only `not_associated` is emitted, when
            # the number is not attached to this DIR.
            sig do
              returns(
                Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::Error::Code::TaggedSymbol
              )
            end
            attr_accessor :code

            sig { returns(String) }
            attr_accessor :detail

            sig { returns(String) }
            attr_accessor :phone_number

            sig { returns(String) }
            attr_accessor :title

            # Per-number error returned by the bulk-delete endpoint. Bulk-add does not use
            # this shape - it returns a 400 with the canonical envelope grouping numbers by
            # failure category.
            sig do
              params(
                code:
                  Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::Error::Code::OrSymbol,
                detail: String,
                phone_number: String,
                title: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Stable per-number error code. Currently only `not_associated` is emitted, when
              # the number is not attached to this DIR.
              code:,
              detail:,
              phone_number:,
              title:
            )
            end

            sig do
              override.returns(
                {
                  code:
                    Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::Error::Code::TaggedSymbol,
                  detail: String,
                  phone_number: String,
                  title: String
                }
              )
            end
            def to_hash
            end

            # Stable per-number error code. Currently only `not_associated` is emitted, when
            # the number is not attached to this DIR.
            module Code
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::Error::Code
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NOT_ASSOCIATED =
                T.let(
                  :not_associated,
                  Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::Error::Code::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Dir::PhoneNumberDeleteAllResponse::Meta::Error::Code::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
