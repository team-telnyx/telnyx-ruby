# typed: strong

module Telnyx
  module Resources
    class Storage
      class Sqldbs
        # Manage SQL databases and run SQL against them
        class Actions
          # Runs SQL against the database and returns the resulting rows — empty for
          # statements that return none, such as DDL. Bind positional `?` placeholders with
          # `params` rather than interpolating values into the SQL string.
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
            ).returns(Telnyx::Models::Storage::Sqldbs::ActionQueryResponse)
          end
          def query(
            # SQL database ID
            id,
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

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
