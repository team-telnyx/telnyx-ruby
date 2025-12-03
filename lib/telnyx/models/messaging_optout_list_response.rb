# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingOptouts#list
    class MessagingOptoutListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MessagingOptoutListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingOptoutListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::MessagingOptoutListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #   The timestamp when the opt-out was created
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute from
        #   Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        #   code).
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute keyword
        #   The keyword that triggered the opt-out.
        #
        #   @return [String, nil]
        optional :keyword, String, nil?: true

        # @!attribute messaging_profile_id
        #   Unique identifier for a messaging profile.
        #
        #   @return [String, nil]
        optional :messaging_profile_id, String, nil?: true

        # @!attribute to
        #   Receiving address (+E.164 formatted phone number or short code).
        #
        #   @return [String, nil]
        optional :to, String

        # @!method initialize(created_at: nil, from: nil, keyword: nil, messaging_profile_id: nil, to: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MessagingOptoutListResponse::Data} for more details.
        #
        #   @param created_at [Time] The timestamp when the opt-out was created
        #
        #   @param from [String] Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        #
        #   @param keyword [String, nil] The keyword that triggered the opt-out.
        #
        #   @param messaging_profile_id [String, nil] Unique identifier for a messaging profile.
        #
        #   @param to [String] Receiving address (+E.164 formatted phone number or short code).
      end
    end
  end
end
