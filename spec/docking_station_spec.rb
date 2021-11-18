require "docking_station"
require "bike"

describe DockingStation do
    it { is_expected.to respond_to :release_bike }
    it 'releases working bikes' do
        bike = Bike.new
        subject.dock(bike)
        bike = subject.release_bike
        expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike) }

    describe '#release_bike' do

        it "returns docked bike" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
        end

        it "raise error when docking_station.release_bike is empty" do
            expect { subject.release_bike }.to raise_error "Docking station empty!"
        end
        it "raise error when docking_station is full" do
            bike = Bike.new
            subject.dock(bike)
            bike2 = Bike.new
            expect {subject.dock(bike2)}.to raise_error "Docking station full"
        end
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