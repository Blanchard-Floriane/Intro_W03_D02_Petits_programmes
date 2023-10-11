require_relative '../lib/caesar_cipher'

describe "the upercase_rule method" do
  #si majuscule ASCII code boucle 65 à 90
  # "A".ord => 56
  # 65.chr => A
  it "get new letter, always in the same way, at distance define by the key. If we got through the last letter we return at the beginning" do
    expect(upercase_rule("A",3)).to eq("D")
    expect(upercase_rule("B",3)).to eq("E")
    expect(upercase_rule("X",5)).to eq("C")
    expect(upercase_rule("R",10)).to eq("B")
  end
end

describe "the lowercase_rule method" do 
  it "get new letter, always in the same way, at distance define by the key. If we got through the last letter we return at the beginning" do
    expect(lowercase_rule("a",3)).to eq("d")
    expect(lowercase_rule("b",3)).to eq("e")
    expect(lowercase_rule("x",5)).to eq("c")
    expect(lowercase_rule("r",10)).to eq("b")
  end
end

describe "the caesar_cipher method" do 
  it "get new letter, always in the same way, at distance define by the key. If we got through the last letter we return at the beginning. Respect class. Do not transform other characters outside letters." do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it "should refuse enter because is not a string" do
    expect(caesar_cipher(123,1)).to eq("Ce n'est pas une string andouille !")
    expect(caesar_cipher(-1,4)).to eq("Ce n'est pas une string andouille !")
    expect(caesar_cipher(6.3,5)).to eq("Ce n'est pas une string andouille !")
  end
end




#si minuscule ASCII code boucle 97 à 122
#le reste est inchangé