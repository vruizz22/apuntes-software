def count_cards_suit(cards)
  pintas = {'P' => 'pica', 'C' => 'corazon', 'D' => 'diamante', 'T' => 'trebol'}
  count = {'pica' => 0, 'corazon' => 0, 'diamante' => 0, 'trebol' => 0}
  cards.each do |card|
    pinta = pintas[card[-1]]
    count[pinta] += 1
  end
  count
end

def is_deck_complete(cards)
  pintas = {'P' => 0, 'C' => 0, 'D' => 0, 'T' => 0}
  cards.each do |card|
    pintas[card[-1]] += 1
  end
  pintas.values.all? { |value| value == 13 }
end

my_cards = ['1P', '2C', '13D', '12T', '3P']
puts count_cards_suit(my_cards)
puts is_deck_complete(my_cards)

