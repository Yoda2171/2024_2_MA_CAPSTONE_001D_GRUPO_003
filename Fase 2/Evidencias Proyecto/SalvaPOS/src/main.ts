import { bootstrapApplication } from '@angular/platform-browser';
import { AppComponent } from './app/app.component';
import { provideRouter } from '@angular/router';
import { routes } from './app/app.routes'; // Asegúrate de definir las rutas

bootstrapApplication(AppComponent, {
  providers: [
    provideRouter(routes), // Proveer las rutas
  ]
}).catch(err => console.error(err));
