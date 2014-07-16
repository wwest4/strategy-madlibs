def noun
  @parts_of_speech[:nouns].shuffle!.pop
end

def plural_noun
  @parts_of_speech[:plural_nouns].shuffle!.pop
end

def adjective
  @parts_of_speech[:adjectives].shuffle!.pop
end

def indef_noun
  noun.indefinite_article_linking
end

def indef_adjective
  adjective.indefinite_article_linking
end

class Hash
  def deep_copy
    Marshal.load(Marshal.dump(self))
  end
end

class String
  def indefinite_article_linking
    self.match(/^[aeiou]/) ? 'an ' + self : 'a ' + self
  end
end
