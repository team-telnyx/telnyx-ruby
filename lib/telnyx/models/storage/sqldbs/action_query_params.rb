# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Sqldbs
        # @see Telnyx::Resources::Storage::Sqldbs::Actions#query
        class ActionQueryParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute sql
          #   The SQL to run. Use positional `?` placeholders and supply the values in
          #   `params` rather than interpolating them into this string.
          #
          #   @return [String]
          required :sql, String

          # @!attribute params
          #   Positional bind parameters, in placeholder order. Each value is a string, a
          #   number, a boolean, or null; booleans are cast to `1`/`0`. The count must match
          #   the number of `?` placeholders exactly — a mismatch is rejected with 422 rather
          #   than binding null for the ones you left out. (Not enforced for multi-statement
          #   scripts or named parameters, where the placeholder count is not the number
          #   bound.)
          #
          #   @return [Array<String, Float, Boolean, nil>, nil]
          optional :params,
                   -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Storage::Sqldbs::ActionQueryParams::Param, nil?: true] }

          # @!method initialize(id:, sql:, params: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Storage::Sqldbs::ActionQueryParams} for more details.
          #
          #   @param id [String]
          #
          #   @param sql [String] The SQL to run. Use positional `?` placeholders and supply the values in `params
          #
          #   @param params [Array<String, Float, Boolean, nil>] Positional bind parameters, in placeholder order. Each value is a string, a numb
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          module Param
            extend Telnyx::Internal::Type::Union

            variant String

            variant Float

            variant Telnyx::Internal::Type::Boolean

            # @!method self.variants
            #   @return [Array(String, Float, Boolean)]
          end
        end
      end
    end
  end
end
