![jaya company logo](https://media-exp1.licdn.com/dms/image/C4E0BAQFrbiHicAxtPQ/company-logo_200_200/0?e=2159024400&v=beta&t=BQz9RsRUILUmnZ4JM6poK5XCxSAvVuefloBcLVolmR0)

# Tech Challenge

## What You'll Make

### Our Goal
The goal of this challenge is to review some of the concepts learnt in the previous modules. Especially relating to the creation of multi-screen apps through the use of segues.

### What you will create
By the end of the module, you will have made beautiful bill splitting, tip calculating app. No one can work out $145.56 split between 5 people with a 20 percent tip. With your very own Tipsy app in hand, you’ll never need to do maths ever again!

![goal app](./images/goal.gif)

## Step 1: Clone the Starting Project

Clone this project using Xcode.

First, take a look around the starting project. Notice that in our Main.storyboard there are two screens. One for the calculator and one for the result.

Next, notice that in the calculator screen, we have two new components a UITextField and a UIStepper.

![goal app](./images/one.png)
![goal app](./images/two.png)

These were simply dragged into place from the Object Library like all of our other UI components.

## Step 2: Create IBActions and IBOutlets for the Calculator Screen

* Using the graphic below, create the indicated IBOutlets according to the prescribed names.
![goal app](./images/three.png)

* Using the graphic below, create the indicated IBActions according to the prescribed names.
![goal app](./images/four.png)

> NOTE: all three tip buttons should link to the same IBAction called tipChanged.

* Delete the entire viewDidLoad() method in ViewController.swift
By the end you should end up with a ViewController.swift file that looks like this:

![goal app](./images/five.png)

* Right click on the ViewController class name, select Refactor → Rename and change it to say CalculatorViewController instead.

## Deliverables

* [required] Please submit your solution in a PR form from your own fork and branch
* [required] As extra deriverable please submit a video link (or gif image) within your readme of the working app.
* [optional] You are free to improve the UI with any you consider a better practice or tool.
* [optional] You are free to change the layout with an autolayout approach.

> Compiled and structured by BlisS, creation attribution to angelabauer