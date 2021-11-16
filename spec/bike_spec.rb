require "bike"
describe Bike do
    it "expect bike to respond to :working?" do
        expect(subject).to respond_to :working?
    end
end