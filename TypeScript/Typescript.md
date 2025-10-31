# TypeScript Notes 📝
## ✅ TypeScript is JavaScript with syntax for types

*TypeScript = JavaScript + Types*
- Developed and maintained by **Microsoft**.
- It's a **superset of JavaScript**, meaning it **builds on JavaScript by adding additional features**, most notably **static typing**.

#### 🌟 TypeScript adds Strict and Static typing
which essentially means 
- You *can't use all value types in all places*.
- You can also *define which value type you expect in certain places*.

**➡️ Static Type Checking**: You can define variable types (e.g., string, number, boolean), which helps catch errors during development rather than at runtime.  
```
let name: string = "Alice";
name = 42; // Error: Type 'number' is not assignable to type 'string'
```
**👨‍💻 Why Use TypeScript?**
* Helps prevent bugs before running the code.
* Makes large codebases easier to manage.
* Improves code readability and documentation.

> **You can write TypeScript code in your projects, but you can't run it like this in the browser.**
* it's different if you're building for the backend, for Node.js because there are tools and runtimes that do allow you to run TypeScript code without any extra build step.

#### 👉 To make the code work in the browser you need to compile it. You need to convert the TypeScript(.ts) code from TypeScript code to pure JavaScript code.

#### 🔴 TypeScript compiler 
A tool that will convert the TypeScript code to JavaScript code. (Official Website → Download)

#### NPM Syntax: `run npm install -g typescript`

#### 🔵 TS to JS Conversion Process
With the `Node.js, NPM & Compiler` installed → go to your project where you're using TS → Open System Terminal → Navigate into your project folder via `cd` command. → `tsc filename.ts`

* This process will invoke the TypeScript compiler, and it will go ahead and produce a `filename.js` file in this case.

### ✅ Core TypeScript
#### Explicit Type Assignment/ Type Annotation
You can be clear that in certain places of your code you want a certain type of value.

The feature where you have a colon and then thereafter the name of the type, that's called a **type assignment** or a **type annotation**.

![alt text](<Screenshot 2025-06-27 115328.png>)

We have a problem here 👉 **We did not set any explicit type for this variable.** (3 dots under the `u`)

*While using TypeScript if you have an uninitialized variable, as it's the case here, you typically do want to set a type.*
```
let username: string;
username = "Pratik";
```
Add a colon after the variable name and then after the colon, the name of the type of value that should be storable.

✅ Vanilla JavaScript also has the concept of value types. It just does not have the concept of explicit type assignments as we have them here.

👨‍💻 If we have an initial value and TypeScript will then take a look at that initial value and use the type of this value as a type for this variable. This is called **Type Inference.**

Now if I write a code like this:
```
let userAge = 38;
console.log(userAge)
```
Code won't show any dots under `u` as TypeScript is able to infer the type of value that should be stored in that variable from the initial value that was assigned to it.

* It was not able to infer a type for userName, because if you just have the variable userName like this `let username` how would TypeScript know from this single line which type of value should be stored in there?
* If we try to put a string value later to `userAge` it'll show an error regarding type assignnment.

✅ If you have a function and that expects to get to numbers, you can set the types of parameters you expect to get for this function right after the parameter names, by using colon, and then followed by the type name.
```
function add(a: number, b: number){
    return a + b;
}
```
you can also make use of type inference here.
```
function add(a : number, b = 5){
    return a + b;
}

add(10);
```
This is not a TS specific feature, it's JS specific feature.

* `add(10)` as the value of `b` is already initialized. 
* `add(10+8)` will overwrite the value of b.

#### 🌟 The 'Any' Type
In TypeScript, the `any` type is a special type that turns off type checking for a variable. It tells the compiler, "Trust me, I know what I'm doing." 😅
```
let something: any = "Hello";
something = 42;        // OK
something = true;      // Also OK
something = [1, 2, 3]; // Still OK
```
When you use `any`, TypeScript allows any operation on that variable. It's like opting out of TypeScript's safety system.

✅ So the `any` type gives you flexibility, but it also basically gets rid of the main advantage TypeScript has to offer as you can work with any type now.

#### 🌟 Better Alternative: Union Type
![alt text](image.png)

Add pipe symbol and accept kind of types if you wanted to.
* This union type in the end tells TypeScript that `age` will store a value that's either a string or a number.

![alt text](<Screenshot 2025-06-27 123829.png>)

As you see, I'm getting errors when trying to assign an object or an array as it's been not type anotated.

➡️ Now, If I select an array of Strings, TS is powerful enough to infer that the type of hobbies is an array, but it's an array of strings represented in TypeScript like this - `string[]`

![alt text](<Screenshot 2025-06-27 125241.png>) 

it does not allow us to push a number into this array. `hobbies.push(10)` will show an error.
```
let hobbies: (strings | numbers)[] 
```
This variable will store a value of type array, and that array internally will hold values that are either a string or a number.

**Alternative Array Type Declaration :** 
```
let users: Array <string | number>
```
* This is a so called **generic type**
* Such a generic type is really just a combination of multiple types, which is exactly what an array type is too.

#### 🌟 Tuple Type
Let's say you have a variable - `possibleResults` and you know that this variable should eventually store an array that accepts exactly two values with clearly defined types.

Now, If I want to declare an array of fixed length inside the array then I can move forward with this approach - 
```
let possibleResults = [number,number]
possibleResults = [-1, 3]
```
Through this you're telling TypeScript that possible results is a tuple, which is an array of a fixed length with clearly defined types.

You're telling TypeScript that `possibleResults` will be in array with exactly two values, where the first value will be of type `number`, and the second value will be of type `number`.

* You could also have a mixture of types here and say that the first value must be a `number`, the second one must be a `string`.
```
let possibleResults = [number,string]
possibleResults = [-1, Kolkata]
```
#### ➡️ Object Type Definition
Defining the type of the object properties.
```
let user : {
    name : string
    age : number
} = {
    name : "Max",
    age : 38
}

Now, If I want a union type
```
let user: {
    name : string
    age:  number | string
    hobbies: string | boolean | string[]
} = {
    name : "Max",
    age : "25",
    hobbies: ["Sing", "Dance", "Guitar"]
}

🔵 Not Null/Undefined Object Value
```
let user : {} = 'Some Text';
let name = {};
```
* this `{}` actually just means any value that's not undefined or null when used as a type in TypeScript.
* So if I were to store null as a value here like this `let user : {} = null` I would get an error.
