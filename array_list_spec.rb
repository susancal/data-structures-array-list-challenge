require_relative 'array_list'

describe ArrayList do
  let(:al) { ArrayList.new(4) }
  it "is an array" do
    expect(al.arr).to eq([nil, nil, nil, nil])
  end

  it "has a length" do
    expect(al.length).to eq 4
  end

   it "throws an error if you try to set an index out of bounds" do
    expect{al.set(8, "whoa there")}.to raise_error(ArrayList::OutOfBoundException, "You cant do that")
  end

  it "grows when you add a new object" do
    al.add("added!")
    expect(al.arr).to eq([nil,nil,nil,nil,"added!"])
  end

  it "gets object at selected index" do
    expect(al.get(0)).to eq nil
  end

  it "returns when you set" do
    expect(al.set(3,"change")).to eq "change"
  end

  it "throws an error if you try to get an index out of bounds" do
    expect{al.get(8)}.to raise_error(ArrayList::OutOfBoundException, "You cant do that")
  end









end
