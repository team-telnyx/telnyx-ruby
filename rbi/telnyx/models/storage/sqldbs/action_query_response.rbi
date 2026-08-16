# typed: strong

module Telnyx
  module Models
    module Storage
      module Sqldbs
        class ActionQueryResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Storage::Sqldbs::ActionQueryResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              {
                data: Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # Number of rows returned.
            sig { returns(T.nilable(Integer)) }
            attr_reader :count

            sig { params(count: Integer).void }
            attr_writer :count

            # Wall-clock duration of the request, in milliseconds.
            sig { returns(T.nilable(Float)) }
            attr_reader :duration

            sig { params(duration: Float).void }
            attr_writer :duration

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data::Meta
                )
              )
            end
            attr_reader :meta

            sig do
              params(
                meta:
                  Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data::Meta::OrHash
              ).void
            end
            attr_writer :meta

            # The result rows, each a map of column name to value. Empty for statements that
            # return no rows.
            sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
            attr_reader :results

            sig { params(results: T::Array[T::Hash[Symbol, T.anything]]).void }
            attr_writer :results

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :success

            sig { params(success: T::Boolean).void }
            attr_writer :success

            sig do
              params(
                count: Integer,
                duration: Float,
                meta:
                  Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data::Meta::OrHash,
                results: T::Array[T::Hash[Symbol, T.anything]],
                success: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # Number of rows returned.
              count: nil,
              # Wall-clock duration of the request, in milliseconds.
              duration: nil,
              meta: nil,
              # The result rows, each a map of column name to value. Empty for statements that
              # return no rows.
              results: nil,
              success: nil
            )
            end

            sig do
              override.returns(
                {
                  count: Integer,
                  duration: Float,
                  meta:
                    Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data::Meta,
                  results: T::Array[T::Hash[Symbol, T.anything]],
                  success: T::Boolean
                }
              )
            end
            def to_hash
            end

            class Meta < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data::Meta,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Number of rows added, changed, or removed by the statement.
              sig { returns(T.nilable(Integer)) }
              attr_reader :changes

              sig { params(changes: Integer).void }
              attr_writer :changes

              # Wall-clock duration of the statement, in milliseconds.
              sig { returns(T.nilable(Float)) }
              attr_reader :duration

              sig { params(duration: Float).void }
              attr_writer :duration

              # Rowid of the last inserted row, when applicable.
              sig { returns(T.nilable(Integer)) }
              attr_reader :last_row_id

              sig { params(last_row_id: Integer).void }
              attr_writer :last_row_id

              sig { returns(T.nilable(Integer)) }
              attr_reader :rows_read

              sig { params(rows_read: Integer).void }
              attr_writer :rows_read

              sig { returns(T.nilable(Integer)) }
              attr_reader :rows_written

              sig { params(rows_written: Integer).void }
              attr_writer :rows_written

              sig do
                params(
                  changes: Integer,
                  duration: Float,
                  last_row_id: Integer,
                  rows_read: Integer,
                  rows_written: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # Number of rows added, changed, or removed by the statement.
                changes: nil,
                # Wall-clock duration of the statement, in milliseconds.
                duration: nil,
                # Rowid of the last inserted row, when applicable.
                last_row_id: nil,
                rows_read: nil,
                rows_written: nil
              )
              end

              sig do
                override.returns(
                  {
                    changes: Integer,
                    duration: Float,
                    last_row_id: Integer,
                    rows_read: Integer,
                    rows_written: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
