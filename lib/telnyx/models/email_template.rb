# frozen_string_literal: true

module Telnyx
  module Models
    class EmailTemplate < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute html_body
      #
      #   @return [String, nil]
      required :html_body, String, nil?: true

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::EmailTemplate::RecordType]
      required :record_type, enum: -> { Telnyx::EmailTemplate::RecordType }

      # @!attribute subject
      #
      #   @return [String, nil]
      required :subject, String, nil?: true

      # @!attribute text_body
      #
      #   @return [String, nil]
      required :text_body, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute variables
      #
      #   @return [Array<String>]
      required :variables, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(id:, created_at:, html_body:, name:, record_type:, subject:, text_body:, updated_at:, variables:)
      #   @param id [String]
      #   @param created_at [Time]
      #   @param html_body [String, nil]
      #   @param name [String]
      #   @param record_type [Symbol, Telnyx::Models::EmailTemplate::RecordType]
      #   @param subject [String, nil]
      #   @param text_body [String, nil]
      #   @param updated_at [Time]
      #   @param variables [Array<String>]

      # @see Telnyx::Models::EmailTemplate#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EMAIL_TEMPLATE = :email_template

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
