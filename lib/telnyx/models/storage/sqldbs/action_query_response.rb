# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Sqldbs
        # @see Telnyx::Resources::Storage::Sqldbs::Actions#query
        class ActionQueryResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data, nil]
          optional :data, -> { Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data]

          # @see Telnyx::Models::Storage::Sqldbs::ActionQueryResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute count
            #   Number of rows returned.
            #
            #   @return [Integer, nil]
            optional :count, Integer

            # @!attribute duration
            #   Wall-clock duration of the request, in milliseconds.
            #
            #   @return [Float, nil]
            optional :duration, Float

            # @!attribute meta
            #
            #   @return [Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data::Meta, nil]
            optional :meta, -> { Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data::Meta }

            # @!attribute results
            #   The result rows, each a map of column name to value. Empty for statements that
            #   return no rows.
            #
            #   @return [Array<Hash{Symbol=>Object}>, nil]
            optional :results,
                     Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

            # @!attribute success
            #
            #   @return [Boolean, nil]
            optional :success, Telnyx::Internal::Type::Boolean

            # @!method initialize(count: nil, duration: nil, meta: nil, results: nil, success: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data} for more details.
            #
            #   @param count [Integer] Number of rows returned.
            #
            #   @param duration [Float] Wall-clock duration of the request, in milliseconds.
            #
            #   @param meta [Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data::Meta]
            #
            #   @param results [Array<Hash{Symbol=>Object}>] The result rows, each a map of column name to value. Empty for statements that r
            #
            #   @param success [Boolean]

            # @see Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data#meta
            class Meta < Telnyx::Internal::Type::BaseModel
              # @!attribute changes
              #   Number of rows added, changed, or removed by the statement.
              #
              #   @return [Integer, nil]
              optional :changes, Integer

              # @!attribute duration
              #   Wall-clock duration of the statement, in milliseconds.
              #
              #   @return [Float, nil]
              optional :duration, Float

              # @!attribute last_row_id
              #   Rowid of the last inserted row, when applicable.
              #
              #   @return [Integer, nil]
              optional :last_row_id, Integer

              # @!attribute rows_read
              #
              #   @return [Integer, nil]
              optional :rows_read, Integer

              # @!attribute rows_written
              #
              #   @return [Integer, nil]
              optional :rows_written, Integer

              # @!method initialize(changes: nil, duration: nil, last_row_id: nil, rows_read: nil, rows_written: nil)
              #   @param changes [Integer] Number of rows added, changed, or removed by the statement.
              #
              #   @param duration [Float] Wall-clock duration of the statement, in milliseconds.
              #
              #   @param last_row_id [Integer] Rowid of the last inserted row, when applicable.
              #
              #   @param rows_read [Integer]
              #
              #   @param rows_written [Integer]
            end
          end
        end
      end
    end
  end
end
