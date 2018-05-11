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
    if val == {:type => "interpreted"}
      new_hash[lang][:style] = [:oo]
    elsif lang == :javascript
      new_hash[lang][:style] = [:oo, :functional]
    elsif val == {:type => "compiled"}
      new_hash[lang][:style] = [:functional]
    elsif lang == :java
      new_hash[lang][:style] = [:oo]
  end
  end


  #binding.pry
    languages[:oo].delete_if {|lang, val| languages[:oo][lang]}
    languages[:functional].delete_if {|lang, val| languages[:functional][lang]}
    if new_hash.key({:type => "interpreted"}) == :python
       new_hash.each do |key, val|
         val[:style] = [:oo]
       end
     end
end
