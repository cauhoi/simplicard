# Simplicard

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/simplicard`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simplicard'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simplicard

## Usage

```
    require 'simplicard'
    deck = Simplicard::CardDeck.new
    deck.deal #=> This will return a card object from the deal action
    deck.pick_a_card  #=> This will return a card object which was selected randomly from the deck
    deck.shuffle_it #=> This will return an array of current cards in the deck after shuffling
    deck.cards_left #=> Return the number of cards left in the deck
    deck.find_card(Card.new(11,0))  #=> return the index of the card in the @deck array, if not found, return false
    deck.show #=> ["Ace of Spades", "Ace of Clubs", "Ace of Diamonds", "Ace of Hearts",...] return an array  cards in the deck
    deck.put_back_cards #=> return all the cards back to the deck
    deck.is_complete? #=> check to see if all the cards are in the deck. If the deck has duplicate cards or less than 52 cards then it will return false

    <!-- Instance Variables -->
    deck.dealt_cards #=> return an array of cards that were dealt
    deck.added_cards #=> return an array of cards that were added to the deck
    deck.picked_cards #=> return an array of cards that were select randomly from the deck
    deck.my_deck #=> return an array of cards in the deck

    card = Simplicard::Card.new(1,2) #=> creating a card
    card.value #=> 1
    card.suit.value #=> 2
    card.show #=> Ace of Diamonds
    card.value_to_s #=> Ace
    card.suit.suit_to_s #=> Diamonds

    suit = Simplicard::Suit.new(1)
    suit.value #=> 1
    suit.suit_to_s #=> Clubs
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/simplicard/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
