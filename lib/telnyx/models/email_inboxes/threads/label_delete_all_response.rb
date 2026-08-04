# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      module Threads
        # @see Telnyx::Resources::EmailInboxes::Threads::Labels#delete_all
        class LabelDeleteAllResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data]
          required :data, -> { Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data]

          # @see Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute labels
            #
            #   @return [Array<String>]
            required :labels, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute record_type
            #
            #   @return [Symbol, Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::RecordType]
            required :record_type,
                     enum: -> { Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::RecordType }

            # @!attribute inbox_id
            #
            #   @return [String, nil]
            optional :inbox_id, String

            # @!method initialize(id:, labels:, record_type:, inbox_id: nil)
            #   @param id [String]
            #   @param labels [Array<String>]
            #   @param record_type [Symbol, Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::RecordType]
            #   @param inbox_id [String]

            # @see Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data#record_type
            module RecordType
              extend Telnyx::Internal::Type::Enum

              EMAIL_THREAD = :email_thread

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
