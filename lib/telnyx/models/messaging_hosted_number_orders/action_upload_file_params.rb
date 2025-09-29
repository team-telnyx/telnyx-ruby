# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingHostedNumberOrders
      # @see Telnyx::Resources::MessagingHostedNumberOrders::Actions#upload_file
      class ActionUploadFileParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute bill
        #   Must be the last month's bill with proof of ownership of all of the numbers in
        #   the order in PDF format.
        #
        #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart, nil]
        optional :bill, Telnyx::Internal::Type::FileInput

        # @!attribute loa
        #   Must be a signed LOA for the numbers in the order in PDF format.
        #
        #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart, nil]
        optional :loa, Telnyx::Internal::Type::FileInput

        # @!method initialize(bill: nil, loa: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MessagingHostedNumberOrders::ActionUploadFileParams} for more
        #   details.
        #
        #   @param bill [Pathname, StringIO, IO, String, Telnyx::FilePart] Must be the last month's bill with proof of ownership of all of the numbers in t
        #
        #   @param loa [Pathname, StringIO, IO, String, Telnyx::FilePart] Must be a signed LOA for the numbers in the order in PDF format.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
