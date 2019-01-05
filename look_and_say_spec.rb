require './look_and_say'

RSpec.describe LookAndSaySequence do
  describe 'generated sequence' do
    sequence = [ [1], [1,1], [2,1], [1,2,1,1], [1,1,1,2,2,1], [3,1,2,2,1,1] ]

    5.times do |i|
      it 'should generate next sequence' do
        lks = LookAndSaySequence.new(1, sequence[i])
        expect(lks.generate).to eq(sequence[i + 1])
      end
    end
  end
end

