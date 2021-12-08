return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 40,
  height = 12,
  tilewidth = 64,
  tileheight = 64,
  nextlayerid = 7,
  nextobjectid = 107,
  properties = {},
  tilesets = {
    {
      name = "platformer",
      firstgid = 1,
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "tileset.png",
      imagewidth = 192,
      imageheight = 192,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      wangsets = {},
      tilecount = 9,
      tiles = {}
    },
    {
      name = "Flag",
      firstgid = 10,
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "flag.png",
      imagewidth = 64,
      imageheight = 64,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      wangsets = {},
      tilecount = 1,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 40,
      height = 12,
      id = 1,
      name = "Tile Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        8, 8, 9, 0, 0, 0, 0, 0, 4, 5, 6, 0, 0, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 9, 0, 0, 0, 0, 0, 0, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 2, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 9, 0, 0, 0, 0, 1, 2, 2, 0, 0, 0, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 5, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 1, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 4, 5, 5, 6, 0, 0, 0, 0, 0, 0, 4, 0, 0, 7, 9, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 5, 6, 0, 0, 2, 2, 2, 2, 5, 0, 0, 0, 0, 0, 0, 0, 7, 8,
        0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 5, 6, 9, 0, 4, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1, 2, 2, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 5, 6, 0, 0, 4, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "Flag",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 70,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["NextLevel"] = "level1"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "Spawn",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 72,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 576,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "Collectables",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 73,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 448,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 74,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 448,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 75,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 448,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 832,
          y = 448,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 960,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1088,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 80,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1152,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 81,
          name = "",
          type = "",
          shape = "rectangle",
          x = 832,
          y = 64,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 82,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 64,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 83,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 84,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 85,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 86,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 87,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1344,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 88,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 89,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1472,
          y = 384,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 90,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2112,
          y = 448,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 91,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 448,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 92,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1728,
          y = 512,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 93,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 512,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 94,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1856,
          y = 512,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 95,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1728,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 96,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1856,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 97,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1984,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 98,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2112,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 99,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2240,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 100,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2368,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 101,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 64,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Star"
          }
        },
        {
          id = 102,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2496,
          y = 512,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Star"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "Platforms",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 128,
          width = 192,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 704,
          width = 256,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 640,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 576,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 512,
          width = 512,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 384,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1088,
          y = 256,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 832,
          y = 128,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 256,
          width = 192,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 44,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 0,
          width = 192,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 45,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 384,
          width = 192,
          height = 384,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 46,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 640,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 47,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 576,
          width = 256,
          height = 192,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 448,
          width = 64,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 50,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2112,
          y = 512,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 51,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 576,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 52,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1728,
          y = 256,
          width = 64,
          height = 192,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 256,
          width = 768,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 103,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1472,
          y = 448,
          width = 64,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 105,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1152,
          y = 896,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 106,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 320,
          width = 64,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "Enemies",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 55,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 448,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Speed"] = 100
          }
        },
        {
          id = 58,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1344,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Speed"] = 50
          }
        },
        {
          id = 64,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1728,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Speed"] = 100
          }
        },
        {
          id = 63,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1984,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Speed"] = 100
          }
        },
        {
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Speed"] = 250
          }
        }
      }
    }
  }
}
