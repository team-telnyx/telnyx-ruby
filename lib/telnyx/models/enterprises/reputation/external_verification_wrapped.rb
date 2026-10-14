# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::ExternalVerification#create
        class ExternalVerificationWrapped < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::ExternalVerificationWrapped::Data]
          required :data, -> { Telnyx::Enterprises::Reputation::ExternalVerificationWrapped::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Enterprises::Reputation::ExternalVerificationWrapped::Data]

          # @see Telnyx::Models::Enterprises::Reputation::ExternalVerificationWrapped#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute document_ids
            #   The ownership-proof documents on file.
            #
            #   @return [Array<String>, nil]
            optional :document_ids, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute enterprise_id
            #
            #   @return [String, nil]
            optional :enterprise_id, String

            # @!attribute phone_numbers
            #   The phone numbers you listed with the documents.
            #
            #   @return [Array<String>, nil]
            optional :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute rejection_reason
            #   Why the proof was rejected. Set only when `status` is `rejected`.
            #
            #   @return [String, nil]
            optional :rejection_reason, String, nil?: true

            # @!attribute status
            #   Review state of the ownership proof that allows adding phone numbers hosted with
            #   another provider.
            #
            #   @return [Symbol, Telnyx::Models::Enterprises::Reputation::ExternalVerificationStatus, nil]
            optional :status, enum: -> { Telnyx::Enterprises::Reputation::ExternalVerificationStatus }

            response_only do
              # @!attribute reviewed_at
              #
              #   @return [Time, nil]
              optional :reviewed_at, Time, nil?: true

              # @!attribute submitted_at
              #
              #   @return [Time, nil]
              optional :submitted_at, Time, nil?: true
            end

            # @!method initialize(document_ids: nil, enterprise_id: nil, phone_numbers: nil, rejection_reason: nil, reviewed_at: nil, status: nil, submitted_at: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Enterprises::Reputation::ExternalVerificationWrapped::Data} for
            #   more details.
            #
            #   @param document_ids [Array<String>] The ownership-proof documents on file.
            #
            #   @param enterprise_id [String]
            #
            #   @param phone_numbers [Array<String>] The phone numbers you listed with the documents.
            #
            #   @param rejection_reason [String, nil] Why the proof was rejected. Set only when `status` is `rejected`.
            #
            #   @param reviewed_at [Time, nil]
            #
            #   @param status [Symbol, Telnyx::Models::Enterprises::Reputation::ExternalVerificationStatus] Review state of the ownership proof that allows adding phone numbers hosted with
            #
            #   @param submitted_at [Time, nil]
          end
        end
      end
    end
  end
end
