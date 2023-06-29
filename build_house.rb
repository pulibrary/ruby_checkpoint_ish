class Jack

    def initialize
        @characters = ["the house that Jack built", "the malt that lay in", "the rat that ate", "the cat that killed", "the dog that worried", "the cow with the crumpled horn that tossed", "the maiden all forlorn that milked", "the man all tattered and torn that kissed", "the priest all shaven and shorn that married", "the rooster that crowed in the morn that woke", "the farmer sowing his corn that kept", "the horse and the hound and the horn that belonged to"]
        @begin_sent = "This is "
    end

    # Generates the actual nursery rhyme
    def rhyme
        "This is the house that Jack built.\nThis is the malt that lay in the house that Jack built.\nThis is the rat that ate the malt that lay in the house that Jack built.\nThis is the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\nThis is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
    end

    # Generates a random rhyme in the same pattern as the original nursery
    # rhyme.
    def random_rhyme
        order = @characters.shuffle
        line = order.pop + ".\n"

        generate(line, order)
    end

    # Generates a semi-random version of the nursery rhyme that always ends 
    # with “the house that Jack built.”
    def semi_random
        order = @characters[1..-1].shuffle
        line = "the house that Jack built.\n"

        generate(line, order)
    end

    private

    # Generates the rhyme randomly given the first line and a shuffled array of
    # characters.
    def generate(line, order)
        rhyme = @begin_sent + line

        while !order.empty? 
            line = order.pop + " " + line
            rhyme += @begin_sent + line
        end

        rhyme
    end
end
