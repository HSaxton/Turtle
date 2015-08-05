from random import randint
import turtle

turtle.colormode(255)  # by default, turtle graphics represents colors in range 0.0...1.0

def exploreColors():
  ''' A method that shows 4 colors '''
  turtle.fillcolor(0, 255, 0)
  turtle.begin_fill()
  turtle.circle(50)
  turtle.end_fill()

  turtle.penup()
  turtle.forward(100)
  turtle.pendown()
  turtle.fillcolor(100, 0, 70)
  turtle.begin_fill()
  turtle.circle(50)
  turtle.end_fill()


  turtle.penup()
  turtle.right(90)
  turtle.forward(100)
  turtle.left(90)
  turtle.pendown()
  turtle.fillcolor(255, 255, 255)
  turtle.begin_fill()
  turtle.circle(50)
  turtle.end_fill()

  turtle.penup()
  turtle.backward(100)
  turtle.pendown()
  turtle.fillcolor(150, 150, 150)
  turtle.begin_fill()
  turtle.circle(50)
  turtle.end_fill()
  
#end of exploreColors()

def guessMyColor():
  ''' A color guessing game.  The computer chooses a random color,
    shows it to the user, and the user has to guess it'''
  width = 200
  height = 200
  hiddenRed = randint(0, 255)
  hiddenGreen = randint(0, 255)
  hiddenBlue = randint(0, 255)
  
  turtle.fillcolor(hiddenRed, hiddenGreen, hiddenBlue)
  turtle.begin_fill()
  turtle.circle(100)
  turtle.end_fill()

  guessRed = input("Guess the red value: ")
  while guessRed < 0 or guessRed > 255:
      guessRed = input("Try again please! (Input a value from 0 to 255)")
  guessGreen = input("Guess the green value: ")
  while guessGreen < 0 or guessGreen > 255:
      guessGreen = input("Try again please! (Input a value from 0 to 255)")
  guessBlue = input("Guess the blue value: ")
  while guessBlue < 0 or guessBlue > 255:
      guessBlue = input("Try again please! (Input a value from 0 to 255)")

  if (hiddenRed - 500 <= guessRed <= hiddenRed + 500) and (hiddenBlue - 500 <= guessBlue <= hiddenBlue + 500) and (hiddenGreen - 500 <= guessGreen <= hiddenGreen + 500):  # You will replace the "False" here
    print "You got it...Or you were close, at least. Have a reward, drag the turtle around and click to change colors!"
    turtle.ondrag(turtle.goto)
    turtle.onclick(turtle.fillcolor(randint(0, 255),randint(0, 255),randint(0, 255)))
  else:
    print "Not even close :-("
    print "My color was ("+str(hiddenRed)+","+str(hiddenGreen)+","+str(hiddenBlue)+")"
    print "Here's your disaster."

  
  turtle.penup()
  turtle.forward(200)
  turtle.pendown()
  turtle.fillcolor(guessRed, guessGreen, guessBlue)
  turtle.begin_fill()
  turtle.circle(100)
  turtle.end_fill()
  #turtle.exitonclick()
  

    # End of guessMyColor()


    
def dbl(x):
    """ dbls x? """
    return 2*x

def dblPR(x):
    """ dbls x? """
    print 2*x

def choice(x):
    if x > 10:
       print "A"
    if x > 5:
       print "B"
       print "Hello"
    if x > 0:
       print "C"

def choiceIfElse(x):
    if x > 10:
       print "A"
    elif x > 5:
       print "B"
    else:
       print "C"

def choiceReturn(x):
    if x > 10:
       return "A"
    if x > 5:
       return "B"
    if x > 0:
       return "C"

def recFun(num):
    print num
    num = num - 1
    if num > 0:
        recFun(num)
        print num

def recFun2(num):
    if num != 0:
        recFun2(num - 2)
        print num


