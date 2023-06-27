require 'spec_helper'
require_relative '../build_house.rb'

describe Jack do

    context 'task 1' do

        it 'returns the nursery rhyme' do
            jack = Jack.new

            expect(jack.rhyme).to eq(
            "This is the house that Jack built.\nThis is the malt that lay in the house that Jack built.\nThis is the rat that ate the malt that lay in the house that Jack built.\nThis is the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.")
        end
    end

    context 'task 2' do

        it 'returns a random rhyme containing all the characters' do
            characters = ["the house that Jack built", "the malt that lay in", "the rat that ate", "the cat that killed", "the dog that worried", "the cow with the crumpled horn that tossed", "the maiden all forlorn that milked", "the man all tattered and torn that kissed", "the priest all shaven and shorn that married", "the rooster that crowed in the morn that woke", "the farmer sowing his corn that kept", "the horse and the hound and the horn that belonged to"]
            jack_random = Jack.new

            expect(jack_random.random_rhyme).to include(*characters)
        end

        it 'does not return the same rhyme every time it is called' do
            random1 = Jack.new.random_rhyme
            random2 = Jack.new.random_rhyme
            
            expect(random1).not_to eq(random2)
        end
    end

    context 'task 3' do

        it 'always ends with "the house that Jack built.\n"' do
            jack = Jack.new
            expect(jack.semi_random).to end_with("the house that Jack built.\n")
        end

        it 'returns a random rhyme containing all the characters' do
            characters = ["the house that Jack built", "the malt that lay in", "the rat that ate", "the cat that killed", "the dog that worried", "the cow with the crumpled horn that tossed", "the maiden all forlorn that milked", "the man all tattered and torn that kissed", "the priest all shaven and shorn that married", "the rooster that crowed in the morn that woke", "the farmer sowing his corn that kept", "the horse and the hound and the horn that belonged to"]
            jack_semi_random = Jack.new

            expect(jack_semi_random.semi_random).to include(*characters)
        end

        it 'does not return the same rhyme every time it is called' do
            semi_random1 = Jack.new.semi_random
            semi_random2 = Jack.new.semi_random
            
            expect(semi_random1).not_to eq(semi_random2)
        end
    end
end