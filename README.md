# DEVSU Monorepo

Este monorepositorio contiene los proyectos de pruebas automatizadas para API y E2E.

## Estructura del Proyecto

- `API/`: Proyecto de pruebas de API utilizando Karate (Maven/Java).
- `E2E/`: Proyecto de pruebas de interfaz de usuario utilizando Cypress (Node.js/TypeScript).

## Comandos Principales

Desde la raíz del proyecto, puedes ejecutar los siguientes comandos:

### API (Karate)
- Ejecutar pruebas: `npm run api:test` (requiere Maven instalado)
- Ver reporte de pruebas: `npm run api:report`

### E2E (Cypress)
- Instalar dependencias: `npm run e2e:install`
- Ejecutar pruebas (headless): `npm run e2e:test`
- Abrir Cypress Runner: `npm run e2e:open`
- Abrir reporte de pruebas: `npm run e2e:report`
---

Configurado con **npm workspaces**.
