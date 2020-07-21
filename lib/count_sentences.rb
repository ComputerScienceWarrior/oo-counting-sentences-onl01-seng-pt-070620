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
    punc_count = 0 #keeps track of punctuation

    sentence.each do |words|
      if words.end_with?('!')
        punc_count += 1
      elsif words.end_with?('.')  
        punc_count += 1
      elsif words.end_with?('?')
        punc_count += 1
      end
      # binding.pry
    end
    
    return punc_count
  end
end