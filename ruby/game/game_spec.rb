require_relative 'game'

describe Hangman do
  let(:game) { Hangman.new("unicorn") }

  it "stores the given word upon initialization" do
    expect(game.word).to eq "unicorn"
  end

  it "counts and stores the allowed number of guesses on initialization" do
		expect(game.allowed_guesses).to eq 7
	end

  it "stores each letter of the given word in an array" do
    expect(game.word_array).to eq ["u", "n", "i", "c", "o", "r", "n"]
  end

  it "creates guess word array with -s matching the given word" do
    expect(game.guess_array).to eq ["-", "-", "-", "-", "-", "-", "-"]
  end

  it "updates guess word array with correct guess letter" do
    game.check_word("u")
    expect(game.guess_array).to eq ["u", "-", "-", "-", "-", "-", "-"]
  end

end
