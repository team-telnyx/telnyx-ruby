# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailBlocks#list
    class EmailBlock < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute reason
      #
      #   @return [Symbol, Telnyx::Models::EmailBlock::Reason]
      required :reason, enum: -> { Telnyx::EmailBlock::Reason }

      # @!attribute record_type
      #   View-only discriminator.
      #
      #   @return [Symbol, Telnyx::Models::EmailBlock::RecordType]
      required :record_type, enum: -> { Telnyx::EmailBlock::RecordType }

      # @!attribute scope
      #   Derived server-side from `domain_id`/`from`; never trusted from the caller.
      #
      #   @return [Symbol, Telnyx::Models::EmailBlock::Scope]
      required :scope, enum: -> { Telnyx::EmailBlock::Scope }

      # @!attribute source
      #
      #   @return [Symbol, Telnyx::Models::EmailBlock::Source]
      required :source, enum: -> { Telnyx::EmailBlock::Source }

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::EmailBlock::Status]
      required :status, enum: -> { Telnyx::EmailBlock::Status }

      # @!attribute to
      #   Normalized recipient. (schema: to_address)
      #
      #   @return [String]
      required :to, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute domain_id
      #   `null` ⇒ account scope. Stored on the row; exposed here.
      #
      #   @return [String, nil]
      optional :domain_id, String, nil?: true

      # @!attribute expires_at
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute from
      #   `null` ⇒ not address-scope. (schema: from_address)
      #
      #   @return [String, nil]
      optional :from, String, nil?: true

      # @!attribute group_id
      #   `null` ⇒ global; set ⇒ group-scoped opt-out.
      #
      #   @return [String, nil]
      optional :group_id, String, nil?: true

      # @!method initialize(id:, created_at:, reason:, record_type:, scope:, source:, status:, to:, updated_at:, domain_id: nil, expires_at: nil, from: nil, group_id: nil)
      #   Suppression record. Schema fields hidden by the view: `account_id`,
      #   `bounce_category`, `dsn_code`, `meta`.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param reason [Symbol, Telnyx::Models::EmailBlock::Reason]
      #
      #   @param record_type [Symbol, Telnyx::Models::EmailBlock::RecordType] View-only discriminator.
      #
      #   @param scope [Symbol, Telnyx::Models::EmailBlock::Scope] Derived server-side from `domain_id`/`from`; never trusted from the caller.
      #
      #   @param source [Symbol, Telnyx::Models::EmailBlock::Source]
      #
      #   @param status [Symbol, Telnyx::Models::EmailBlock::Status]
      #
      #   @param to [String] Normalized recipient. (schema: to_address)
      #
      #   @param updated_at [Time]
      #
      #   @param domain_id [String, nil] `null` ⇒ account scope. Stored on the row; exposed here.
      #
      #   @param expires_at [Time, nil]
      #
      #   @param from [String, nil] `null` ⇒ not address-scope. (schema: from_address)
      #
      #   @param group_id [String, nil] `null` ⇒ global; set ⇒ group-scoped opt-out.

      # @see Telnyx::Models::EmailBlock#reason
      module Reason
        extend Telnyx::Internal::Type::Enum

        HARD_BOUNCE = :hard_bounce
        SPAM_COMPLAINT = :spam_complaint
        UNSUBSCRIBE = :unsubscribe
        INVALID = :invalid
        MANUAL_BLOCK = :manual_block

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # View-only discriminator.
      #
      # @see Telnyx::Models::EmailBlock#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EMAIL_BLOCK = :email_block

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Derived server-side from `domain_id`/`from`; never trusted from the caller.
      #
      # @see Telnyx::Models::EmailBlock#scope
      module Scope
        extend Telnyx::Internal::Type::Enum

        ACCOUNT = :account
        DOMAIN = :domain
        ADDRESS = :address

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::EmailBlock#source
      module Source
        extend Telnyx::Internal::Type::Enum

        FEEDBACK = :feedback
        MANUAL = :manual
        IMPORT = :import
        SYSTEM = :system

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::EmailBlock#status
      module Status
        extend Telnyx::Internal::Type::Enum

        ACTIVE = :active
        EXPIRED = :expired
        REMOVED = :removed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
