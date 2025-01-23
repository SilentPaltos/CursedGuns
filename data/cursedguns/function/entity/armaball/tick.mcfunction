
    # Накопление времени жизни
    scoreboard players add @s cursedguns.entity.lifetime 1

    # Если время жизни истекло
    execute \
        if score @s cursedguns.entity.lifetime matches 600 \
        positioned as @s \
        run function cursedguns:entity/armaball/lifetime_is_out
    
    # При столкновении
    execute \
        if predicate cursedguns:entity/armaball/collided \
        positioned as @s \
        run function cursedguns:entity/armaball/collide with entity @s item.components."minecraft:custom_data".cursedguns