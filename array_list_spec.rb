require_relative 'array_list'

describe ArrayList do
  let(:al) { ArrayList.new(4) }
  before(:each) do
    al.set(0, 1)
    al.set(1, 2)
    al.set(2, 3)
    al.set(3, 4)
  end
  it "is an array" do
    expect(al.arr).to eq([1,2,3,4])
  end

  it "has a length" do
    expect(al.length).to eq 4
  end

   it "throws an error if you try to set an index out of bounds" do
    expect{al.set(8, "whoa there")}.to raise_error(ArrayList::OutOfBoundException, "You cant do that")
  end

  it "grows when you add a new object" do
    al.add("added!")
    expect(al.arr).to eq([1,2,3,4,"added!"])
  end

  it "gets object at selected index" do
    expect(al.get(0)).to eq 1
  end

  it "returns when you set" do
    expect(al.set(3,"change")).to eq "change"
  end

  it "throws an error if you try to get an index out of bounds" do
    expect{al.get(8)}.to raise_error(ArrayList::OutOfBoundException, "You cant do that")
  end

  it "inserts an object into the middle of an array" do
    al.insert(0, "insert")
    expect(al.arr).to eq(["insert", 1, 2,3,4])
  end

    it "throws an error when you try to insert out of bounds" do
    expect{al.insert(44, "insert")}.to raise_error(ArrayList::OutOfBoundException, "You cant do that")
  end









end
