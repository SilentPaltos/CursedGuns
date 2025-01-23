
    $title @s actionbar [ \
        { \
            text: "vector: ", \
            color: "yellow", \
            extra: [ \
                { \
                    text: "$(vector)", \
                    color: "green" \
                } \
            ] \
        }, \
    ]
    execute at @s run function c50:this_entity/get/line_of_sight_vector