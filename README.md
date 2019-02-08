# ♦️♥️ A Deck of Cards in Ruby ♠️♣️

## To build a new deck:

Initiate defaults to a 52-card deck.

```ruby
PlayingCards::Deck.new # -> deck of 52 cards
```

But you can build multiple decks.

```ruby
PlayingCards::Deck.new(2) # -> deck of 104 cards
```

## Methods available:

```ruby
new_deck = PlayingCards::Deck.new
new_deck.shuffle
new_deck.deal(5) # -> array of 5 cards
new_deck.count # -> 47 (we already delt the 5 cards above)
new_deck.deal(47) # -> that's a big hand!
new_deck.empty? # -> true
```
