package com.jonvallet.scalatra.angular.repository

import com.jonvallet.scalatra.angular.database.DatabaseContext
import com.jonvallet.scalatra.angular.database.generated.tables.Restaurant._
import scala.collection.JavaConversions._
import org.jooq.scala.Conversions._

/**
 * Created by jvallet on 20/11/15.
 */
class RestaurantRepository(ctx: DatabaseContext) {
  def list(): List[Restaurant] = {
    ctx.create
       .select()
       .from(RESTAURANT)
       .fetchInto(classOf[Restaurant])
       .toList
  }

}

case class Restaurant(id: Int, name: String, description: String, username: String,
                      houseNameNo: String, street: String, postcode: String)
