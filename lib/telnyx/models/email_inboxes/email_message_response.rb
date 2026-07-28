# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Drafts#send_
      class EmailMessageResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::EmailInboxes::EmailMessage]
        required :data, -> { Telnyx::EmailInboxes::EmailMessage }

        # @!attribute suppressed
        #   Recipients removed by suppression checks when at least one recipient remains and
        #   the message is accepted.
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailMessageResponse::Suppressed>, nil]
        optional :suppressed,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailMessageResponse::Suppressed] }

        # @!method initialize(data:, suppressed: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailInboxes::EmailMessageResponse} for more details.
        #
        #   @param data [Telnyx::Models::EmailInboxes::EmailMessage]
        #
        #   @param suppressed [Array<Telnyx::Models::EmailInboxes::EmailMessageResponse::Suppressed>] Recipients removed by suppression checks when at least one recipient remains and

        class Suppressed < Telnyx::Internal::Type::BaseModel
          # @!attribute override_allowed
          #   Whether an authorized send may override this suppression.
          #
          #   @return [Boolean]
          required :override_allowed, Telnyx::Internal::Type::Boolean

          # @!attribute reason
          #   Suppression reason returned by the recipient suppression service.
          #
          #   @return [String]
          required :reason, String

          # @!attribute scope
          #   Scope at which the suppression applies.
          #
          #   @return [String]
          required :scope, String

          # @!attribute to
          #   Suppressed recipient email address.
          #
          #   @return [String]
          required :to, String

          # @!method initialize(override_allowed:, reason:, scope:, to:)
          #   @param override_allowed [Boolean] Whether an authorized send may override this suppression.
          #
          #   @param reason [String] Suppression reason returned by the recipient suppression service.
          #
          #   @param scope [String] Scope at which the suppression applies.
          #
          #   @param to [String] Suppressed recipient email address.
        end
      end
    end
  end
end
