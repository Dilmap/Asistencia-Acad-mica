import { FichaService } from './../../shared/Ficha_crud/ficha.service';
import { CommonModule } from '@angular/common';
import { ActualizarInstructorComponent } from '../actualizar-instructor/actualizar-instructor.component';
import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Observable } from 'rxjs';
import { CompetenciaService } from '../../shared/competencia_crud/competencia.service';
import { GuardarAsistenciaComponent } from '../guardar-asistencia/guardar-asistencia.component';
import { CompetenciaModel } from '../../shared/competencia_crud/competencias.model';
import { FichaModel } from '../../shared/Ficha_crud/ficha.model';


@Component({
  selector: 'app-registro-asistencia',
  standalone: true,
  imports: [CommonModule,ActualizarInstructorComponent, FormsModule, GuardarAsistenciaComponent],
  templateUrl: './registro-asistencia.component.html',
  styleUrl: './registro-asistencia.component.css'
})

export class RegistroAsistenciaComponent implements OnInit{

  isDivVisible: boolean = false;

  competencias: Observable<CompetenciaModel[]> | undefined;
  fichaProgramas: Observable<FichaModel[]> | undefined;

  constructor(
    private competenciaService: CompetenciaService,
    private fichaService: FichaService,
  ){}

  ngOnInit(){
    this.competencias = this.competenciaService.obtenerCompetencias();
    this.fichaProgramas = this.fichaService.obtenerFichaPrograma()
  }

  toggleDiv() {
   this.isDivVisible = !this.isDivVisible;
  }

}
