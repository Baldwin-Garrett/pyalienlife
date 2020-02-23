TECHNOLOGY {
    type = "technology",
    name = "moondrop-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/moondrop.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "moondrop-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/moondrop-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02","moondrop-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "moondrop-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/moondrop-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk03","moondrop-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 1},
            {"py-science-pack", 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "moondrop-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/moondrop-4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk04","moondrop-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {'py-science-pack', 1},
        },
        time = 50
    }
}
