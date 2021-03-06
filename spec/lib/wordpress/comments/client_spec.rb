module Wordpress
	module Comments
		class Client
			attr_reader :url

			def initialize url

				@url = url
			end
		end
	end
end

describe Wordpress::Comments::Client do
	it "stores a URL" do
		client = Wordpress::Comments::Client.new 'http://mashable.com/commets/feed'
		expect(client.url).to eq 'http://mashable.com/commets/feed'
	end
end