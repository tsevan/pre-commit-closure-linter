require 'minitest_helper'
require 'plugins/pre_commit/checks/closure_linter'

describe PreCommit::Checks::ClosureLinter do
  let(:config) do
    mock = MiniTest::Mock.new
    mock.expect(:get, '', ['closure_linter.config'])
    mock
  end

  let(:check){ PreCommit::Checks::ClosureLinter.new(nil, config, []) }

  it "succeeds if nothing changed" do
    check.call([]).must_equal nil
  end

  it "succeeds if only good changes" do
    check.call([fixture_file('valid_file.js')]).must_equal nil
  end

  it "fails if file contains debugger" do
    text = "Line 2, E:0010: Missing semicolon at end of line\nFound 2 errors"
    check.call([fixture_file('bad_closure.js')]).must_include text
  end

  describe 'configuration' do
    it 'finds errors without config' do
      text = "Line 1, E:0110: Line too long"
      check.call([fixture_file('longlined_file.js')]).must_include text
    end

    it "applies config file" do
      File.open(".gjslintrc", "w") do |file|
        file.write <<-CONFIG
--max_line_length=120
CONFIG
      end
      check.call([fixture_file('longlined_file.js')]).must_equal nil
      FileUtils.rm('.gjslintrc')
    end
  end
end
