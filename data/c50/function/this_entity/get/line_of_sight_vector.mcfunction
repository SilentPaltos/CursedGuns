
    data remove storage c50:function LastOutput

    execute \
        positioned 0.0 0.0 0.0 \
        rotated as @s \
        positioned ^ ^ ^1 \
        store success storage c50:function ExecuteData.chunk byte 1 \
        run forceload add ~ ~
    execute \
        positioned 0.0 0.0 0.0 \
        rotated as @s \
        run summon marker ^ ^ ^1 { Tags: [ "cursedguns.entity.select" ] }

    data \
        modify storage c50:function LastOutput.vector \
        set from entity @e[ \
            limit = 1, \
            type = marker, \
            tag = cursedguns.entity.select \
        ] Pos

    kill @e[ \
        type = marker, \
        tag = cursedguns.entity.select \
        ]
    execute \
        if data storage c50:function { ExecuteData: { chunk: 1b } } \
        positioned 0.0 0.0 0.0 \
        rotated as @s \
        positioned ^ ^ ^1 \
        run forceload remove ~ ~
    data remove storage c50:function ExecuteData
    

    
