require_relative '../lib/multiples'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(2)).to eq(false)
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(64)).to eq(false)
  end
end

describe "the sum_of_3_or_5_multiples method" do
  it "for every loop, should add the number to the sum if it's a multiple of 3 or 5, even zero" do # à chaque tour de boucle, ajoute le nombre en question dans la somme finale
    expect(sum_of_3_or_5_multiples(10)).to eq(23) # (3+5+6+9) = 23 ne prends pas 10 lui-même car il faut prendre strictement inférieur à 10
    expect(sum_of_3_or_5_multiples(11)).to eq(33) # (3+5+6+9+10) = 23
    expect(sum_of_3_or_5_multiples(0)).to eq(0)
    expect(sum_of_3_or_5_multiples(3)).to eq(0) # comme il ne prend pas 3 => résultat 0
    expect(sum_of_3_or_5_multiples(1000)).to eq(233168) #pour teste la partie finale avec 1 000
  end

  it "should refuse enter because is not an integer" do # à chaque tour de boucle, passe au suivant
    expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
    expect(sum_of_3_or_5_multiples(1.23)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
    expect(sum_of_3_or_5_multiples("chiffre")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end
end