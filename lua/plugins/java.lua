return {
  "nvim-java/nvim-java",
  lazy = true,
  opts = {
    jdk = { auto_install = false },
    jdtls = {
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-17",
                path = "/usr/lib/jvm/java-17-openjdk/",
              },
              {
                name = "JavaSE-21",
                path = "/usr/lib/jvm/java-21-openjdk/",
              },
              {
                name = "JavaSE-25",
                path = "/usr/lib/jvm/java-25-openjdk/",
                default = true,
              },
            },
          },
        },
      },
    },
  },
}
