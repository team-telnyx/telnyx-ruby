# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Sqldbs#list
      class SqlDatabase < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute status
        #   Provisioning status. A database is usable once `status` is `provision_ok`. Once
        #   deletion completes, the database no longer appears in the API.
        #
        #   @return [Symbol, Telnyx::Models::Storage::SqlDatabase::Status, nil]
        optional :status, enum: -> { Telnyx::Storage::SqlDatabase::Status }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id: nil, created_at: nil, name: nil, record_type: nil, status: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::SqlDatabase} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param name [String]
        #
        #   @param record_type [String]
        #
        #   @param status [Symbol, Telnyx::Models::Storage::SqlDatabase::Status] Provisioning status. A database is usable once `status` is `provision_ok`. Once
        #
        #   @param updated_at [Time]

        # Provisioning status. A database is usable once `status` is `provision_ok`. Once
        # deletion completes, the database no longer appears in the API.
        #
        # @see Telnyx::Models::Storage::SqlDatabase#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          PROVISION_OK = :provision_ok
          PROVISION_FAILED = :provision_failed
          DELETING = :deleting
          DELETE_FAILED = :delete_failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
