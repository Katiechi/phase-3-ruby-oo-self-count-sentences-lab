require 'pry'

class String

  def sentence?
    self.include?(".")
  end

  def question?
    self.include?("?")
  end

  def exclamation?
    self.include?("!")
  end

  def count_sentences
    counts = self.split(/[.?!]+/).grep(/\S/).count
    return counts
  end
end

"The weather outside is frightful.".sentence?
"What's your name?".question?
"Hi, my name is Sophie!".exclamation?
"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences