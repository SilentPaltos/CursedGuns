    
    # Обновление инвентаря (слот с бронестрелом)
    execute \
        if items entity @s weapon.mainhand crossbow[ custom_data = { cursedguns: { id: "armagun" } } ] \
        run loot replace entity @s weapon.mainhand loot cursedguns:item/armagun
    
    execute \
        if items entity @s weapon.offhand crossbow[ custom_data = { cursedguns: { id: "armagun" } } ] \
        run loot replace entity @s weapon.offhand loot cursedguns:item/armagun

    # Звуки

        # Выстрел
        playsound entity.armadillo.roll player @a ~ ~ ~ 3 1 0
        playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 0 0

        # Выключение звука арбалета
        stopsound @a[ distance = ..15 ] player item.crossbow.shoot

    # Создание бронешара

    function c50:this_entity/get/line_of_sight_vector with entity @s
    data modify storage cursedguns:function macro_input.Motion set value [0d,0d,0d]
    execute \
        store result storage cursedguns:function macro_input.Motion[0] double 0.0002 \
        run data get storage c50:function LastOutput.vector[0] 10000
    execute \
        store result storage cursedguns:function macro_input.Motion[1] double 0.0002 \
        run data get storage c50:function LastOutput.vector[1] 10000
    execute \
        store result storage cursedguns:function macro_input.Motion[2] double 0.0002 \
        run data get storage c50:function LastOutput.vector[2] 10000
    data \
        modify storage cursedguns:function macro_input.UUID \
        set from entity @s UUID
    data \
        modify storage cursedguns:function macro_input.Rotation \
        set from entity @s Rotation

    execute \
        anchored eyes \
        positioned ^ ^ ^0.5 \
        run function cursedguns:item/armagun/summon_armaball with storage cursedguns:function macro_input

    data remove storage cursedguns:function macro_input

    # Уничтожение выпущенной из арбалета стрелы
    kill @e[ \
        type = arrow, \
        nbt = { item: { components: { "minecraft:custom_data": { cursedguns: "armagun_projectile_filler" } } } } \
    ]