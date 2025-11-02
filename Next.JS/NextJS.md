# 📝 Next JS 
Next.js is an extension of **React** that incorporates pre-built solutions, ready to use features, additional functionalities.
### Guillermo Rauch is known for creating Next.js and Socket.io.

### 🖼️ Framework
A Framework is a structured tool with predefined rules and conventions that dictates an application's architecture, design patterns, and workflows. 

Its main benefit is providing pre-built solutions for common tasks (e.g., Database integration, Managing routing, Authentication), allowing developers to focus on application logic.

### NextJS provides built-in features like 
1. Server-Side Rendering (SSR) and Static Site Generation (SSG)
2. Improved SEO
3. Automatic Code Splitting
4. Image & Font Optimization
5. Hot Module Replacement
6. API Routes (Backend)
7. Built in support for SAAS
8. CSS Modules
9. Data Fetching Choice
10. Error Handling
11. Metadata API (For SEO)
12. Internationalization (support for any spoken language)

React JS renders everything on the Client Side sending a minimal HTML from the server. Server sends a minimal HTML & huge JS file to the Client side & then the browser executes them to generate a HTML file. This creates a huge challenge to the search engine crawlers to access & understand the complete content of the page.

On the other hand NextJS Provdides Static Site Generation or Server Side Rendering. Server sends a complete HTML & minimal JS code to the Client side to render only the content required in the client side interaction. This way the search engine crawlers to access & understand the complete content of the page easily.

| Feature |	React (Client-Side Rendering) | Next.js (Server-Side Rendering)|
|---|---|---|
Initial Payload |	Minimal HTML + Huge JS Bundle |Complete HTML + Minimal JS Bundle|
Who Renders?|	The User's Browser (Client)	|The Next.js Server|
SEO	|Poor. Crawler sees an empty page.	|Excellent. Crawler sees a full page.|
Initial Load Time	|Slow. User sees a blank screen.	|Fast. User sees content immediately.|
The "Gotcha"	|Once loaded, "in-app" navigation is fast.	|Page becomes interactive after "Hydration."|