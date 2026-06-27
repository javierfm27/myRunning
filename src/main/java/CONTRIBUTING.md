# Contribuir a myRunning

¡Primero que nada, gracias por tomarte el tiempo de contribuir! 🎉

Este proyecto es de código abierto y agradecemos enormemente cualquier tipo de ayuda, desde corregir errores de ortografía hasta implementar nuevas funcionalidades.

Nace de la necesidad de mejorar tiempos de entrenamiento, donde empece a usar ChatGPT como agente donde me iba definiendo los entrenamientos a seguir para tener tiempos mejores, así como tener aguante para mas KMs :running:

### Código de conducta

Al participar en este proyecto, te comprometes a seguir nuestro [Código de Conducta](CODE_OF_CONDUCT.md) para mantener un entorno amigable y respetuoso.


## ¿Cómo puedo contribuir?

### 1. Reportar erorres (bugs)

Si encuentras un error por favor abre un **Issue** en Github incluyendo:

* Un título claro y descriptivo.
* Pasos detallados para reproducir el error.
* Comportamiento esperado vs. comportamiento observado
* Capturas de pantalla o fragmentos de código si es necesario

### 2. Sugerir funcionalidades
Si tienes una idea para mejorar el proyecto:
* Revisa primero los **Issues** abiertos para comprobar que nadie lo haya sugerido antes
* Crear un nuevo **Issue** detallando el propósito y el beneficio de la funcionalidad propuesta.

### 3. Contribuir con Código (Pull Requests)
Para enviar tus cambios, sigue este flujo de trabajo estándar:

1. Haz un **fork** de este repositorio en tu cuenta de Github.
2. Clona tu fork localmente:
```bash
git clone https://github.com/javierfm27/myRunning.git
```
3.  Crea una nueva rama (*branch*) descriptiva para trabajar:
   ```bash
   git checkout -b feature/nueva-funcionalidad
   ```
   *(Usa `fix/nombre-error` si es una correción)*
4. Realiza modificaciones y asegúrate de que el código nuestros estándares
5. Haz *commit* de tus cambios con un mensaje claro y siguiendo la convención de [SemVer](https://www.conventionalcommits.org/en/v1.0.0/)
   ```bash
   git commit -m "feat: añade la nueva funcionalidad de autenticación"
   ``` 
6. Sube tus cambios a tu repositorio remoto:
```bash
git push origin feature/nueva-funcionalidad
```
7. Abre una **Pull Request** hacia la rama principal (`main` o `master`) del repositorio original

## Estilo de Código y Pruebas

Para garantizar la calidad del software, tu código debe cumplir lo siguiente:
* Cumplir con las guías de estilo oficiales de {Lenguaje de programación, ej: PEP 8 para Python}.
* Ejecutar las pruebas locales antes de enviar el Pull Request:
   ```bash
   {comando de pruebas, ej: npm test o pytest}
   ```
* Asegurarte de que todas las pruebas existentes pasen con éxito.

## ¿Necesitas ayuda?

Si tienes dudas sobre el proceso o el código, puedes contactar a los mantenedores abriendo un *Issue* con la etiqueta `pregunta` o escribiendo a `{correo electrónico o canal de comunicación}`.
