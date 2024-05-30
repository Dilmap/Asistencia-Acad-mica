import { HttpClientModule } from '@angular/common/http';
import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { LoginComponent } from './pages/login/login.component';
import { RegistroComponent } from './pages/registro/registro.component';
import { HomeComponent } from './pages/home/home.component';
import { RegistroAsistenciaComponent } from './pages/registro-asistencia/registro-asistencia.component';
import { VerificarAprendizComponent } from './pages/verificar-aprendiz/verificar-aprendiz.component';
import { ReporteDiarioComponent } from './pages/reporte-diario/reporte-diario.component';
import { ReportesComponent } from './pages/reportes/reportes.component';
import { QrcodeComponent } from './pages/qrcode/qrcode.component';
import { GuardarAsistenciaComponent } from './pages/guardar-asistencia/guardar-asistencia.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, HttpClientModule,RegistroAsistenciaComponent,RegistroComponent,HomeComponent,
    LoginComponent,VerificarAprendizComponent,ReporteDiarioComponent,ReportesComponent
  ],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
}
