import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { LoginComponent } from './pages/login/login.component';
import { RegistroComponent } from './pages/registro/registro.component';
import { HomeComponent } from './pages/home/home.component';
import { UsuarioInstructorComponent } from './pages/usuario-instructor/usuario-instructor.component';
import { RegistroAsistenciaComponent } from './pages/registro-asistencia/registro-asistencia.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, LoginComponent, RegistroComponent,HomeComponent,RegistroAsistenciaComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'asistenciaAcademica';
}
