q.concourse <- import.q.concourse(
  q.concourse.dir = "wortweltihr-sample/wortweltihr-concourse/"
)
q.distribution <- make.distribution(nstat = 61, max.bin = 6)
q.sample <- read.csv(
  header = FALSE,
  file = "wortweltihr-sample/sample.csv"
  )
q.sample <- q.sample$V1  # nur erste Spalte, weil Kommas eingegeben
q.set <- build.q.set(
  q.concourse = q.concourse,
  q.sample = q.sample,
  q.distribution = q.distribution)  # Objektname und Argumentname fallen zusammen
