require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages[:oo].each do |lang, val|
    new_hash[lang] = val
  end
  languages[:functional].each do |lang, val|
    new_hash[lang] = val
  end
  new_hash.each do |lang, val|
    if lang == :javascript && val == {:type => "interpreted"}
      new_hash[lang][:style] = [:oo, :functional]
    elsif val == {:type => "interpreted"}
      new_hash[lang][:style] = [:oo]
    end
    if val == {:type => "compiled"}
      new_hash[lang][:style] = [:functional]
    elsif lang == :java
      new_hash[lang][:style] = [:oo]
    end
  end
  #binding.pry
end
