# Docker CRA (example)

Simple example of a [create-react-app](https://create-react-app.dev/) project being served using the [docker-cra](https://github.com/danielemery/docker-cra) tool.

## Process

The following steps were taken to get the project to this state.

1. Bootstrap application using create-react-app

   ```sh
   npx create-react-app --template typescript --use-npm docker-cra-example
   ```

2. Joi package installed
   ```
   npm i -S joi
   ```
3. Joi schema created to validate custom environment variables (`env.schema.js`)
4. Environment variable file created for local dev (`.env`)
5. `.gitignore` file updated to exlude generated window environment variable (`public/window.env.js`)
