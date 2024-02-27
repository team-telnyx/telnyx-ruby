# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class EmbeddingTest < Test::Unit::TestCase
    setup do
      @embedding = Embedding.create(bucket_name: "Foo")
      @task_id = @embedding[:data][:task_id].freeze
    end

    should "be creatable" do
      assert_requested :post, "#{Telnyx.api_base}/v2/ai/embeddings"
    end

    should "be lists of buckets" do
      buckets = Embedding.buckets
      assert buckets.is_a?(TelnyxObject)
      assert buckets[:data][:buckets].is_a?(Array)
    end

    should "be retrievable task" do
      Embedding.retrieve(@task_id)
      assert_requested :get, "#{Telnyx.api_base}/v2/ai/embeddings/#{@task_id}"
    end
  end
end
