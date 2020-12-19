require "./character.rb"

class Brave < Character
  def attack(monster)
  puts "#{@name}の攻撃！"

  damage = damage(monster)
  cause_damage(target:monster,damage:damage)
  end

  def damage(target)
    @offense - target.defense / 2
  end

  def cause_damage(**params)
    target = params[:target]
    damage = params[:damage]

    target.hp -= damage
    target.hp = 0 if target.hp < 0
    puts "#{target.name}に#{damage}のダメージを与えた！"
  end
end
