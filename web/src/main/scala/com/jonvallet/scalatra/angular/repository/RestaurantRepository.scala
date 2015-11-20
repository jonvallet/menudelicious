package com.jonvallet.scalatra.angular.repository

import com.jonvallet.scalatra.angular.database.DatabaseContext
import com.jonvallet.scalatra.angular.database.generated.tables.Restaurant._
import com.jonvallet.scalatra.angular.database.generated.tables.MenuItems._
import com.jonvallet.scalatra.angular.database.generated.tables.Categories._

import org.jooq.scala.Conversions._
import scala.collection.JavaConversions._

/**
 * Created by jvallet on 20/11/15.
 */
class RestaurantRepository(ctx: DatabaseContext) {

  def getCategories = {
    ctx.create
       .select(CATEGORIES.ID, CATEGORIES.NAME)
       .from(CATEGORIES)
       .fetch()
       .toList
       .map(record => ComboValue(record.value1(),record.value2()))
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

  case class ComboValue(id: Integer, name: String)

}
