###

func maximumNumberOfMoves(sampleWord wordu:String, appliedTo stru: String) -> Any {

    var setWord = Set<Character>()

    return zip(wordu.filter{ setWord.insert($0).inserted }.sorted().map { x in wordu.filter{ $0 == x}.count }.reversed() as [Int], (setWord.sorted().reversed() as [Character]).map { x in stru.filter { $0 == x}.count }.filter { $0 != 0 } as [Int]).map{$1/$0}.min() ?? "Nil unrwapped" as Any

}

print(maximumNumberOfMoves(sampleWord: "APPLE", appliedTo: "ELPPAELPPAAAAAAA"))

//SIMPLIFIED VERSION FOR BETTER UNDERSTANDING

// var str = "ELPPAELPPAELPPAELPPA"

// var word = "APPLE"

// var setWord = Set<Character>()

// var squeezedWord = word.filter{ setWord.insert($0).inserted }

// var duplicatesArrayWord = setWord.sorted().map { x in word.filter { $0 == x}.count }.reversed() as [Int]

// var setWordSorted = setWord.sorted().reversed() as [Character]

// var duplicatesarrayStr = setWordSorted.map { x in str.filter { $0 == x}.count }.filter { $0 != 0 } as [Int]

// print(zip(duplicatesarrayWord,duplicatesarrayStr).map{$1 / $0}.min() ?? "Nil unrwapped" as Any)
