require('rspec')
require('parcel')

describe(Parcel) do
  describe("#parcel") do
    it('will return the volume of the parcel') do
      test_parcel = Parcel.new(2, 2, 2)
      expect(test_parcel.volume()).to(eq(8))
    end
  end
  
end
