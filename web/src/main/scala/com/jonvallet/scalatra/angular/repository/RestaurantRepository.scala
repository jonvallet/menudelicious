package com.jonvallet.scalatra.angular.repository

import com.jonvallet.scalatra.angular.database.DatabaseContext
import com.jonvallet.scalatra.angular.database.generated.tables.Restaurant._
import com.jonvallet.scalatra.angular.database.generated.tables.MenuItems._
import com.jonvallet.scalatra.angular.database.generated.tables.Categories._
import com.jonvallet.scalatra.angular.database.generated.tables.MenuDiet._
import com.jonvallet.scalatra.angular.database.generated.tables.Allergies._


import org.jooq.scala.Conversions._
import scala.collection.JavaConversions._

/**
 * Created by jvallet on 20/11/15.
 */
class RestaurantRepository(ctx: DatabaseContext) {

  def getMenuItemsFilterByDiet(menuItemId: Int, dietItemId: Int) = {
    ctx.create
       .select()
       .from(MENU_ITEMS, MENU_DIET)
       .where(MENU_ITEMS.ID === MENU_DIET.MENU_ITEM_ID)
       .and(MENU_ITEMS.ID === menuItemId)
       .and(MENU_DIET.DIET_ID === dietItemId)
       .fetchInto(MENU_ITEMS)
       .formatJSON()

  }

  def getAllergies()  = {
    ctx.create
       .select(ALLERGIES.ID, ALLERGIES.NAME)
       .from(ALLERGIES)
       .fetch()
       .toList
       .map(r => Map("ID" -> r.value1(), "NAME" -> r.value2()))
  }

  def getDiets(menuItemId : Int)  = {
    ctx.create
       .select(ALLERGIES.ID, ALLERGIES.NAME)
       .from(MENU_DIET, ALLERGIES)
       .where(MENU_DIET.MENU_ITEM_ID === menuItemId)
       .and(ALLERGIES.ID === MENU_DIET.DIET_ID)
       .fetch()
       .toList
       .map(r => Map("ID" -> r.value1(), "NAME" -> r.value2()))
  }

  def filterByCategory(category: Int) = {
    ctx.create
       .select()
       .from(RESTAURANT)
       .where(RESTAURANT.CATEGORY_ID === category)
       .fetch()
       .formatJSON()
  }

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
