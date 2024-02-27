# frozen_string_literal: true

module Telnyx
  class Embedding < APIResource
    extend APIOperations::Create

    def self.buckets(params = {}, opts = {})
      resp, opts = request(:get, "/v2/ai/embeddings/buckets", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    OBJECT_NAME = "ai/embedding".freeze
  end
end
