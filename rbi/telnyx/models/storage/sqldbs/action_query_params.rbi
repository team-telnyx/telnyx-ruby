# typed: strong

module Telnyx
  module Models
    module Storage
      module Sqldbs
        class ActionQueryParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Storage::Sqldbs::ActionQueryParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # The SQL to run. Use positional `?` placeholders and supply the values in
          # `params` rather than interpolating them into this string.
          sig { returns(String) }
          attr_accessor :sql

          # Positional bind parameters, in placeholder order. Each value is a string, a
          # number, a boolean, or null; booleans are cast to `1`/`0`. The count must match
          # the number of `?` placeholders exactly — a mismatch is rejected with 422 rather
          # than binding null for the ones you left out. (Not enforced for multi-statement
          # scripts or named parameters, where the placeholder count is not the number
          # bound.)
          sig do
            returns(
              T.nilable(
                T::Array[
                  T.nilable(
                    Telnyx::Storage::Sqldbs::ActionQueryParams::Param::Variants
                  )
                ]
              )
            )
          end
          attr_reader :params

          sig do
            params(
              params:
                T::Array[
                  T.nilable(
                    Telnyx::Storage::Sqldbs::ActionQueryParams::Param::Variants
                  )
                ]
            ).void
          end
          attr_writer :params

          sig do
            params(
              id: String,
              sql: String,
              params:
                T::Array[
                  T.nilable(
                    Telnyx::Storage::Sqldbs::ActionQueryParams::Param::Variants
                  )
                ],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The SQL to run. Use positional `?` placeholders and supply the values in
            # `params` rather than interpolating them into this string.
            sql:,
            # Positional bind parameters, in placeholder order. Each value is a string, a
            # number, a boolean, or null; booleans are cast to `1`/`0`. The count must match
            # the number of `?` placeholders exactly — a mismatch is rejected with 422 rather
            # than binding null for the ones you left out. (Not enforced for multi-statement
            # scripts or named parameters, where the placeholder count is not the number
            # bound.)
            params: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                sql: String,
                params:
                  T::Array[
                    T.nilable(
                      Telnyx::Storage::Sqldbs::ActionQueryParams::Param::Variants
                    )
                  ],
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Param
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias { T.nilable(T.any(String, Float, T::Boolean)) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::Storage::Sqldbs::ActionQueryParams::Param::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
