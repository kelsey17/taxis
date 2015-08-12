# DB Connections

library("RPostgreSQL")

query_results <- function(query){
   user <- "[db_username]"
   pass <- "[db_password]"
   host <- "[db_host]"
   db   <- "[db_db]"
   port <- 5432
  conn <- dbConnect(PostgreSQL(), user=user, password=pass,
                    dbname=db, host=host, port=port)
  results <- dbGetQuery(conn,query)
  dbDisconnect(conn)
  results
}