# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        # @see Telnyx::Resources::AI::Memory::Namespaces#retrieve
        class NamespaceRetrieveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data]
          required :data, -> { Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data]

          # @see Telnyx::Models::AI::Memory::NamespaceRetrieveResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute operation_id
            #
            #   @return [String]
            required :operation_id, String

            # @!attribute status
            #   Where the write is. `completed`, `failed` and `cancelled` are terminal: stop
            #   polling at any of them, and treat `failed` and `cancelled` as writes that did
            #   not happen.
            #
            #   @return [Symbol, Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status]
            required :status, enum: -> { Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status }

            # @!attribute completed_at
            #
            #   @return [String, nil]
            optional :completed_at, String, nil?: true

            # @!attribute created_at
            #
            #   @return [String, nil]
            optional :created_at, String, nil?: true

            # @!method initialize(operation_id:, status:, completed_at: nil, created_at: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data} for more details.
            #
            #   @param operation_id [String]
            #
            #   @param status [Symbol, Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status] Where the write is. `completed`, `failed` and `cancelled` are terminal: stop pol
            #
            #   @param completed_at [String, nil]
            #
            #   @param created_at [String, nil]

            # Where the write is. `completed`, `failed` and `cancelled` are terminal: stop
            # polling at any of them, and treat `failed` and `cancelled` as writes that did
            # not happen.
            #
            # @see Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data#status
            module Status
              extend Telnyx::Internal::Type::Enum

              PENDING = :pending
              PROCESSING = :processing
              COMPLETED = :completed
              FAILED = :failed
              CANCELLED = :cancelled

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
