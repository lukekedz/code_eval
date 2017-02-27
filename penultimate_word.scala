object Main extends App {
	val lines = scala.io.Source.fromFile(args(0)).getLines
	for (line <- lines) {
		val words = line.split("\\s")

		for ( i <- 0 to (words.length - 1) ) {
			if ( i == words.length - 2) {
				println(words(i))
			}
		}
	}
}
