import { Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';

export const routes: Routes = [
  { path: '', component: HomeComponent },  // Ruta predeterminada para Home
  { path: '**', redirectTo: '' },  // Redirige cualquier ruta desconocida a la página de inicio
];
