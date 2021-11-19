require "docking_station"
require "bike"

describe DockingStation do
    it { is_expected.to respond_to :release_bike }
    it 'releases working bikes' do
        bike = subject.release_bike
        expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bikes) }

    describe '#release_bike' do

        it "raise error when docking_station.release_bike is empty" do
            DockingStation::DEFAULT_CAPACITY.times {subject.release_bike}
            expect { subject.release_bike }.to raise_error "Docking station empty!"
        end
        it "raise error when docking_station is full" do
            expect {subject.dock(Bike.new)}.to raise_error "Docking station full"
        end
    
        it 'releases a bike from bikes array' do
            expect(subject.release_bike).to be_instance_of Bike
            expect(subject.bikes.length).to eq 19
        end
    end
end