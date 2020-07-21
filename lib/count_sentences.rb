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
    binding.pry
    
    if sentence.exclamation?
      sentence = sentence.split('!')
    elsif sentence.question?
      sentence = sentence.split('?')
    elsif sentence.sentence?
      sentence = sentence.split('.')
    elsif sentence.size == 0
      
    end
    return sentence.size
  end
end