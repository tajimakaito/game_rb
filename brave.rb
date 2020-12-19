require "./character.rb"

class Brave < Character

  def cause_damage(**params)
    target = params[:target]
    damage = params[:damage]

    target.hp -= damage
    target.hp = 0 if target.hp < 0
    puts "#{target.name}に#{damage}のダメージを与えた！"
  end
end
