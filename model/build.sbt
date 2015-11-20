Seq(flywaySettings: _*)

val jdbcUrl = "jdbc:h2:~/test"
val user = "sa"
val password = ""

flywayUrl := jdbcUrl
flywayUser := "sa"

