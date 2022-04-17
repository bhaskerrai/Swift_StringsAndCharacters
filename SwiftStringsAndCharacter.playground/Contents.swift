import UIKit

/*A string literal is a sequence of characters surrounded by double quotation marks (").
 
Multiline String Literals
If you need a string that spans several lines, use a multiline string literal—a sequence of characters surrounded by three double quotation marks.
 */

let paragaph = """
This is first line
this is second
this is third
"""

print(paragaph)

let multilineString = """
“The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop.”
"""
print(multilineString)

/*Special Characters in String Literals
String literals can include the following special characters:

1.The escaped special characters \0 (null character), \\ (backslash), \t (horizontal tab), \n (line feed), \r (carriage return), \" (double quotation mark) and \' (single quotation mark)”
2.An arbitrary Unicode scalar value, written as \u{n}, where n is a 1–8 digit hexadecimal number (Unicode is discussed in Unicode below)”
*/

let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496”

print(dollarSign,blackHeart,sparklingHeart)

//To insert double quots in multiline string literal use \" your text \".
let newPara = """
He said,\"How are you?\"
I replied,\"Fine! What about you?\"
"""

print(newPara)

/*
 “Extended String Delimiters
 You can place a string literal within extended delimiters to include special characters in a
 string without invoking their effect. You place your string within quotation marks (") and
 surround that with number signs (#). For example, printing the string literal #"Line 1\nLine 2"#
 prints the line feed escape sequence (\n) rather than printing the string across two
 */

var hij = #"Line 1\nLine 2"#
print(hij)

//“If you need the special effects of a character in a string literal, match the number of number signs within the string following the escape character (\). For example,”

var effectEnable = #"First line \#nSecond line \#nThird line."#
print(effectEnable)

//“String literals created using extended delimiters can also be multiline string literals. You can use extended delimiters to include the text """ in a multiline string, overriding the default behavior that ends the literal. For example:”

var multi = #"""
This is multiline String literal which starts and ends with """
"""#
print(multi)

//Initializing an Empty String
//To create an empty String value as the starting point for building a longer string, either assign an empty string literal to a variable, or initialize a new String instance with initializer syntax:

var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax”

//Find out whether a String value is empty by checking its Boolean isEmpty property:
print(emptyString.isEmpty)

//You can access the individual Character values for a String by iterating over the string with a for-in loop:”

for i in "TENET"{
    print(i)
}

//“Alternatively, you can create a stand-alone Character constant or variable from a single-character string literal by providing a Character type annotation:
let letter: Character = "B"
print(type(of: letter))

//“String values can be constructed by passing an array of Character values as an argument to its initializer:”

let myName: [Character] = ["B","H","A","S","K","E","R"]

let stringName = String(myName)
print(myName,"\n \(stringName)")

//“You can also append a String value to an existing String variable with the addition assignment operator (+=):”
var text1 = "Goodbye "
var text2 = "dear"
text1+=text2
print(text1)

//“You can append a Character value to a String variable with the String type’s append() method:”
let ch: Character = "!"
text1.append(ch)
print(text1)

//“You can’t append a String or Character to an existing Character variable, because a Character value must contain a single character only.”



//“If you’re using multiline string literals to build up the lines of a longer string, you want every line in the string to end with a line break, including the last line. For example:
var a = """
jaldi
aaja
"""
var b = """
bsdk
"""
print(a+b)

print("\n")
var a2 = """
jaldi
aaja

"""
var b2 = """
bsdk

"""
print(a2+b2)

//Sting Interpolation means to insert a constant, varaiable, string literal etc into a string using \()

print("Kab aaega \(b)?")

var n = 2
print("\(n) times 5 is: \((n)*5)")

print("\(n) times 5.4 is: \(Double(n)*5.4)")

// “You can use extended string delimiters to create strings containing characters that would otherwise be treated as a string interpolation. For example:

print(#"Write an interpolated string in Swift using \(multiplier)."#)
// Prints "Write an interpolated string in Swift using \(multiplier)."


// To use string interpolation inside a string that uses extended delimiters, match the number of number signs after the backslash to the number of number signs at the beginning and end of the string. For example:

print(#"6 times 7 is \#(6 * 7)."#)
// Prints "6 times 7 is 42."
 
//“Behind the scenes, Swift’s native String type is built from Unicode scalar values. A Unicode scalar value is a unique 21-bit number for a character or modifier, such as U+0061 for LATIN SMALL LETTER A ("a"), or U+1F425 for FRONT-FACING BABY CHICK ("🐥").”

//Extended Grapheme Clusters
let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // e followed by
// eAcute is é, combinedEAcute is é”
print(eAcute,combinedEAcute)

//“Counting Characters
//To retrieve a count of the Character values in a string, use the count property of the string:”
let sn = "🥲💔"
print(sn.count) //To get the length of a String in Swift, use count property of the string.

//String Indexing
let name = "Bhasker Rai"
print(name[name.startIndex])
//print(name[name.endIndex]) //this gives error because it is trying print sth out of the range of the string.
 
//to access the last index we use write:
print(name[name.index(before: name.endIndex)])

print(name[name.index(after: name.startIndex)])
//print(name[3]) //“Swift strings can’t be indexed by integer values.”

var idx = name.index(name.startIndex, offsetBy: 5) //gives 5th char after the startIndex
print(name[idx])

//name.index(after: greeting.endIndex) // Error because out of the range of the string

//“Use the indices property to access all of the indices of individual characters in a string.”

for i in name{         //noraml way
    print(i, terminator: "")
}

print("\nOR")

//for i in name.indices{      //using indices property
//    print(name[i], terminator: "")
//}

//“NOTE
//You can use the startIndex and endIndex properties and the index(before:), index(after:), and index(_:offsetBy:) methods on any type that conforms to the Collection protocol. This includes String, as shown here, as well as collection types such as Array, Dictionary, and Set.”

//“Inserting and Removing
//To insert a single character into a string at a specified index, use the insert(_:at:) method, and to insert the contents of another string at a specified index, use the insert(contentsOf:at:) method.

var str = "It's going well"
str.insert("!", at: str.endIndex) //to inset character into a string.
print(str)

var abe = "It's going well"
abe.insert(contentsOf: " over here.", at: abe.endIndex) //to inset content into a string.
print(abe)

//“To remove a single character from a string at a specified index, use the remove(at:) method, and to remove a substring at a specified range, use the removeSubrange(_:) method:”

abe.remove(at: abe.index(before: abe.endIndex)) //this will remove the full-stop.
print(abe)

let range = abe.index(abe.endIndex, offsetBy: -9)..<abe.endIndex

abe.removeSubrange(range)
print(abe)

//“Substrings
//When you get a substring from a string—for example, using a subscript or a method like prefix(_:)—the result is an instance of Substring, not another string. Substrings in Swift have most of the same methods as strings, which means you can work with substrings the same way you work with strings. However, unlike strings, you use substrings for only a short amount of time while performing actions on a string. When you’re ready to store the result for a longer time, you convert the substring to an instance of String. For example:”

//let greeting = "Hello, world!"
//let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
//let beginning = greeting[..<index]
//// beginning is "Hello"
//
//// Convert the result to a String for long-term storage.
//let newString = String(beginning)

var h = "look! There is a...!"
let i = h.firstIndex(of: "!") ?? h.endIndex
//print(i)
let nh = h[..<i]

// Convert the result to a String for long-term storage.
let nStr = String(nh)
print(nStr)

//Comparing Strings
//Swift provides three ways to compare textual values: string and character equality, prefix equality, and suffix equality.

//String and Character Equality
//String and character equality is checked with the “equal to” operator (==) and the “not equal to” operator (!=), as described in Comparison Operators:”

a = "Fucked up!"
b = "Fucked up!"

if (a == b){
    print("equal")
}

//“Prefix and Suffix Equality
//To check whether a string has a particular string prefix or suffix, call the string’s hasPrefix(_:) and hasSuffix(_:) methods, both of which take a single argument of type String and return a Boolean value.”

let fooditems = ["Chicken Biryani","Mutton Biryani","Mutton Karhahi","Chicken Karhahi","Daal Mash","Chicken Handi"]

var chickenItem = 0
var muttonItem = 0
var karhahiItem = 0



for item in fooditems{
    if item.hasPrefix("Chicken"){
        chickenItem += 1
}
    if item.hasPrefix("Mutton"){
        muttonItem += 1
}
    if item.hasSuffix("Karhahi"){
        karhahiItem += 1
}
}

print("There are total \(chickenItem) items of Chicken.\nThere are total \(muttonItem) items of Mutton.\nThere are total \(karhahiItem) types of Karhahi.")



//“Unicode Representations of Strings
//When a Unicode string is written to a text file or some other storage, the Unicode scalars in that string are encoded in one of several Unicode-defined encoding forms. Each form encodes the string in small chunks known as code units. These include the UTF-8 encoding form (which encodes a string as 8-bit code units), the UTF-16 encoding form (which encodes a string as 16-bit code units), and the UTF-32 encoding form (which encodes a string as 32-bit code units).

//Swift provides several different ways to access Unicode representations of strings. You can iterate over the string with a for-in statement, to access its individual Character values as Unicode extended grapheme clusters. This process is described in Working with Characters.

//Alternatively, access a String value in one of three other Unicode-compliant representations:

//A collection of UTF-8 code units (accessed with the string’s utf8 property)

//A collection of UTF-16 code units (accessed with the string’s utf16 property)

//A collection of 21-bit Unicode scalar values, equivalent to the string’s UTF-32 encoding form (accessed with the string’s unicodeScalars property)”

//UTF-8 Representation
let dogString = "Dog‼🐶"
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
//“In the example above, the first three decimal codeUnit values (68, 111, 103) represent the characters D, o, and g, whose UTF-8 representation is the same as their ASCII representation. The next three decimal codeUnit values (226, 128, 188) are a three-byte UTF-8 representation of the DOUBLE EXCLAMATION MARK character. The last four codeUnit values (240, 159, 144, 182) are a four-byte UTF-8 representation of the DOG FACE character.

print("\n")

//UTF-16 Representation
let heartbroken = "💔🥲heartbroken"
for codeUnit in heartbroken.utf16 {
    print("\(codeUnit) ", terminator: "")
}

print("\n")
//Unicode Scalar Representation
for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
