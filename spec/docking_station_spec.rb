require "docking_station"
require "bike"

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it 'expect bikes to be working' do
    bike = Bike.new
    expect(bike.working?).to eq true
    end

    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike) }

    it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
    end

    describe '#release_bike' do
        it 'releases a bike' do
            bike = Bike.new
            subject.dock(bike)
            expect(subject.release_bike).to eq bike
        end
    end

    describe '#release_bike' do
        it 'should not release a bike when none are available' do
            expect { subject.release_bike }.to raise_error 'No bikes available'
        end
    end
end