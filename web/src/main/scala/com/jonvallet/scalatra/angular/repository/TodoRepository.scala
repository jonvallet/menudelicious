package com.jonvallet.scalatra.angular.repository


import com.jonvallet.scalatra.angular.database.DatabaseContext
import com.jonvallet.scalatra.angular.database.generated.tables.Todo._

import scala.collection.JavaConversions._
import org.jooq.scala.Conversions._

/**
 * Created by jon on 13/11/15.
 */
class TodoRepository(ctx : DatabaseContext) {

  def list() : List[Todo] = {
    ctx.create
      .select()
      .from(TODO)
      .fetchInto(classOf[Todo])
      .toList
  }

  def create(todo: TodoCreate): Todo = {
    val newRecord = ctx.create.newRecord(TODO, todo)
    newRecord.store()
    Todo(newRecord.getId, newRecord.getName, newRecord.getDescription, newRecord.getDone)
  }

  def updateDone(id: Int, done: Boolean) = {
    ctx.create
      .update(TODO)
      .set[java.lang.Boolean](TODO.DONE, done) //Have to set the Boolean java type, so the implicitn conversion works
      .where(TODO.ID === id)
      .execute
  }

  def delete(id: Int) = {
    ctx.create
      .delete(TODO)
      .where(TODO.ID === id)
      .execute
  }
}

case class Todo (id: Int, name: String, description: String, done: Boolean)
case class TodoCreate(name: String, description: String, done: Boolean)
