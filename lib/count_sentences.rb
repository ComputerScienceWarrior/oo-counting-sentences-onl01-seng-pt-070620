require 'pry'

class String
  
  def sentence?
    self.end_with?('.') ? true : false
  end

  def question?
    self.end_with?('?') ? true : false
  end

  def exclamation?
    self.end_with?('!') ? true : false
  end

  def count_sentences
    sentence = self.split
    # binding.pry
    sentence.each do |words|
      binding.pry  
    end
    
    return sentence.size
  end
end