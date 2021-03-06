Seq(jooqSettings:_*)

libraryDependencies += "com.h2database" % "h2" % "1.4.190"
libraryDependencies += "com.mchange" % "c3p0" % "0.9.5.1"

val jdbcUrl = "jdbc:h2:~/test"
val user = "sa"
val password = ""

jooqOptions := Seq("jdbc.driver" -> "org.h2.Driver",
                    "jdbc.url" -> jdbcUrl,
                    "jdbc.user" -> user,
                    "jdbc.password" -> password,
                    "generator.database.name" -> "org.jooq.util.h2.H2Database",
                    "generator.target.packageName" -> "com.jonvallet.scalatra.angular.database.generated",
                    "generator.database.inputSchema" -> "PUBLIC"
                    )

jooqVersion := "3.7.1"

