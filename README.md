# Docker CRA (example)

Simple example of a [create-react-app](https://create-react-app.dev/) project being served using the [docker-cra](https://github.com/danielemery/docker-cra) tool.

## Process

The following steps were taken to get the project to this state.

1. Bootstrap application using create-react-app

   ```sh
   npx create-react-app --template typescript --use-npm docker-cra-example
   ```

2. `docker-cra` and `joi` packages installed
   ```sh
   npm i -S joi
   npm i -D docker-cra
   ```
3. Joi schema created to validate custom environment variables (`env.schema.js`)
4. Environment variable file created for local dev (`.env`)
5. `.gitignore` file updated to exlude generated window environment variable (`public/window.env.js`)
6. Index file updated to include `window.env.js` include script in the head
   ```html
   <script src="%PUBLIC_URL%/window.env.js"></script>
   ```
7. `init-local` script added to npm scripts in `package.json` and called before start.
