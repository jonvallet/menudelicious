package com.jonvallet.scalatra.angular.rest

import com.jonvallet.scalatra.angular.database.DatabaseContext
import com.jonvallet.scalatra.angular.repository.{RestaurantRepository, TodoRepository}
import org.json4s.{DefaultFormats, Formats}
import org.scalatra.ScalatraServlet
import org.scalatra.json.JacksonJsonSupport
import org.slf4j.LoggerFactory

/**
 * Created by jvallet on 20/11/15.
 */
class RestaurantController(ctx: DatabaseContext) extends ScalatraServlet with JacksonJsonSupport {
  protected implicit lazy val jsonFormats: Formats= DefaultFormats
  val logger = LoggerFactory.getLogger(getClass)
  lazy val repository = new RestaurantRepository(ctx)

  before("/*") {
    contentType = formats("json")
  }

  get("/") {
    repository.list()
  }

  get("/:id/menu") {
    repository.getMenu(params("id").toInt)
  }

  get("/categories") {
    repository.getCategories
  }

  get("/filter/category/:category") {
    repository.filterByCategory(params("category").toInt)
  }

  get("/menu/item/:id/diets") {
    repository.getDiets(params("id").toInt)
  }

  get("/allergies") {
    repository.getAllergies()
  }
}
