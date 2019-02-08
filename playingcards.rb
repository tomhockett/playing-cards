class PlayingCards
  # Frozen constants to make Rubocop happy
  SUITS = %w[clubs diamonds hearts spades].freeze
  RANKS = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze

  # Card::Deck.cards is available to call.
  class Deck
    attr_reader :cards
    # Card::Deck.new | num = (the number of decks you want to shuffle)
    def initialize(num = 1)
      @cards = []
      SUITS.cycle(num) do |s|
        RANKS.cycle(1) do |r|
          @cards << { suit: s, rank: r }
        end
      end
    end

    def shuffle
      @cards.shuffle!
    end

    def deal(num = 1)
      @cards.shift(num)
    end

    def add_to_bottom(card)
      @cards << card
    end

    def add_to_top(card)
      @cards.unshift(card)
    end

    def count
      @cards.count
    end

    def empty?
      @cards.empty?
    end
  end
end
