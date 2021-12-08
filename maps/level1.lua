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
  nextobjectid = 67,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 8, 8, 9, 0, 0, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 1, 2, 2, 2, 2,
        0, 0, 0, 0, 0, 7, 9, 0, 5, 5, 0, 0, 0, 0, 0, 4, 5, 6, 0, 0, 0, 0, 0, 0, 7, 8, 9, 0, 0, 0, 0, 0, 4, 6, 0, 4, 5, 5, 5, 5,
        0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 4, 6, 0, 4, 5, 5, 5, 5,
        8, 8, 9, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 6, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 0, 4, 5, 5, 5, 5,
        0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 1, 2, 2, 2, 2, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 0, 4, 0, 0, 5, 5,
        0, 0, 0, 0, 0, 1, 2, 2, 5, 5, 0, 4, 5, 5, 5, 5, 5, 6, 0, 0, 0, 0, 0, 0, 7, 8, 8, 8, 8, 8, 8, 8, 4, 6, 0, 4, 0, 0, 5, 5,
        0, 0, 0, 0, 0, 4, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 0, 0, 0, 0, 0, 0,
        2, 2, 2, 0, 0, 4, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 0, 0, 0, 0, 0, 0,
        5, 5, 5, 0, 0, 4, 5, 5, 0, 0, 0, 0, 1, 2, 2, 2, 2, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 2, 2, 2, 2, 2, 2,
        5, 5, 5, 0, 0, 4, 5, 5, 5, 9, 0, 0, 4, 5, 5, 5, 5, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 5, 5, 5, 5, 5, 5
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
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2496,
          y = 576,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["NextLevel"] = "level2"
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
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 512,
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
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 256,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 44,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 128,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 45,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
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
          id = 46,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Star"
          }
        },
        {
          id = 47,
          name = "",
          type = "",
          shape = "rectangle",
          x = 832,
          y = 576,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 48,
          name = "",
          type = "",
          shape = "rectangle",
          x = 960,
          y = 576,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 49,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1088,
          y = 576,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 50,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1216,
          y = 256,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 51,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
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
          id = 52,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1984,
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
          id = 53,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
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
          id = 54,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 128,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 55,
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
          id = 56,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
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
          id = 57,
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
          id = 58,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 128,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Type"] = "Coin"
          }
        },
        {
          id = 59,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2496,
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
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
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
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2368,
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
          id = 62,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304,
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
          id = 63,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2240,
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
          id = 64,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2368,
          y = 448,
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
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 576,
          width = 192,
          height = 192,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 320,
          width = 192,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 192,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 448,
          width = 192,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 768,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 128,
          width = 64,
          height = 448,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 128,
          width = 64,
          height = 384,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 128,
          width = 192,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 704,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 640,
          width = 448,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 384,
          width = 448,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 960,
          y = 0,
          width = 192,
          height = 256,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1088,
          y = 256,
          width = 64,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1152,
          y = 320,
          width = 256,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1344,
          y = 576,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1856,
          y = 256,
          width = 192,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 128,
          width = 128,
          height = 640,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 640,
          width = 384,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 192,
          width = 192,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 448,
          width = 512,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2240,
          y = 128,
          width = 320,
          height = 256,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2240,
          y = 384,
          width = 64,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 960,
          y = -128,
          width = 192,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = -128,
          width = 64,
          height = 896,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 0,
          width = 64,
          height = 768,
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
          id = 33,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 256,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Speed"] = 50
          }
        },
        {
          id = 34,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Speed"] = 100
          }
        },
        {
          id = 65,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1600,
          y = 384,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Speed"] = 150
          }
        },
        {
          id = 66,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 576,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Speed"] = 150
          }
        }
      }
    }
  }
}
