RSpec.describe Gatleon::Params2 do
  let(:query_parameters) do
    {
      "action" => "hi",
      "controller" => "hi2",
      "subdomain" => "hi3"
    }
  end

  let(:post_parameters) do
    {
      "action" => "hello",
      "controller" => "hello2",
      "subdomain" => "hello3"
    }
  end
  
    class DummyClass
    include Gatleon::Params2

  end

  let(:request) { double("request", query_parameters: {}, request_parameters: {}) }

  let(:service) { DummyClass.new }

  before do
    allow(service).to receive(:request).and_return(request)
  end

  context "get params only" do
    let(:request) { double("request", query_parameters: query_parameters, request_parameters: {}) }

    it "returns those" do
      r = service.params2

      expect(r["action"]).to eql("hi")
      expect(r[:action]).to eql("hi")
      expect(r["controller"]).to eql("hi2")
      expect(r["subdomain"]).to eql("hi3")
    end
  end

  context "post params only" do
    let(:request) { double("request", query_parameters: {}, request_parameters: post_parameters) }

    it "returns those" do
      r = service.params2

      expect(r["action"]).to eql("hello")
      expect(r[:action]).to eql("hello")
      expect(r["controller"]).to eql("hello2")
      expect(r["subdomain"]).to eql("hello3")
    end
  end

  context "get and post params only" do
    let(:request) { double("request", query_parameters: query_parameters, request_parameters: post_parameters) }

    it "posts override" do
      r = service.params2

      expect(r["action"]).to eql("hi")
      expect(r[:action]).to eql("hi")
      expect(r["controller"]).to eql("hi2")
      expect(r["subdomain"]).to eql("hi3")
    end
  end
end
