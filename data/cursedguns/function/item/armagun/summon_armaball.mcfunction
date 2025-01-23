
    # macro_input
    #> $(Motion)
    #> $(UUID)
    #> $(Rotation)

    # Сама сущность
    $execute \
        anchored eyes \
        run summon breeze_wind_charge ~ ~ ~ { \
                Passengers: [ \
                    { \
                        id: "item_display", \
                        item: { \
                            id: "diamond", \
                            components: { \
                                "minecraft:item_model": "cursedguns:armaball", \
                                "minecraft:custom_data": { cursedguns: { Owner: $(UUID) } } \
                                } \
                        }, \
                        transformation: { \
                                left_rotation: [ 0f, 0f, 0f, 1f ], \
                                right_rotation: [ 0f, 0f, 0f, 1f ], \
                                scale: [ 1.15f, 1.15f, 1.15f ], \
                                translation: [ 0f, -0.3f, 0f ] \
                        }, \
                        Tags: [ \
                            "cursedguns.entity.armaball", \
                            "cursedguns.entity.select" \
                        ] \
                    } \
                ], \
                Tags: [ "cursedguns.entity.armaball_base_entity" ], \
                Motion: $(Motion), \
                Owner: $(UUID), \
                Rotation: $(Rotation) \
        }
    
    # Дополнительные данные
    data \
        modify entity @e[ \
            type = item_display, \
            tag = cursedguns.entity.select, \
            limit = 1 \
        ] Rotation[0] \
        set from entity @s Rotation[0]
    
    tag @e[ tag = cursedguns.entity.select ] remove cursedguns.entity.select