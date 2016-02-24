require 'awesome_bot'

describe AwesomeBot do
  describe "check" do
    context "given a timeout link" do
      r = AwesomeBot::check('http://www.cmr.osu.edu/browse/datasets')
      s = r.statuses_issues[0]
      expected = 'timed out'
      value = s['error'].to_s
      it "has a timeout" do
        expect(value).to include(expected)
      end
    end
  end
end