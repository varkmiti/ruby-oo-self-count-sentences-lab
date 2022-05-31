require 'pry'

class String

  def sentence?
    if self[-1, 1] == "." 
      return true
    else 
      return false
    end 
  end

  def question?
    if self[-1,1] == "?"
      return true 
    else 
      return false
    end
  end

  def exclamation?
    if self[-1,1] == "!"
      return true
    else 
      return false
    end 
  end

  def count_sentences
    no_comma = self.gsub(/[,]/, "")
    nospace = no_comma.gsub(/[ ]/, "")
    sentences= nospace.split(/(?<=[.])/)
    sentences.count
  end

  # def count_sentences
  #   no_comma = self.gsub(/[,]/, "")

  # end
end