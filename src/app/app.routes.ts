import { Routes } from '@angular/router';
import { LoginComponent } from './pages/login/login.component';
import { RegistroComponent } from './pages/registro/registro.component';
import { HomeComponent } from './pages/home/home.component';
import { RegistroAsistenciaComponent } from './pages/registro-asistencia/registro-asistencia.component';
import { VerificarAprendizComponent } from './pages/verificar-aprendiz/verificar-aprendiz.component';
import { ReporteDiarioComponent } from './pages/reporte-diario/reporte-diario.component';
import { ReportesComponent } from './pages/reportes/reportes.component';


export const routes: Routes = [
  {
    path: 'home', title: 'Home', component: HomeComponent,
  },
  {
    path: 'login', title: 'Login', component: LoginComponent,
  },
  {
    path: 'registro', title: 'Registro', component: RegistroComponent,
  },
  {
    path: 'registroAsistencia', title: "Regitro Asistencia", component: RegistroAsistenciaComponent,
  },
  {
    path: 'verificarAprendiz', title: 'Verificar Aprendiz', component: VerificarAprendizComponent,
  },
  {
    path: 'reporte', title: 'Reporte', component: ReportesComponent,
  },
  {
    path: 'reporteDiario', title: 'Reporte Diario', component: ReporteDiarioComponent,
  },
  {
    path: '', redirectTo: 'registroAsistencia', pathMatch: 'full'
  }
];
