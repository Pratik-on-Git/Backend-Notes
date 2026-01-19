# Node JS
### Node.js is a Cross Platform, Open Source JavaScript Runtime Environment that allows you to run JavaScript outside the browser, typically on the server side.
**📌 In Simple Terms**:

Normally, **JavaScript runs in browsers** (like Chrome or Firefox) for things like animations, forms, and interactivity.

But **Node.js** lets you run JavaScript on your computer/server, so you can build backend applications like:
- Servers
- APIs
- Command Line Tools
- Real-time apps (like chat apps)
- File systems or databases interaction

#### ➡️ Node.js is a JavaScript Runtime Environment.
- Runs JavaScript code outside the browser.
- Built on Chrome's V8 Engine. (Made with C++)

### 🏗️ **Who Created Node.js and Why?**
- **Created by**: Ryan Dahl  
- **Released in**: 2009 (initial work started in 2007)
- **Reason**:
  - Traditional servers like **Apache** handled concurrent requests inefficiently.
  - Node.js was designed for **non-blocking**, event-driven, real-time applications.

### 👾 Features
1. Open Source
2. We'll be able to access file system, timer, can see processes & runtime variables.
3. It brings raw JS features in our terminal so that we can actually interact with OS based features.

### 🏃‍♀️‍➡️ Runtime Environment
A *Runtime Environment* is software that *supplies the additional ecosystem and services* a programming language needs - beyond what it inherently provides - to execute programs and extend the language’s functionality.

JS is a programming language & the Runtime Environment provides extra capabilities to JavaScript like:
- DOM (Document Object Model)
- BOM (Browser Object Model)
- Event Loop
- setTimeout, setInterval (access timers) etc.
- networking capabilities

> A *Runtime Environment* provides everything needed to execute code written in a programming language.
> * It gives the engine + system libraries + environment to make your code actually run.

Simple Runtime Environment Example = JavaScript + Browser (Provides APIs like timers, reading & modifying HTML elements, etc.)

### *Ryan Dahl created Node.js* & chose *V8 Engine from Chrome* to power Node.js. 
Through this new runtime environment, he was able to access OS features like *read/write files from file system, access processes running on the system, access runtime variables, access timers, both side networking etc.*

He also added a new feature called **Event Loop** which allowed Node.js to handle multiple requests at the same time.

> *Event Loop* is a core concept in Node.js that handles the **execution of asynchronous operations**. It allows Node.js to perform non-blocking operations, such as file I/O, network requests, and timers, without blocking the main thread.