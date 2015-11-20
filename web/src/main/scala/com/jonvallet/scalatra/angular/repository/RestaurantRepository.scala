package com.jonvallet.scalatra.angular.repository

import com.jonvallet.scalatra.angular.database.DatabaseContext
import com.jonvallet.scalatra.angular.database.generated.tables.Restaurant._
import com.jonvallet.scalatra.angular.database.generated.tables.records.RestaurantRecord
import org.json4s.jackson.Json
import scala.collection.JavaConversions._
import org.jooq.scala.Conversions._

/**
 * Created by jvallet on 20/11/15.
 */
class RestaurantRepository(ctx: DatabaseContext) {
  def list() = {
    ctx.create
       .select()
       .from(RESTAURANT)
       .fetch()
       .formatJSON()
  }

}
