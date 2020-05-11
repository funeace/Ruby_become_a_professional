require './lib/gate'
require './lib/ticket'

describe "改札機プログラム" do
  let(:umeda){Gate.new(:umeda)}
  let(:juso){Gate.new(:juso)}
  let(:mikuni){Gate.new(:mikuni)}

  it "umeda to juso" do
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    expect(juso.exit(ticket)).to be_truthy
  end

  it "umeda to mikuni when fare is not enough" do
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    expect(mikuni.exit(ticket)).to be_falsey
  end

  it "umeda to mikuni when fare is enough" do
    ticket = Ticket.new(190)
    umeda.enter(ticket)
    expect(mikuni.exit(ticket)).to be_truthy
  end

  it "juso to mikuni" do
    ticket = Ticket.new(150)
    juso.enter(ticket)
    expect(mikuni.exit(ticket)).to be_truthy
  end
end
