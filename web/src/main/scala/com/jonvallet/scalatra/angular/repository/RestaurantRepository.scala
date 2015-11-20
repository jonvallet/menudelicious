package com.jonvallet.scalatra.angular.repository

import com.jonvallet.scalatra.angular.database.DatabaseContext
import com.jonvallet.scalatra.angular.database.generated.tables.Restaurant._
import com.jonvallet.scalatra.angular.database.generated.tables.MenuItems._
import com.jonvallet.scalatra.angular.database.generated.tables.Category._

import org.jooq.scala.Conversions._

/**
 * Created by jvallet on 20/11/15.
 */
class RestaurantRepository(ctx: DatabaseContext) {

  def getCategories = {
    ctx.create
       .select()
       .from()
  }


  def getMenu(id: Int) = {
    ctx.create
      .select()
      .from(MENU_ITEMS)
      .where(MENU_ITEMS.RESTAURANT_ID === id)
      .fetch()
      .formatJSON()
  }

  def list() = {
    ctx.create
       .select()
       .from(RESTAURANT)
       .fetch()
       .formatJSON()
  }

}
