RECIPE {
    type = "recipe",
    name = "moss-farm-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"moss-farm-mk03", 1},
        {"divertor", 5},
        {"boron-carbide", 100},
        {"science-coating", 20},
        {"wall-shield", 10},
        {"control-unit", 10}
    },
    results = {
        {"moss-farm-mk04", 1}
    }
}:add_unlock("biotech-mk04")

ITEM {
    type = "item",
    name = "moss-farm-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/moss-farm-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "e",
    place_result = "moss-farm-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "moss-farm-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/moss-farm-mk04.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "moss-farm-mk04"},
    fast_replaceable_group = "moss-farm",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"moss"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -25,
    },
    energy_usage = "800kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/moss-farm/a-base.png",
                width = 192,
                height = 32,
                line_length = 10,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(0, 80)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/moss-farm/a1.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -64)
            },

            {
                filename = "__pyalienlifegraphics__/graphics/entity/moss-farm/mask-1.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -64),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/moss-farm/a2.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/moss-farm/mask-2.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -64),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/moss-farm/a3.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(64, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/moss-farm/mask-3.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(64, -64),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/moss-farm/sh.png",
                width = 64,
                height = 201,
                line_length = 20,
                frame_count = 120,
                draw_as_shadow = true,
                animation_speed = 0.4,
                shift = util.by_pixel(96, -10)
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, -3.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, 3.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/moss-farm.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/moss-farm.ogg", volume = 1.5},
        apparent_volume = 2.5
    }
}