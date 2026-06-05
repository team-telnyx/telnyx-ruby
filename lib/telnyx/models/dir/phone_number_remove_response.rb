# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumbers#remove
      class PhoneNumberRemoveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Phone numbers that were successfully soft-deleted. Bare E.164 strings.
        #
        #   @return [Array<String>]
        required :data, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta]
        required :meta, -> { Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta }

        # @!method initialize(data:, meta:)
        #   Bulk-delete partial-success response. `data` is the list of phone numbers that
        #   were soft-deleted. `meta.errors` holds per-number failures (e.g. number not
        #   associated with this DIR). When EVERY number in the request fails, the endpoint
        #   instead returns 400 with the canonical Telnyx error envelope and `data`/`meta`
        #   are absent.
        #
        #   @param data [Array<String>] Phone numbers that were successfully soft-deleted. Bare E.164 strings.
        #
        #   @param meta [Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta]

        # @see Telnyx::Models::Dir::PhoneNumberRemoveResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute errors
          #   Per-number failures that did not block the call. Each entry has `phone_number`,
          #   `code`, `title`, `detail`.
          #
          #   @return [Array<Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta::Error>]
          required :errors,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta::Error] }

          # @!method initialize(errors:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta} for more details.
          #
          #   @param errors [Array<Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta::Error>] Per-number failures that did not block the call. Each entry has `phone_number`,

          class Error < Telnyx::Internal::Type::BaseModel
            # @!attribute code
            #   Stable per-number error code. Currently only `not_associated` is emitted, when
            #   the number is not attached to this DIR.
            #
            #   @return [Symbol, Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta::Error::Code]
            required :code, enum: -> { Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta::Error::Code }

            # @!attribute detail
            #
            #   @return [String]
            required :detail, String

            # @!attribute phone_number
            #
            #   @return [String]
            required :phone_number, String

            # @!attribute title
            #
            #   @return [String]
            required :title, String

            # @!method initialize(code:, detail:, phone_number:, title:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta::Error} for more details.
            #
            #   Per-number error returned by the bulk-delete endpoint. Bulk-add does not use
            #   this shape — it returns a 400 with the canonical envelope grouping numbers by
            #   failure category.
            #
            #   @param code [Symbol, Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta::Error::Code] Stable per-number error code. Currently only `not_associated` is emitted, when t
            #
            #   @param detail [String]
            #
            #   @param phone_number [String]
            #
            #   @param title [String]

            # Stable per-number error code. Currently only `not_associated` is emitted, when
            # the number is not attached to this DIR.
            #
            # @see Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta::Error#code
            module Code
              extend Telnyx::Internal::Type::Enum

              NOT_ASSOCIATED = :not_associated

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
