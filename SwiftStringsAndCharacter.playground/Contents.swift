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
